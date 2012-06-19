Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SgviC-0006B6-QJ
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 10:31:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Sgvi8-0001Zx-T9
 for barebox@lists.infradead.org; Tue, 19 Jun 2012 12:31:01 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 19 Jun 2012 12:29:28 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206191229.29035.jbe@pengutronix.de>
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
Subject: i.MX23/i.MX28, software reset feature
To: barebox@lists.infradead.org

Hi list,

currently we use the watchdog to make the "reset" command work on the 
i.XM23/i.MX28 CPUs. This collides if someone wants to use the watchdog in a 
regular manner, as Barebox cannot distinguish if the reset was a result of 
the "reset" command (or "reboot" from Linux) or if something strange happens 
and the watchdog has barked to reboot and try again (maybe in a different 
manner).

The i.XM23/i.MX28 CPUs are coming with a bit in a special register in 
the "clock generation and control" unit to hard reset the whole SoC. This 
could be used instead to make the "reset" command work. But the register 
offsets are different in both SoCs. So:

 - using ifdefs to distinguish both SoCs in "arch/arm/mach-mxs/reset-imx.c"
 - or moving the reset_cpu() function into "arch/arm/mach-mxs/speed-imx*.c"
   where all the required symbols and correct offset are already defined on a
   per SoC base?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
