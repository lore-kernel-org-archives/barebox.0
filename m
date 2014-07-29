Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC4Np-0001cy-A1
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 10:11:53 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Tue, 29 Jul 2014 18:10:53 +0800
Message-ID: <1406628653-27214-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH] ARM: at91: clock: fix the pllb checking
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

On at91sam9n12 soc, it has pllb, while on sama5d3 soc,
it doesn't has pllb.

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---
 arch/arm/mach-at91/clock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 59c4d11..9d2a846 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -65,7 +65,7 @@
 #define cpu_has_pllb()		(!(cpu_is_at91sam9rl() \
 				|| cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-				|| cpu_is_at91sam9n12()))
+				|| cpu_is_sama5d3()))
 
 #define cpu_has_upll()		(cpu_is_at91sam9g45() \
 				|| cpu_is_at91sam9x5() \
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
