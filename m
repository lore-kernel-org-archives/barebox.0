Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x229.google.com ([2607:f8b0:400e:c01::229])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYD-00069j-Lu
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:07 +0000
Received: by mail-pl0-x229.google.com with SMTP id b14-v6so6112828pls.5
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:38 -0700
Message-Id: <20180607130108.5339-23-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 22/52] ARM: boot: Add trivial i.MX8 support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

It appears that boot sources for i.MX8 are just a subset of those of
i.MX7 and both can be handled by the same code.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c                 | 5 +++++
 arch/arm/mach-imx/include/mach/generic.h | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 11105a148..ab25f75b2 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -624,3 +624,8 @@ void vf610_boot_save_loc(void)
 {
 	imx_boot_save_loc(vf610_get_boot_source);
 }
+
+void imx8_get_boot_source(enum bootsource *src, int *instance)
+	__alias(imx7_get_boot_source);
+
+void imx8_boot_save_loc(void) __alias(imx7_boot_save_loc);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index 62838c691..dc537941a 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -16,6 +16,7 @@ void imx53_boot_save_loc(void);
 void imx6_boot_save_loc(void);
 void imx7_boot_save_loc(void);
 void vf610_boot_save_loc(void);
+void imx8_boot_save_loc(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
 void imx35_get_boot_source(enum bootsource *src, int *instance);
@@ -24,6 +25,7 @@ void imx53_get_boot_source(enum bootsource *src, int *instance);
 void imx6_get_boot_source(enum bootsource *src, int *instance);
 void imx7_get_boot_source(enum bootsource *src, int *instance);
 void vf610_get_boot_source(enum bootsource *src, int *instance);
+void imx8_get_boot_source(enum bootsource *src, int *instance);
 
 int imx1_init(void);
 int imx21_init(void);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
