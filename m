Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5U-0005vQ-Hl
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:46:54 +0000
Received: by mail-pl0-x22d.google.com with SMTP id v24-v6so5019480plo.3
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:42 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH v2 23/48] ARM: boot: Add trivial i.MX8 support
Date: Sat, 26 May 2018 13:44:26 -0700
Message-Id: <20180526204451.16530-24-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
index 204bd40f7..ccb04078c 100644
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
