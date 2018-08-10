Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiV-0002KY-Gs
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:04:57 +0000
Received: by mail-pf1-x42d.google.com with SMTP id j8-v6so4944167pff.6
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:45 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:25 -0700
Message-Id: <20180810190429.10823-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180810190429.10823-1-andrew.smirnov@gmail.com>
References: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/6] ARM: i.MX: boot: Fix accidental comma
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index ab25f75b2..45170ab10 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -512,7 +512,7 @@ void imx7_get_boot_source(enum bootsource *src, int *instance)
 		*src = BOOTSOURCE_NAND;
 		break;
 	case 6:
-		*src = BOOTSOURCE_SPI_NOR,
+		*src = BOOTSOURCE_SPI_NOR;
 		*instance = imx7_boot_instance_spi_nor(sbmr1);
 		break;
 	case 4:
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
