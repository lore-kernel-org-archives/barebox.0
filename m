Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wm2aH-0002b7-Na
 for barebox@lists.infradead.org; Sun, 18 May 2014 15:01:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1Wm2Zp-0007ms-J8
 for barebox@lists.infradead.org; Sun, 18 May 2014 17:00:37 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1Wm2Zw-0004wT-3b
 for barebox@lists.infradead.org; Sun, 18 May 2014 17:00:44 +0200
Date: Sun, 18 May 2014 17:00:44 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20140518150044.GC27598@pengutronix.de>
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
Subject: mini2440 and CONFIG_MMU_EARLY
To: barebox@lists.infradead.org

Hi,

are there any special requirements for CONFIG_MMU_EARLY to work?
With CONFIG_MMU_EARLY=y barebox master fails to boot. If I change the
memsize argument for barebox_arm_entry() in
arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S from SZ_32M to SZ_64M
then it boots. Any ideas might go wrong here?

Regards,
Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
