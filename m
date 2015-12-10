Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6y8M-00079c-QB
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:07:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 10 Dec 2015 11:07:26 +0100
Message-Id: <1449742046-20906-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
References: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: Omap3: Remove useless inline
To: Barebox List <barebox@lists.infradead.org>

Silences gcc5 warning:

In file included from arch/arm/mach-omap/gpmc.c:31:0:
arch/arm/mach-omap/include/mach/sys_info.h:93:83:
warning: inline function 'get_sysboot_value' declared but never defined

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/sys_info.h | 2 +-
 arch/arm/mach-omap/omap3_generic.c         | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/sys_info.h b/arch/arm/mach-omap/include/mach/sys_info.h
index fbac9b5..e36f49d 100644
--- a/arch/arm/mach-omap/include/mach/sys_info.h
+++ b/arch/arm/mach-omap/include/mach/sys_info.h
@@ -90,7 +90,7 @@ u32 get_cpu_type(void);
 u32 get_cpu_rev(void);
 u32 get_sdr_cs_size(u32 offset);
 u32 get_sdr_cs1_base(void);
-inline u32 get_sysboot_value(void);
+u32 get_sysboot_value(void);
 u32 get_boot_type(void);
 u32 get_device_type(void);
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 5c29fea..5327bad 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -200,7 +200,7 @@ EXPORT_SYMBOL(get_sdr_cs1_base);
  *
  * @return - Return the value of SYSBOOT.
  */
-inline u32 get_sysboot_value(void)
+u32 get_sysboot_value(void)
 {
 	return (0x0000003F & readl(OMAP3_CONTROL_REG(STATUS)));
 }
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
