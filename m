Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuMwx-0006AI-DH
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 12:14:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SuMwr-000710-Au
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 14:13:45 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 26 Jul 2012 14:13:17 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207261413.17674.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox crashes when the first console should stop
To: barebox@lists.infradead.org

Environemnt: a system with a generic serial console and OTG capability.
The generic serial console comes up when the system starts. After that I
add the USB console with:

usbmode device
usbserial -a
cs1.active=ioe

After these commands both consoles are working as expected. But then I
want to disable the generic serial console:

barebox@Bosch SCM:/ cs0.active=
unable to handle NULL pointer dereference at address 0x00000000
pc : [<4301e0dc>]    lr : [<43004d40>]
sp : 40fff960  ip : 0000000a  fp : 00000000
r10: 00000000  r9 : 00000000  r8 : 410ebda8
r7 : 00000000  r6 : 41002ad8  r5 : 00000000  r4 : 410029b4
r3 : 43004d1c  r2 : 00000003  r1 : 00000069  r0 : 00000000
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<4301e0dc>] (_strchr+0x18/0x34) from [<43004d40>] (console_std_set+0x24/0xe4)
[<43004d40>] (console_std_set+0x24/0xe4) from [<4301f314>] (dev_set_param+0x74/0x8c)
[<4301f314>] (dev_set_param+0x74/0x8c) from [<430057dc>] (setenv+0x60/0xd4)
[<430057dc>] (setenv+0x60/0xd4) from [<4300100c>] (set_local_var.isra.2+0x58/0x78)
[<4300100c>] (set_local_var.isra.2+0x58/0x78) from [<430016d4>] (run_list_real+0x504/0x9dc)
[<430016d4>] (run_list_real+0x504/0x9dc) from [<43001cf4>] (parse_stream_outer+0x148/0x238)
[<43001cf4>] (parse_stream_outer+0x148/0x238) from [<4300207c>] (run_shell+0x3c/0x7c)
[<4300207c>] (run_shell+0x3c/0x7c) from [<43004c38>] (execute_command+0x38/0x7c)
[<43004c38>] (execute_command+0x38/0x7c) from [<43001aac>] (run_list_real+0x8dc/0x9dc)
[<43001aac>] (run_list_real+0x8dc/0x9dc) from [<43001608>] (run_list_real+0x438/0x9dc)

[<4302e184>] (unwind_backtrace+0x0/0x9c) from [<4301eee0>] (panic+0x28/0x3c)
[<4301eee0>] (panic+0x28/0x3c) from [<4302e65c>] (do_exception+0x10/0x14)
[<4302e65c>] (do_exception+0x10/0x14) from [<4302e6e8>] (do_data_abort+0x2c/0x38)
[<4302e6e8>] (do_data_abort+0x2c/0x38) from [<4302e3b0>] (data_abort+0x50/0x60)

Known/intended behaviour?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
