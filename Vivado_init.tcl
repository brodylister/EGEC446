# Place this code into %APPDATA%\Roaming\Xilinx\Vivado\Vivado_init.tcl
# Use commands 'nv <filename>' and 'ntb <tbfilename>'

# ---- Edit these once ----
array set ::hdr {
    institution "California State University Fullerton"
    course      "EGEC 446 - Digital Design In Verilog"
    author      "Brody Lister"
    student_id  "884483777"
}

# Header comment in Vivado's own template layout, plus student fields
proc hdr {name} {
    global hdr
    set bar [string repeat "/" 80]
    set date [clock format [clock seconds] -format %Y-%m-%d]
    return [join [list $bar \
        "// Institution:   $hdr(institution)" \
        "// Course:        $hdr(course)" \
        "// Student:      $hdr(author) ($hdr(student_id))" \
        "//" \
        "// Create Date:   $date" \
        "// Design Name:   $name" \
        "// Module Name:   $name" \
        "// Project Name:  [current_project]" \
        "// Target Device: [get_property PART [current_project]]" \
        "// Tool Version:  [version -short]" \
        "//" \
        "// Description:" \
        "//" \
        "// Dependencies:  None" \
        "//" \
        "// Revision History:" \
        "//   $date - $hdr(author) - File created" \
        "//" \
        "// Additional Comments:" \
        "//" \
        $bar] "\n"]
}

# nv <name>  -> new Verilog design file with empty module, added + opened
proc nv {name {ext v}} {
    set dir "[get_property DIRECTORY [current_project]]/[current_project].srcs/sources_1/new"
    file mkdir $dir
    set fn [file normalize "$dir/$name.$ext"]
    set fh [open $fn w]
    puts $fh "[hdr $name]\n\n`timescale 1ns / 1ps\n\nmodule ${name}(\n\n    );\n\n\nendmodule"
    close $fh
    add_files -fileset sources_1 $fn
    update_compile_order -fileset sources_1
    edit_file $fn
}

# ntb <name> -> new testbench in sim_1, added + opened
proc ntb {name} {
    set dir "[get_property DIRECTORY [current_project]]/[current_project].srcs/sim_1/new"
    file mkdir $dir
    set fn [file normalize "$dir/$name.v"]
    set fh [open $fn w]
    puts $fh "[hdr $name]\n\n`timescale 1ns / 1ps\n\nmodule ${name}();\n\n\nendmodule"
    close $fh
    add_files -fileset sim_1 $fn
    update_compile_order -fileset sim_1
    edit_file $fn
}