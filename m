Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5Env-0000QY-Tb
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 09:04:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Apr 2010 11:03:55 +0200
Message-Id: <1272013443-29196-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] pcm043: Speed up NAND controller before copying barebox
	image
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/pcm043/pcm043.c |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
index 2ce7e3a..d8cd7b8 100644
--- a/board/pcm043/pcm043.c
+++ b/board/pcm043/pcm043.c
@@ -393,6 +393,13 @@ BAREBOX_CMD_END
 #ifdef CONFIG_NAND_IMX_BOOT
 void __bare_init nand_boot(void)
 {
+	u32 val;
+
+	val = readl(IMX_CCM_BASE + CCM_PDR4);
+	val &= ~(0xf << 28);
+	val |= 0x1 << 28;
+	writel(val, IMX_CCM_BASE + CCM_PDR4);
+
 	/*
 	 * The driver is able to detect NAND's pagesize by CPU internal
 	 * fuses or external pull ups. But not the blocksize...
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
