Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P7i-0004xq-B8
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:34:52 +0000
Received: by mail-pf1-x443.google.com with SMTP id r64-v6so7844668pfb.13
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:34:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:34:07 -0700
Message-Id: <20181008063409.17566-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063409.17566-1-andrew.smirnov@gmail.com>
References: <20181008063409.17566-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 4/6] ARM: i.MX7: bbu: Add MMC boot handler
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c |  5 +++++
 arch/arm/mach-imx/include/mach/bbu.h | 10 ++++++++++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 799b97361..77e0b86bc 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -624,6 +624,11 @@ int vf610_bbu_internal_mmcboot_register_handler(const char *name,
 						unsigned long flags)
 	__alias(imx_bbu_internal_mmcboot_register_handler);
 
+int imx7_bbu_internal_mmcboot_register_handler(const char *name,
+						const char *devicefile,
+						unsigned long flags)
+	__alias(imx_bbu_internal_mmcboot_register_handler);
+
 /*
  * Register an i.MX53 internal boot update handler for i2c/spi
  * EEPROMs / flashes. Nearly the same as MMC/SD, but we do not need to
diff --git a/arch/arm/mach-imx/include/mach/bbu.h b/arch/arm/mach-imx/include/mach/bbu.h
index bc1fc4ba6..1174c21d2 100644
--- a/arch/arm/mach-imx/include/mach/bbu.h
+++ b/arch/arm/mach-imx/include/mach/bbu.h
@@ -59,6 +59,9 @@ int imx51_bbu_internal_mmcboot_register_handler(const char *name, const char *de
 int vf610_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
 						unsigned long flags);
 
+int imx7_bbu_internal_mmcboot_register_handler(const char *name, const char *devicefile,
+						unsigned long flags);
+
 int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags);
 
@@ -134,6 +137,13 @@ static inline int vf610_bbu_internal_mmcboot_register_handler(const char *name,
 	return -ENOSYS;
 }
 
+static inline int imx7_bbu_internal_mmcboot_register_handler(const char *name,
+							     const char *devicefile,
+							     unsigned long flags)
+{
+	return -ENOSYS;
+}
+
 static inline int imx6_bbu_internal_spi_i2c_register_handler(const char *name, const char *devicefile,
 		unsigned long flags)
 {
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
