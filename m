Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZf-0008QS-Pg
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:38 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 20F79E0008
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:31 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:08 +0200
Message-Id: <20200330143915.663705-1-ahmad@a3f.at>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/8] ARM: stm32mp: init: don't cast signed error to unsigned
To: barebox@lists.infradead.org

bsec_read_field returns a negative value on error, pass it along
signed. This doesn't matter now, because we ignore the error code, but
it's the correct thing to do.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-stm32mp/init.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index 7bad989a609b..6280d94da69f 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -155,7 +155,7 @@ static inline u32 read_idc(void)
 }
 
 /* Get Device Part Number (RPN) from OTP */
-static u32 get_cpu_rpn(u32 *rpn)
+static int get_cpu_rpn(u32 *rpn)
 {
 	int ret = bsec_read_field(BSEC_OTP_RPN, rpn);
 	if (ret)
@@ -170,7 +170,7 @@ static u32 get_cpu_revision(void)
 	return (read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
 }
 
-static u32 get_cpu_type(u32 *type)
+static int get_cpu_type(u32 *type)
 {
 	u32 id;
 	int ret = get_cpu_rpn(type);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
