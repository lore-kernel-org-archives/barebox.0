Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from optimeas.de ([78.46.18.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ubal7-00069k-41
 for barebox@lists.infradead.org; Sun, 12 May 2013 18:12:33 +0000
Received: from [192.168.178.21] (krlh-5f713045.pool.mediaWays.net
 [95.113.48.69]) by optimeas.de (Postfix) with ESMTPSA id 05D834207A56
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 20:12:11 +0200 (CEST)
From: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Date: Sun, 12 May 2013 18:12:11 +0000
In-Reply-To: <emde4cb769-926c-4395-89e6-073d8c931261@plh001-think>
Message-Id: <emf29bd203-0329-4bf9-8b13-7176a8062a4f@plh001-think>
Mime-Version: 1.0
Reply-To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Error when starting kernel with devicetree on tx53
To: barebox@lists.infradead.org

Hello,
I try to install barebox 2013.05.0 as bootloader for a karo-TX53 board. 
Currently uBoot is used.
As a first try I load the barebox image with uboot over tftp into RAM 
and start it from there.
Barebox starts and I can access the menu and select my prepared 
boot-entry
2: Boot: optiMEAS Net-Boot

Then barebox loads the Kernel-image "uImage" and the devicetree 
"tx53.dtb" from the mountpoint "mnt/tftp".

But then it chrashes with the error message as stated below.
The same kernelimage and devicetree is working when started with Uboot.

Where is my mistake? Am I missing some settings? What else do I have to 
configure when I want to start my kernel and using a devicetree?

Thanks for helping.
Patrick

BootScript:
#!/bin/sh

if [ "$1" = menu ]; then
boot-menu-add-entry "$0" "optiMEAS Net-Boot"
exit
fi

global.bootm.image=/mnt/tftp/uImage
global.bootm.oftree=/mnt/tftp/tx53.dtb
#global.bootm.initrd=<path to initrd>

#bootargs-ip

global.linux.bootargs.dyn.root="root=/home/user/development/bsp/branch2_tx53/platform-optimeas-tx53/root"

Messages:
booting ./nfs...
100Mbps full duplex link detected
Image Name: Linux-3.4.37-optimeas-master-rt5
Created: 2013-05-08 9:26:43 UTC
OS: Linux
Architecture: ARM
Type: Kernel Image
Compression: uncompressed
Data Size: 2275608 Bytes = 2.2 MiB
Load Address: 70008000
Entry Point: 70008000

Loading OS U-Boot uImage '/mnt/tftp/uImage'
OS image is at 0x70008000-0x70233917
Loading devicetree from '/mnt/tftp/tx53.dtb'
/mnt/tftp/tx53.dtb is not an oftree but unknown
bad magic: 0x0000f085
Passing control to ARM Linux uImage handler
unable to handle paging request at address 0xfffffffe
pc : [<87f1248a>] lr : [<87f124db>]
sp : 8fffece0 ip : 8fffe924 fp : 00000003
r10: 00000000 r9 : 70008000 r8 : 00000000
r7 : 863e6f34 r6 : 863e6f34 r5 : ffffffea r4 : ffffffea
r3 : 00000000 r2 : 00000000 r1 : 863e6f34 r0 : ffffffea
Flags: Nzcv IRQs off FIQs off Mode SVC_32
[<87f1248a>] (of_find_child_by_name+0xe/0x28) from [<87f124db>] 
(of_find_node_by_path+0x37/0x50)
[<87f124db>] (of_find_node_by_path+0x37/0x50) from [<87f127ef>] 
(of_add_initrd+0xf/0x84)
[<87f127ef>] (of_add_initrd+0xf/0x84) from [<87f22a55>] 
(__do_bootm_linux+0xbd/0x138)
[<87f22a55>] (__do_bootm_linux+0xbd/0x138) from [<87f132ed>] 
(do_bootm+0x435/0x4e8)
[<87f132ed>] (do_bootm+0x435/0x4e8) from [<87f03649>] 
(execute_command+0x21/0x48)
[<87f03649>] (execute_command+0x21/0x48) from [<87f00177>] 
(binfmt_exec_excute+0x43/0x50)
[<87f00177>] (binfmt_exec_excute+0x43/0x50) from [<87f000cd>] 
(__exceptions_stop+0x35/0x54)
[<87f000cd>] (__exceptions_stop+0x35/0x54) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d95>] 
(parse_string_outer+0x81/0x98)
[<87f00d95>] (parse_string_outer+0x81/0x98) from [<87f0116b>] 
(run_list_real+0x3bf/0x620)
[<87f0116b>] (run_list_real+0x3bf/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f013f3>] 
(source_script+0x27/0x4c)
[<87f013f3>] (source_script+0x27/0x4c) from [<87f01475>] 
(binfmt_sh_excute+0x17/0x20)
[<87f01475>] (binfmt_sh_excute+0x17/0x20) from [<87f000cd>] 
(__exceptions_stop+0x35/0x54)
[<87f000cd>] (__exceptions_stop+0x35/0x54) from [<87f00129>] 
(execute_binfmt+0x3d/0x48)
[<87f00129>] (execute_binfmt+0x3d/0x48) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d95>] 
(parse_string_outer+0x81/0x98)
[<87f00d95>] (parse_string_outer+0x81/0x98) from [<87f0116b>] 
(run_list_real+0x3bf/0x620)
[<87f0116b>] (run_list_real+0x3bf/0x620) from [<87f0102f>] 
(run_list_real+0x283/0x620)
[<87f0102f>] (run_list_real+0x283/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f013f3>] 
(source_script+0x27/0x4c)
[<87f013f3>] (source_script+0x27/0x4c) from [<87f01475>] 
(binfmt_sh_excute+0x17/0x20)
[<87f01475>] (binfmt_sh_excute+0x17/0x20) from [<87f000cd>] 
(__exceptions_stop+0x35/0x54)
[<87f000cd>] (__exceptions_stop+0x35/0x54) from [<87f00129>] 
(execute_binfmt+0x3d/0x48)
[<87f00129>] (execute_binfmt+0x3d/0x48) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d95>] 
(parse_string_outer+0x81/0x98)
[<87f00d95>] (parse_string_outer+0x81/0x98) from [<87f0116b>] 
(run_list_real+0x3bf/0x620)
[<87f0116b>] (run_list_real+0x3bf/0x620) from [<87f0102f>] 
(run_list_real+0x283/0x620)
[<87f0102f>] (run_list_real+0x283/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f013f3>] 
(source_script+0x27/0x4c)
[<87f013f3>] (source_script+0x27/0x4c) from [<87f01475>] 
(binfmt_sh_excute+0x17/0x20)
[<87f01475>] (binfmt_sh_excute+0x17/0x20) from [<87f000cd>] 
(__exceptions_stop+0x35/0x54)
[<87f000cd>] (__exceptions_stop+0x35/0x54) from [<87f00129>] 
(execute_binfmt+0x3d/0x48)
[<87f00129>] (execute_binfmt+0x3d/0x48) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f0148d>] 
(run_command+0xf/0x1e)
[<87f0148d>] (run_command+0xf/0x1e) from [<87f04d95>] 
(menu_action_command+0x19/0x2c)
[<87f04d95>] (menu_action_command+0x19/0x2c) from [<87f05213>] 
(menu_show+0x1c3/0x228)
[<87f05213>] (menu_show+0x1c3/0x228) from [<87f16623>] 
(do_menu+0x2c7/0x2ec)
[<87f16623>] (do_menu+0x2c7/0x2ec) from [<87f03649>] 
(execute_command+0x21/0x48)
[<87f03649>] (execute_command+0x21/0x48) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f0102f>] 
(run_list_real+0x283/0x620)
[<87f0102f>] (run_list_real+0x283/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f013f3>] 
(source_script+0x27/0x4c)
[<87f013f3>] (source_script+0x27/0x4c) from [<87f01475>] 
(binfmt_sh_excute+0x17/0x20)
[<87f01475>] (binfmt_sh_excute+0x17/0x20) from [<87f000cd>] 
(__exceptions_stop+0x35/0x54)
[<87f000cd>] (__exceptions_stop+0x35/0x54) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f0102f>] 
(run_list_real+0x283/0x620)
[<87f0102f>] (run_list_real+0x283/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f013f3>] 
(source_script+0x27/0x4c)
[<87f013f3>] (source_script+0x27/0x4c) from [<87f0144b>] 
(do_source+0x33/0x46)
[<87f0144b>] (do_source+0x33/0x46) from [<87f03649>] 
(execute_command+0x21/0x48)
[<87f03649>] (execute_command+0x21/0x48) from [<87f012e1>] 
(run_list_real+0x535/0x620)
[<87f012e1>] (run_list_real+0x535/0x620) from [<87f00c7b>] 
(parse_stream_outer+0xfb/0x194)
[<87f00c7b>] (parse_stream_outer+0xfb/0x194) from [<87f00d6f>] 
(parse_string_outer+0x5b/0x98)
[<87f00d6f>] (parse_string_outer+0x5b/0x98) from [<87f0148d>] 
(run_command+0xf/0x1e)
[<87f0148d>] (run_command+0xf/0x1e) from [<87f0464d>] 
(start_barebox+0x6d/0xc4)
[<87f0464d>] (start_barebox+0x6d/0xc4) from [<87f23701>] 
(__start+0x49/0x54)
[<87f23701>] (__start+0x49/0x54) from [<87f00005>] 
(__bare_init_start+0x1/0xc)

[<87f23201>] (unwind_backtrace+0x1/0x60) from [<87f17c59>] 
(panic+0x1d/0x2c)
[<87f17c59>] (panic+0x1d/0x2c) from [<87f2361d>] (do_exception+0xd/0x10)
[<87f2361d>] (do_exception+0xd/0x10) from [<87f23685>] 
(do_data_abort+0x21/0x2c)
[<87f23685>] (do_data_abort+0x21/0x2c) from [<87f233c8>] 
(data_abort+0x48/0x60)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
