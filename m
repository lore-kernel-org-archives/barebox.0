Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3jjn-00039M-Qx
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 08:55:16 +0000
Received: from isonoe.hi.pengutronix.de ([10.1.0.76])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1U3jjl-00086p-02
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:55:13 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 8 Feb 2013 09:54:00 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201302080954.00450.jbe@pengutronix.de>
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
Subject: RFC, i.MX28 related
To: barebox@lists.infradead.org

Hi list,

the i.MX28 SoC has a nice "feature" which prevents the "intended" usage of its 
watchdog.

When the SoC is powered via its 5 V power supply input the watchdog triggers a 
simple system reset when it barks. But when the SoC is powered via the 
battery supply input only, the watchdog powers off the whole chip instead, 
because it resets the PMIC.

But we are in luck: a register bit exists to select a system reset or power 
off for the battery powered case when the watchdog barks. It only defaults to 
the power off setting after reset.

Should we re-program this bit to the system reset setting for all i.MX28 based 
system (e.g. in the i.MX28 generic part of Barebox) or better on a board by 
board base?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
