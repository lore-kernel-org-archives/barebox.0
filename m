Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004q1-Sc
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:14 +0400
Message-Id: <1342711817-866-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342711817-866-1-git-send-email-shc_work@mail.ru>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/6] mc13xxx: Added dummy definition for mc13xxx_get() if
 CONFIG_MFD_MC13XXX is not set
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    2 --
 include/mfd/mc13xxx.h           |    4 ++++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index fa82b02..875081b 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -124,7 +124,6 @@ static inline uint32_t get_pll_spctl10(void)
  */
 static int pcm038_power_init(void)
 {
-#ifdef CONFIG_MFD_MC13XXX
 	uint32_t spctl0 = get_pll_spctl10();
 	struct mc13xxx *mc13xxx = mc13xxx_get();
 
@@ -158,7 +157,6 @@ static int pcm038_power_init(void)
 			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
 		}
 	}
-#endif
 
 	/* clock gating enable */
 	GPCR = 0x00050f08;
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 2880307..51cfdd9 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -163,7 +163,11 @@ struct mc13xxx {
 	int			revision;
 };
 
+#ifdef CONFIG_MFD_MC13XXX
 extern struct mc13xxx *mc13xxx_get(void);
+#else
+#define mc13xxx_get()		(NULL)
+#endif
 
 extern int mc13xxx_reg_read(struct mc13xxx *mc13xxx, u8 reg, u32 *val);
 extern int mc13xxx_reg_write(struct mc13xxx *mc13xxx, u8 reg, u32 val);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
