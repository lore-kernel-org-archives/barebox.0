Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am1lp0013.outbound.protection.outlook.com
 ([213.199.154.13] helo=emea01-am1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W3LMI-00063Z-PF
 for barebox@lists.infradead.org; Wed, 15 Jan 2014 07:57:56 +0000
From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
Date: Wed, 15 Jan 2014 08:57:18 +0100
Message-ID: <1389772638-14689-1-git-send-email-mathieu.anquetin@groupe-cahors.com>
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
Subject: [PATCH] ARM: SAMA5D3: Fix PLL registry mapping
To: barebox@lists.infradead.org

The multiplier field inside the PLLA configuration register of Atmel
SAMA5D3 MPU is only 7 bits long

Signed-off-by: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
---
 arch/arm/mach-at91/clock.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index a10d7f6..4ebf521 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -483,7 +483,7 @@ static u32 at91_pll_rate(struct clk *pll, u32 freq, u32 reg)
 
 	div = reg & 0xff;
 	if (cpu_is_sama5d3())
-		mul = (reg >> 18) & 0x7ff;
+		mul = (reg >> 18) & 0x7f;
 	else
 		mul = (reg >> 16) & 0x7ff;
 	if (div && mul) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
