Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fVijT-0001Pq-26
 for barebox@lists.infradead.org; Wed, 20 Jun 2018 19:25:32 +0000
Received: by mail-pl0-x242.google.com with SMTP id 6-v6so312847plb.0
 for <barebox@lists.infradead.org>; Wed, 20 Jun 2018 12:25:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 20 Jun 2018 12:24:29 -0700
Message-Id: <20180620192430.16689-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180620192430.16689-1-andrew.smirnov@gmail.com>
References: <20180620192430.16689-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/4] ARM: i.MX: bbu: Make imx_bbu_internal_v1_update()
 public
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 2 +-
 arch/arm/mach-imx/include/mach/bbu.h | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c7375ff52..c31413638 100644
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
index bde3e02d2..a07913699 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -9,6 +9,8 @@ struct imx_dcd_v2_entry;
 
 #ifdef CONFIG_BAREBOX_UPDATE
 
+int imx_bbu_internal_v1_update(struct bbu_handler *handler, struct bbu_data *data);
+
 int imx51_bbu_internal_mmc_register_handler(const char *name, char *devicefile,
 		unsigned long flags);
 
@@ -38,6 +40,12 @@ int imx_bbu_external_nor_register_handler(const char *name, char *devicefile,
 
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
