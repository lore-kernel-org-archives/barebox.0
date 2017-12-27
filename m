Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUJ6O-0007Ox-78
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 21:19:06 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 27 Dec 2017 22:18:38 +0100
Message-Id: <20171227211839.2359-4-sam@ravnborg.org>
In-Reply-To: <20171227211743.GA1084@ravnborg.org>
References: <20171227211743.GA1084@ravnborg.org>
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
Subject: [PATCH 4/5] arm: at91: enable CPU specific init with OF
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This drops the panic in the case where no
at91_boot_soc.init() is specified, as this
is with DT support added now optional.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/mach-at91/generic.h | 4 ++++
 arch/arm/mach-at91/setup.c   | 6 ------
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-at91/generic.h b/arch/arm/mach-at91/generic.h
index a47bcb2c5..c99dce533 100644
--- a/arch/arm/mach-at91/generic.h
+++ b/arch/arm/mach-at91/generic.h
@@ -9,7 +9,11 @@
  */
 
  /* Clocks */
+#ifdef CONFIG_COMMON_CLK_OF_PROVIDER
+static inline int __init at91_clock_init(void) { return 0; }
+#else
 extern int __init at91_clock_init(void);
+#endif
 
 static inline struct device_d *at91_add_rm9200_gpio(int id, resource_size_t start)
 {
diff --git a/arch/arm/mach-at91/setup.c b/arch/arm/mach-at91/setup.c
index 8f32af043..c8c6e2ba4 100644
--- a/arch/arm/mach-at91/setup.c
+++ b/arch/arm/mach-at91/setup.c
@@ -283,12 +283,6 @@ static int at91_detect(void)
 	pr_info("AT91: Detected soc subtype: %s\n",
 		at91_get_soc_subtype(&at91_soc_initdata));
 
-	if (IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER))
-		return 0;
-
-	if (!at91_soc_is_enabled())
-		panic("AT91: Soc not enabled");
-
 	/* Init clock subsystem */
 	at91_clock_init();
 
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
