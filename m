Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NfXr2-0003Pa-3P
	for barebox@lists.infradead.org; Thu, 11 Feb 2010 12:09:12 +0000
Received: from themisto.ext.pengutronix.de ([92.198.50.58]
	helo=jupiter.intranet.kreuzholzen.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1NfXqm-00088Q-DG
	for barebox@lists.infradead.org; Thu, 11 Feb 2010 13:08:56 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 11 Feb 2010 13:08:49 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201002111308.50433.jbe@pengutronix.de>
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
Subject: [PATCH] Fix compile time errors when DEBUG is defined
To: barebox@lists.infradead.org

If the DEBUG macro is defined the compiler complains about a missing
'ipu_base' variable.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/drivers/video/imx-ipu-fb.c b/drivers/video/imx-ipu-fb.c
index 4a27009..0bd86b2 100644
--- a/drivers/video/imx-ipu-fb.c
+++ b/drivers/video/imx-ipu-fb.c
@@ -398,7 +398,7 @@ static inline u32 reg_read(struct ipu_fb_info *fbi, unsigned long reg)
 
 	val = readl(fbi->regs + reg);
 
-	debug("%s: %p 0x%08x\n", __func__, ipu_base + reg, val);
+	debug("%s: %p 0x%08x\n", __func__, fbi->regs + reg, val);
 
 	return val;
 }
@@ -406,7 +406,7 @@ static inline u32 reg_read(struct ipu_fb_info *fbi, unsigned long reg)
 static inline void reg_write(struct ipu_fb_info *fbi, u32 value,
 		unsigned long reg)
 {
-	debug("%s: %p 0x%08x\n", __func__, ipu_base + reg, value);
+	debug("%s: %p 0x%08x\n", __func__, fbi->regs + reg, value);
 
 	writel(value, fbi->regs + reg);
 }

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
