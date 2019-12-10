Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieh5v-0006yc-Ej
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 15:06:36 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Tue, 10 Dec 2019 16:06:27 +0100
Message-Id: <1575990387-9905-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH] habv4: add the possibility to changing the signing area from
 Kconfig
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

the whole barebox with mbr and partition table will be signed by default
add the possibility in the Kconfig to change from full signing to skip-mbr
and from-dcdofs

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
 arch/arm/mach-imx/Kconfig                          | 26 ++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h |  2 +-
 scripts/imx/imx.c                                  |  6 ++---
 3 files changed, 30 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6e98e95..ca1e6f3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -859,6 +859,32 @@ config HABV4_IMG_CRT_PEM
 
 endif
 
+if HABV4
+choice
+	prompt "Select type for signing area"
+	help
+	  select the signing area, which is checked from the HAB modul
+	  of the i.mx controller
+
+config HABV4_BLOCKS_TYPE_FULL
+	bool "complete barebox with mbr and partition table"
+
+config HABV4_BLOCKS_TYPE_FROM_DCDOFS
+	bool "signing area begins from dcdofs address"
+
+config HABV4_BLOCKS_TYPE_SKIP_MBR
+	bool "signing area begins after MBR"
+
+endchoice
+
+endif
+
+config HABV4_BLOCKS_TYPE
+	string
+	default skip-mbr if HABV4_BLOCKS_TYPE_SKIP_MBR
+	default from-dcdofs if HABV4_BLOCKS_TYPE_FROM_DCDOFS
+	default full
+
 config HABV3
 	tristate "HABv3 support"
 	select HAB
diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
index 5818879..60d3baf 100644
--- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
+++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf.h
@@ -42,7 +42,7 @@ hab [Authenticate Data]
 /* verification key index in key store (2...4) */
 hab Verification index = 2
 
-hab_blocks
+hab_blocks CONFIG_HABV4_BLOCKS_TYPE
 
 hab_encrypt [Install Secret Key]
 hab_encrypt Verification index = 0
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index b3e8d62..4a96d8d 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -365,17 +365,17 @@ static int do_hab_blocks(struct config_data *data, int argc, char *argv[])
 			offset += PLUGIN_HDMI_SIZE;
 	}
 
-	if (!strcmp(type, "full")) {
+	if (strstr(type, "full")) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%08x 0x%08x \"%s\"\n",
 			       data->image_load_addr, offset, signed_size,
 			       data->outfile);
-	} else if (!strcmp(type, "from-dcdofs")) {
+	} else if (strstr(type, "from-dcdofs")) {
 		ret = asprintf(&str, "Blocks = 0x%08x 0x%x %d \"%s\"\n",
 			       data->image_load_addr + data->image_dcd_offset,
 			       data->image_dcd_offset,
 			       signed_size - data->image_dcd_offset,
 			       data->outfile);
-	} else if (!strcmp(type, "skip-mbr")) {
+	} else if (strstr(type, "skip-mbr")) {
 		ret = asprintf(&str,
 			       "Blocks = 0x%08x 0 440 \"%s\", \\\n"
 			       "         0x%08x 512 %d \"%s\"\n",
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
