Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQbWQ-0003os-DE
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 09:11:11 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RQbWJ-0002WL-1e
 for barebox@lists.infradead.org; Wed, 16 Nov 2011 10:11:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 16 Nov 2011 10:10:24 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201111161010.24961.jbe@pengutronix.de>
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
Subject: [PATCH/next] Mini2440: Everything's now present to provide USB host
 feature
To: barebox@lists.infradead.org

The S3C2440 CPU comes with an internal OHCI the generic part of
Barebox already supports. Just add the missing part.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 4351023..56e2668 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -313,6 +313,8 @@ static int mini2440_devices_init(void)
 			   IORESOURCE_MEM, &mci_data);
 	add_generic_device("s3c_fb", 0, NULL, S3C2410_LCD_BASE, 0,
 			   IORESOURCE_MEM, &s3c24x0_fb_data);
+	add_generic_device("ohci", 0, NULL, S3C2410_USB_HOST_BASE, 0x100,
+			   IORESOURCE_MEM, NULL);
 	armlinux_set_bootparams((void*)CS6_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_MINI2440);
 
-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
