Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x22d.google.com ([2607:f8b0:4001:c0b::22d])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ch2kq-0004mO-Vp
 for barebox@lists.infradead.org; Thu, 23 Feb 2017 23:24:59 +0000
Received: by mail-it0-x22d.google.com with SMTP id 203so3478059ith.0
 for <barebox@lists.infradead.org>; Thu, 23 Feb 2017 15:24:36 -0800 (PST)
MIME-Version: 1.0
From: Chris Healy <cphealy@gmail.com>
Date: Thu, 23 Feb 2017 15:24:33 -0800
Message-ID: <CAFXsbZo1X6FQ5F8560oAzuf9eygzS22WPxjFwGpo26887NswCQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: mw crash
To: barebox@lists.infradead.org

I mistakenly used the wrong set of command line arguments when using
the mw command and it resulted in the following crash:

barebox@ZII RDU2 Board:/ mw -b -l /dev/pic_eeprom_rdu 0x50 3
unable to handle NULL pointer dereference at address 0x00000000
pc : [<8fe45134>]    lr : [<8fe45107>]
sp : 8ffef870  ip : 4ff9def8  fp : 00000000
r10: 00000006  r9 : 00000000  r8 : ffffffff
r7 : 8ffef91c  r6 : 8ffef91c  r5 : 00000000  r4 : 00000004
r3 : 00000050  r2 : 00000003  r1 : 00000003  r0 : 00000000
Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
[<8fe45134>] (memcpy_sz+0x48/0x54) from [<8fe46119>] (mem_write+0x39/0x44)
[<8fe46119>] (mem_write+0x39/0x44) from [<8fe42f35>] (devfs_write+0x21/0x2a)
[<8fe42f35>] (devfs_write+0x21/0x2a) from [<8fe44ea1>] (__write+0x79/0x94)
[<8fe44ea1>] (__write+0x79/0x94) from [<8fe45587>] (write+0x2b/0x48)
[<8fe45587>] (write+0x2b/0x48) from [<8fe2c813>] (do_mem_mw+0x10f/0x14c)
[<8fe2c813>] (do_mem_mw+0x10f/0x14c) from [<8fe0324d>]
(execute_command+0x21/0x48)
[<8fe0324d>] (execute_command+0x21/0x48) from [<8fe087eb>]
(run_list_real+0x55b/0x618)
[<8fe087eb>] (run_list_real+0x55b/0x618) from [<8fe08161>]
(parse_stream_outer+0xd9/0x164)
[<8fe08161>] (parse_stream_outer+0xd9/0x164) from [<8fe08a6b>]
(run_shell+0x33/0x60)
[<8fe08a6b>] (run_shell+0x33/0x60) from [<8fe0324d>] (execute_command+0x21/0x48)
[<8fe0324d>] (execute_command+0x21/0x48) from [<8fe087eb>]
(run_list_real+0x55b/0x618)
[<8fe087eb>] (run_list_real+0x55b/0x618) from [<8fe08509>]
(run_list_real+0x279/0x618)

[<8fe4cbe9>] (unwind_backtrace+0x1/0x58) from [<8fe00d39>] (panic+0x1d/0x34)
[<8fe00d39>] (panic+0x1d/0x34) from [<8fe4b20d>] (do_exception+0xd/0x10)
[<8fe4b20d>] (do_exception+0xd/0x10) from [<8fe4b26d>] (do_data_abort+0x21/0x2c)
[<8fe4b26d>] (do_data_abort+0x21/0x2c) from [<8fe4ab34>] (do_abort_6+0x48/0x54)


I haven't dug in to figure it out but I figured it would be good to report.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
