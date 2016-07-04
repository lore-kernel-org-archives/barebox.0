Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ah-00062F-35
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:28:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Jul 2016 11:27:30 +0200
Message-Id: <1467624459-16448-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
References: <1467624459-16448-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/12] ARM: i.MX53: Detect booting from USB
To: Barebox List <barebox@lists.infradead.org>

The USB download mode can be detected by reading the BMOD[0|1]
bits. Add support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index c72ec61..b66c29d 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -217,6 +217,12 @@ void imx53_get_boot_source(enum bootsource *src, int *instance)
 	void __iomem *src_base = IOMEM(MX53_SRC_BASE_ADDR);
 	uint32_t cfg1 = readl(src_base + IMX53_SRC_SBMR);
 
+	if (((cfg1 >> 24) & 0x3) == 0x3) {
+		*src = BOOTSOURCE_USB;
+		*instance = 0;
+		return;
+	}
+
 	switch ((cfg1 & 0xff) >> 4) {
 	case 2:
 		*src = BOOTSOURCE_HD;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
