Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMEo-0007PR-Uq
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:55:52 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so2739976wgb.18
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:55:50 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:16 +0200
Message-Id: <1349736924-24667-7-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/14] omap4: add usb boot source
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/mach-omap/include/mach/xload.h | 1 +
 arch/arm/mach-omap/omap4_generic.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/mach-omap/include/mach/xload.h b/arch/arm/mach-omap/include/mach/xload.h
index 63b68df..44d3754 100644
--- a/arch/arm/mach-omap/include/mach/xload.h
+++ b/arch/arm/mach-omap/include/mach/xload.h
@@ -6,6 +6,7 @@ enum omap_boot_src {
 	OMAP_BOOTSRC_MMC1,
 	OMAP_BOOTSRC_NAND,
 	OMAP_BOOTSRC_SPI1,
+	OMAP_BOOTSRC_USB1,
 };
 
 enum omap_boot_src omap3_bootsrc(void);
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 617d786..6562268 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -481,6 +481,8 @@ enum omap_boot_src omap4_bootsrc(void)
 		return OMAP_BOOTSRC_MMC1;
 	if (bootsrc & (1 << 3))
 		return OMAP_BOOTSRC_NAND;
+	if (bootsrc & (1<<20))
+		return OMAP_BOOTSRC_USB1;
 	return OMAP_BOOTSRC_UNKNOWN;
 }
 
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
