Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHpG-0000Kd-JV
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:09:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 09:09:39 +0200
Message-Id: <1364972980-32527-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
References: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: tx53: use early lowlevel function
To: barebox@lists.infradead.org

The tx53 calls imx53_init_lowlevel from early code, so use
imx53_init_lowlevel_early instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx53/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/karo-tx53/lowlevel.c b/arch/arm/boards/karo-tx53/lowlevel.c
index 32d2c8f..f47f260 100644
--- a/arch/arm/boards/karo-tx53/lowlevel.c
+++ b/arch/arm/boards/karo-tx53/lowlevel.c
@@ -14,7 +14,7 @@ void __naked barebox_arm_reset_vector(void)
 	 * so do the PLL setup here.
 	 */
 	if (IS_ENABLED(CONFIG_TX53_REV_XX30))
-		imx53_init_lowlevel(800);
+		imx53_init_lowlevel_early(800);
 
 	imx53_barebox_entry(0);
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
