Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsRdh-0005eW-TR
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 04:50:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 21 Jul 2012 08:50:07 +0400
Message-Id: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] mc13xxx: Added dummy definitions if CONFIG_MFD_MC13XXX is
 not set
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    2 --
 include/mfd/mc13xxx.h           |   23 ++++++++++++++++++++++-
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index badc978..ffd8d87 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -125,7 +125,6 @@ static inline uint32_t get_pll_spctl10(void)
  */
 static int pcm038_power_init(void)
 {
-#ifdef CONFIG_MFD_MC13XXX
 	uint32_t spctl0 = get_pll_spctl10();
 	struct mc13xxx *mc13xxx = mc13xxx_get();
 
@@ -159,7 +158,6 @@ static int pcm038_power_init(void)
 			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
 		}
 	}
-#endif
 
 	/* clock gating enable */
 	GPCR = 0x00050f08;
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 2880307..632c9fb 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -163,10 +163,31 @@ struct mc13xxx {
 	int			revision;
 };
 
+#ifdef CONFIG_MFD_MC13XXX
 extern struct mc13xxx *mc13xxx_get(void);
-
 extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
 extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
 extern int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val);
+#else
+static inline struct mc13xxx *mc13xxx_get(void)
+{
+	return NULL;
+}
+
+static inline int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val)
+{
+	return -ENODEV;
+}
+
+static inline int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val)
+{
+	return -ENODEV;
+}
+
+static inline int mc13xxx_set_bits(struct mc13xxx *mc13xxx, u8 reg, u32 mask, u32 val)
+{
+	return -ENODEV;
+}
+#endif
 
 #endif /* __MFD_MC13XXX_H */
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
