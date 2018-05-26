Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5S-0004dP-Br
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:48 +0000
Received: by mail-pl0-x241.google.com with SMTP id z9-v6so1666489plk.11
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:25 -0700
Message-Id: <20180526204451.16530-23-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 22/48] ARM: i.MX: boot: Fix address casting on 64-bit
 platforms
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add an intermediary casting step in order to avoid casting 32-bit
integer to 64-bit pointer on 64-bit platforms.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 22cf08e6a..11105a148 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -485,7 +485,8 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		 */
 		const struct imx_boot_sw_info *info;
 
-		info = (const void *)readl(IMX_BOOT_SW_INFO_POINTER_ADDR);
+		info = (const void *)(unsigned long)
+			readl(IMX_BOOT_SW_INFO_POINTER_ADDR);
 
 		if (info->boot_device_type == IMX_BOOT_SW_INFO_BDT_SD) {
 			*src = BOOTSOURCE_MMC;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
