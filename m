Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from sonic304-22.consmr.mail.ne1.yahoo.com ([66.163.191.148])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dJbXj-0002rn-0C
 for barebox@lists.infradead.org; Sat, 10 Jun 2017 08:14:48 +0000
Date: Sat, 10 Jun 2017 08:14:09 +0000 (UTC)
From: B Gol <behnam_golds@yahoo.com>
Message-ID: <1270235505.6719556.1497082449606@mail.yahoo.com>
MIME-Version: 1.0
References: <1270235505.6719556.1497082449606.ref@mail.yahoo.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: B Gol <behnam_golds@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: How to use eMMC/SD DOS partitions as backend for the state framework?
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,
I was trying to figure out the state framework recently , and found out 
that till version 2017.04.0 it kinda works with the following lines in 
my dtb :

#############################################################################

/ {
  state: state {
        magic = <0x27031977>;
        compatible = "barebox,state";
        backend-type = "dtb";
        backend-storage-type = "direct";
        backend-stridesize = <0x500>;
        backend = &mmc1, "partname:6";
        bootchooser {
                system0 {
                        boot {
                                reg = <0x00 0x10>;
                                type = "string";
                                default = "system0";
                        };
                        remaining_attempts {
                                reg = <0x15 0x4>;
                                type = "uint32";
                                default = <0x3>;
                        };
                        priority {
                                reg = <0x20 0x4>;
                                type = "uint32";
                                default = <0x15>;
                        };
                };

                system1 {
                        boot {
                                reg = <0x25 0x10>;
                                type = "string";
                                default = "system1";
                        };
                        remaining_attempts {
                                reg = <0x40 0x4>;
                                type = "uint32";
                                default = <0x3>;
                        };
                        priority {
                                reg = <0x45 0x4>;
                                type = "uint32";
                                default = <0x14>;
                        };
                };

        };
  };


};



#############################################################################
The problem was it just worked for the first boot , after that it goes 
through a boot loop and all the remaining_attempts become zero , and I 
see the following bizarre logs on the console :


#############################################################################
state: set parameter bootchooser.last_chosen: Invalid argument
unable to handle paging request at address 0x14040008
pc : [<9fe05314>]    lr : [<9fe05363>]
sp : 9ffefab8  ip : 0000000c  fp : 9fe56ad5
r10: 9fea17c8  r9 : 9fe56f8a  r8 : 9fe56f71
r7 : 9011852c  r6 : 8fefef40  r5 : 14040000  r4 : edfe0dd0
r3 : 00000000  r2 : 00000004  r1 : 90119214  r0 : 8fefef40
Flags: nzCv  IRQs off  FIQs on  Mode SVC_32
[<9fe05314>] (remove_free_block+0x10/0x3e) from [<9fe05363>] (block_remove+0x21/0x24)
[<9fe05363>] (block_remove+0x21/0x24) from [<9fe05667>] (tlsf_free+0x37/0x62)
[<9fe05667>] (tlsf_free+0x37/0x62) from [<9fe08875>] (state_save+0x5d/0x6c)
[<9fe08875>] (state_save+0x5d/0x6c) from [<9fe09c6b>] (bootchooser_save+0x33/0xa0)
[<9fe09c6b>] (bootchooser_save+0x33/0xa0) from [<9fe09e3b>] (bootchooser_get_target+0x5f/0x7c)
[<9fe09e3b>] (bootchooser_get_target+0x5f/0x7c) from [<9fe09e7b>] (bootchooser_boot+0x23/0xbc)
[<9fe09e7b>] (bootchooser_boot+0x23/0xbc) from [<9fe0ba33>] (boot_entry+0x37/0x60)
[<9fe0ba33>] (boot_entry+0x37/0x60) from [<9fe36a1f>] (do_boot+0x137/0x160)
[<9fe36a1f>] (do_boot+0x137/0x160) from [<9fe02f25>] (execute_command+0x21/0x48)
[<9fe02f25>] (execute_command+0x21/0x48) from [<9fe076d3>] (run_list_real+0x5a3/0x604)
[<9fe076d3>] (run_list_real+0x5a3/0x604) from [<9fe073c7>] (run_list_real+0x297/0x604)
[<9fe073c7>] (run_list_real+0x297/0x604) from [<9fe07035>] (parse_stream_outer+0x105/0x15c)
[<9fe07035>] (parse_stream_outer+0x105/0x15c) from [<9fe070f1>] (parse_string_outer+0x65/0xa4)
[<9fe070f1>] (parse_string_outer+0x65/0xa4) from [<9fe07777>] (source_script+0x43/0x68)
[<9fe07777>] (source_script+0x43/0x68) from [<9fe077c3>] (do_source+0x27/0x46)
[<9fe077c3>] (do_source+0x27/0x46) from [<9fe02f25>] (execute_command+0x21/0x48)
[<9fe02f25>] (execute_command+0x21/0x48) from [<9fe076d3>] (run_list_real+0x5a3/0x604)
[<9fe076d3>] (run_list_real+0x5a3/0x604) from [<9fe07035>] (parse_stream_outer+0x105/0x15c)
[<9fe07035>] (parse_stream_outer+0x105/0x15c) from [<9fe070f1>] (parse_string_outer+0x65/0xa4)
[<9fe070f1>] (parse_string_outer+0x65/0xa4) from [<9fe078b5>] (run_command+0x21/0x30)
[<9fe078b5>] (run_command+0x21/0x30) from [<9fe0094d>] (start_barebox+0x2d/0x94)
[<9fe0094d>] (start_barebox+0x2d/0x94) from [<9fe51e3b>] (barebox_non_pbl_start+0xbb/0xf8)
[<9fe51e3b>] (barebox_non_pbl_start+0xbb/0xf8) from [<9fe00005>] (__bare_init_start+0x1/0xc)

[<9fe535fd>] (unwind_backtrace+0x1/0x58) from [<9fe00bbd>] (panic+0x1d/0x34)
[<9fe00bbd>] (panic+0x1d/0x34) from [<9fe51c11>] (do_exception+0xd/0x10)
[<9fe51c11>] (do_exception+0xd/0x10) from [<9fe51c71>] (do_data_abort+0x21/0x2c)
[<9fe51c71>] (do_data_abort+0x21/0x2c) from [<9fe51714>] (do_abort_6+0x48/0x54)



#############################################################################

Now with the last version (2017.05.0) I have another problem. This is what
I see on the console while trying to boot :


#############################################################################
state: Cannot resolve "backend" phandle
state state.7: probe failed: Invalid argument

#############################################################################


The question is, how should I declare the backend in the dts file and which 

one is the most stable version that supports my case?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
