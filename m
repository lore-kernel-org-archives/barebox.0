Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnima-0003DI-4h
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:16:04 +0200
Message-Id: <20200623131606.16316-19-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
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
Subject: [PATCH 18/20] ARM: i.MX: bbu: Fix IVT offset for i.MX8MP
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index a922470988..1b3cb70da8 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -384,16 +384,21 @@ static enum filetype imx_bbu_expected_filetype(void)
 
 static unsigned long imx_bbu_flash_header_offset_mmc(void)
 {
-	unsigned long offset = SZ_1K;
+	/*
+	 * i.MX8MQ moved the header by 32K to accomodate for GPT partition
+	 * tables. The offset to the IVT is 1KiB.
+	 */
+	if (cpu_is_mx8mm() || cpu_is_mx8mq())
+		return SZ_32K + SZ_1K;
 
 	/*
-	 * i.MX8MQ moved the header by 32K to accomodate for GPT
-	 * partition tables
+	 * i.MX8MP moved the header by 32K to accomodate for GPT partition
+	 * tables, but the IVT is right at the beginning of the image.
 	 */
-	if (cpu_is_mx8m())
-		offset += SZ_32K;
+	if (cpu_is_mx8mp())
+		return SZ_32K;
 
-	return offset;
+	return SZ_1K;
 }
 
 static int imx_bbu_update(struct bbu_handler *handler, struct bbu_data *data)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
