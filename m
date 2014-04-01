Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUuas-0004ql-0K
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 09:02:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WUuaU-0004qa-K3
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 11:02:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1WUuaT-0007yy-AT
 for barebox@lists.infradead.org; Tue, 01 Apr 2014 11:02:29 +0200
Date: Tue, 1 Apr 2014 11:02:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140401090229.GT17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Introducing barebOS
To: barebox@lists.infradead.org

Hi All,

barebox more and more comes in the area that is has everything an
operating system needs:

- support for all kinds of storage devices
- support for various different fileystems
- Cooperative multitasking with the poller mechanism
- memory management in form of malloc/free and iospace resources
- drivers for Networking, MMC, USB, UARTs, Framebuffer devices, (S)ATA,
  SPI, I2C, W1, Keyboard, EEPROMs, LEDs

I therefore decided that it's no longer necessary to have the overhead
of Linux at all. The project will be renamed to barebOS in the next few
days. Support for booting Linux will be dropped as soon as some the
remaining missing features are added, like for example a working vi
applet and nodejs integration. I'm looking forward to your feedback!

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
