Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXyt1-0000Gn-MT
 for barebox@lists.infradead.org; Wed, 27 Jun 2018 01:04:48 +0000
Received: by mail-pg0-x242.google.com with SMTP id c10-v6so154827pgu.9
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 18:04:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Jun 2018 18:04:07 -0700
Message-Id: <20180627010412.20646-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180627010412.20646-1-andrew.smirnov@gmail.com>
References: <20180627010412.20646-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 05/10] ARM: i.MX: bbu: Make imx_bbu_internal_v1_update()
 public
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 2 +-
 arch/arm/mach-imx/include/mach/bbu.h | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 84810f18a..7735273b4 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -156,7 +156,7 @@ static int imx_bbu_check_prereq(const char *devicefile, struct bbu_data *data)
  * the resulting image to the device. Currently this handles MMC/SD
  * devices.
  */
-static int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data)
+int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data)
 {
 	struct imx_internal_bbu_handler *imx_handler =
 		container_of(handler, struct imx_internal_bbu_handler, handler);
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index d62382831..04be8cea5 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -9,6 +9,8 @@ struct imx_dcd_v2_entry;
 
 #ifdef CONFIG_BAREBOX_UPDATE
 
+int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data);
+
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
@@ -41,6 +43,12 @@ int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 
 #else
 
+static inline int imx_bbu_internal_v1_update(struct bbu_handler *handler,
+					     struct bbu_data *data)
+{
+	return -ENOSYS;
+}
+
 static inline int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
