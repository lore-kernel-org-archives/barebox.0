Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from wp303.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8548::])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d0Qcr-00033r-1y
 for barebox@lists.infradead.org; Tue, 18 Apr 2017 10:44:54 +0000
Date: Tue, 18 Apr 2017 12:44:25 +0200 (CEST)
From: Norbert Wiedmann <info@n-wiedmann.de>
Message-ID: <1747956955.421031.1492512265349.JavaMail.open-xchange@app09.ox.hosteurope.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: Norbert Wiedmann <info@n-wiedmann.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Bootchooser with State Framework and dtb has permanently rebooting
To: barebox@lists.infradead.org

Hello All,

in my system, based an a phyFlex i.mx6-Board, I am using the barebox bootchooser
with the state framework as backend. The state framework uses dtb as storage
backend.
I have two productive systems which are update alternating, and a factory system
for
rescue.

I have access to the state variables via dt-utils from the installed linux
systems
(with a small modification of libdt.c, regarding the phandle to the
mtd-partition)

Basically, everything works fine for me, but, after updating to barebox 2017.04
and dt-utils-2017.03, I have a permanently rebooting when using bootchooser.

With version 2016.12, I have an issue, where I am not sure weather I am using
the features correct.
Mh.., maybe I have a bug in the state declaration, which was tolerated so far,
but I didn't find
the reason.

My problems are:
 - with barebox 2017.04
   -- permanently rebooting when starting a target by bootchooser
 - with barebox 2016.12:
   -- The bootchooser documentation explains that a
bootchooser.<targetname>.boot-variable
      is need and must contain something the 'boot'-command understands.
      But when I am set the content of the 'boot'-variables to 'system1',
'system2' and 'factory',
      the mechanism fails and nothing will be booted.
      If I remove the boot-variables, the booting hangs.
      But, if the variables default is set emtpy (""), the booting works fine.
(...but I have a bad
      feeling, because it is not documentation-conform)
      For me, it looks like the boot target selection works without any string
in boot, but its name
      seems to beeing taken from the variable set's name. ('system1' is the
variable set name, boot
      variable is empty, system1 is the name of the file in /env/boot/)
   -- with barebox 2016.12: after installing a fresh system, the very first
writing to the backend
      (with the barebox state -s command), the systems hangs (but writing was
done, I checked this by
      changing a variable's value before calling state -s, the new value was
stored in dtb)

My state declaration looks like this:

        state: stProjektName {
        magic = <0x27031977>;
        compatible = "barebox,state";
        backend-type = "dtb";
        backend = < &statepart >;
        backend-storage-type = "circular";

        bootchooser {
            system1 {
                #address-cells = <1>;
                #size-cells = <1>;
                boot{
                    reg = <0x0 0x20>;
                    type = "string";
                    default = "";
                    /* setting 'default = "system1";'  will not work ! */
                };
                default_attempts {
                    reg = <0x20 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                default_priority {
                    reg = <0x24 0x4>;
                    type = "uint32";
                    default = <0x16>;
                };
                remaining_attempts {
                    reg = <0x28 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                priority {
                    reg = <0x2c 0x4>;
                    type = "uint32";
                    default = <0x16>;
                };
            };

            system2 {
                #address-cells = <1>;
                #size-cells = <1>;

                boot{
                    reg = <0x40 0x20>;
                    type = "string";
                    default = "";
                };
                default_attempts {
                    reg = <0x60 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                default_priority {
                    reg = <0x64 0x4>;
                    type = "uint32";
                    default = <0x15>;
                };
                remaining_attempts {
                    reg = <0x68 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                priority {
                    reg = <0x6c 0x4>;
                    type = "uint32";
                    default = <0x15>;
                };
            };

            factory {
                #address-cells = <1>;
                #size-cells = <1>;

                boot{
                    reg = <0x80 0x20>;
                    type = "string";
                    default = "";
                };
                default_attempts {
                    reg = <0xa0 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                default_priority {
                    reg = <0xa4 0x4>;
                    type = "uint32";
                    default = <0x0A>;
                };
                remaining_attempts {
                    reg = <0xa8 0x4>;
                    type = "uint32";
                    default = <0xffffffff>;
                };
                priority {
                    reg = <0xac 0x4>;
                    type = "uint32";
                    default = <0x0A>;
                };
            };

            last_chosen{
                reg = <0xc0 0x4>;
                type = "uint32";
                default = <0x01>;
            };
        };
    };
    
    .....
    /* these are my relevant mtd-partitions */
    
    partition@0 {
        label = "barebox";
        reg = <0x0 0x400000>;
    };

    partition@400000 {
        label = "barebox-environment";
        reg = <0x400000 0x0A0000>;
    };
 
    statepart: partition@4a0000 {
        label = "barebox-states";
        reg = <0x4A0000 0x060000>;
    };    
    ...
    
    
This is the error output while rebooting when bootchooser is active:
-------------------------------
booting 'bootchooser'
unable to handle paging request at address 0xe1a0000f
pc : [<4fc07538>]    lr : [<e12fff1e>]
sp : 4ffefab8  ip : e1a00003  fp : 47e10e5c
r10: 00000000  r9 : 00000000  r8 : 4fcad3d8
r7 : 47e10954  r6 : 47bf5a00  r5 : 47bf5a00  r4 : 4fc059fc
r3 : 00000015  r2 : 00000016  r1 : 4fc059fc  r0 : 47bf5a00
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
[<4fc07538>] (remove_free_block+0x14/0x5c) from [<4fc075b0>]
(block_remove+0x30/0x38)
[<4fc075b0>] (block_remove+0x30/0x38) from [<4fc075e8>]
(block_merge_next+0x30/0x58)
[<4fc075e8>] (block_merge_next+0x30/0x58) from [<4fc07a78>]
(tlsf_free+0x7c/0x8c)
[<4fc07a78>] (tlsf_free+0x7c/0x8c) from [<4fc0c05c>] (state_save+0x90/0xa4)
[<4fc0c05c>] (state_save+0x90/0xa4) from [<4fc0e0c0>]
(bootchooser_save+0x8c/0xe8)
[<4fc0e0c0>] (bootchooser_save+0x8c/0xe8) from [<4fc0e388>]
(bootchooser_get_target+0xcc/0xe0)
[<4fc0e388>] (bootchooser_get_target+0xcc/0xe0) from [<4fc0e3c0>]
(bootchooser_boot+0x24/0x114)
[<4fc0e3c0>] (bootchooser_boot+0x24/0x114) from [<4fc11fb4>]
(boot_entry+0x64/0xa0)
[<4fc11fb4>] (boot_entry+0x64/0xa0) from [<4fc48258>] (do_boot+0x1dc/0x228)
[<4fc48258>] (do_boot+0x1dc/0x228) from [<4fc03c98>] (execute_command+0x38/0x78)
[<4fc03c98>] (execute_command+0x38/0x78) from [<4fc0a58c>]
(run_list_real+0x878/0x9b8)
[<4fc0a58c>] (run_list_real+0x878/0x9b8) from [<4fc0a158>]
(run_list_real+0x444/0x9b8)
[<4fc0a158>] (run_list_real+0x444/0x9b8) from [<4fc09b50>]
(parse_stream_outer+0x144/0x208)
[<4fc09b50>] (parse_stream_outer+0x144/0x208) from [<4fc09cb8>]
(parse_string_outer+0xa4/0x100)
[<4fc09cb8>] (parse_string_outer+0xa4/0x100) from [<4fc0a734>]
(source_script+0x68/0xa0)
[<4fc0a734>] (source_script+0x68/0xa0) from [<4fc0a7c0>] (do_source+0x54/0x78)
[<4fc0a7c0>] (do_source+0x54/0x78) from [<4fc03c98>] (execute_command+0x38/0x78)
[<4fc03c98>] (execute_command+0x38/0x78) from [<4fc0a58c>]
(run_list_real+0x878/0x9b8)
[<4fc0a58c>] (run_list_real+0x878/0x9b8) from [<4fc09b50>]
(parse_stream_outer+0x144/0x208)
[<4fc09b50>] (parse_stream_outer+0x144/0x208) from [<4fc09cb8>]
(parse_string_outer+0xa4/0x100)
[<4fc09cb8>] (parse_string_outer+0xa4/0x100) from [<4fc0a85c>]
(run_command+0x34/0x4c)
[<4fc0a85c>] (run_command+0x34/0x4c) from [<4fc00d68>]
(start_barebox+0xa0/0x108)
[<4fc00d68>] (start_barebox+0xa0/0x108) from [<4fc71404>]
(barebox_non_pbl_start+0x188/0x1c0)
[<4fc71404>] (barebox_non_pbl_start+0x188/0x1c0) from [<4fc00004>]
(__bare_init_start+0x0/0x10)

[<4fc734f8>] (unwind_backtrace+0x0/0xb8) from [<4fc01118>] (panic+0x28/0x38)
[<4fc01118>] (panic+0x28/0x38) from [<4fc710b8>] (do_exception+0x10/0x14)
[<4fc710b8>] (do_exception+0x10/0x14) from [<4fc7113c>]
(do_data_abort+0x2c/0x38)
[<4fc7113c>] (do_data_abort+0x2c/0x38) from [<4fc706f4>] (do_abort_6+0x48/0x54)
---------------------------
-> system restarts

When starting a boot target manually (e.g. 'boot factory'), I have reading
access to the state
variables via barebox-state.
   
 
My questions are:
 - what is the reason for the error when booting 'bootchooser'?
    Is there an error within my state definition?
 - when using state framework and bootchooser, do I need the
    <boottarget>.boot - variables?
 - is the barebox 2017.04 and dt-utils-2017.03 compatible?
 
Thank you for any help!

Best regards
Norbert Wiedmann

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
