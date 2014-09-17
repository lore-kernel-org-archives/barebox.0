Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from nasmtp01.atmel.com ([192.199.1.245]
 helo=DVREDG01.corp.atmel.com)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUCNN-0007yN-3h
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 10:22:17 +0000
From: Bo Shen <voice.shen@atmel.com>
Date: Wed, 17 Sep 2014 18:21:29 +0800
Message-ID: <1410949295-30296-4-git-send-email-voice.shen@atmel.com>
In-Reply-To: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
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
Subject: [PATCH 3/9] ARM: at91: clock: use cpu_has_pcr for pcr1 checking
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Bo Shen <voice.shen@atmel.com>
---

 arch/arm/mach-at91/clock.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-at91/clock.c b/arch/arm/mach-at91/clock.c
index 9d2a846..50450f5 100644
--- a/arch/arm/mach-at91/clock.c
+++ b/arch/arm/mach-at91/clock.c
@@ -94,6 +94,8 @@
 				|| cpu_is_at91sam9n12() \
 				|| cpu_is_sama5d3())
 
+#define cpu_has_pcr()		(cpu_is_sama5d3())
+
 static LIST_HEAD(clocks);
 
 static u32 at91_pllb_usb_init;
@@ -221,7 +223,7 @@ static void pmc_periph_mode(struct clk *clk, int is_on)
 	 * register is not enough to manage their clocks. A peripheral
 	 * control register has been introduced to solve this issue.
 	 */
-	if (cpu_is_sama5d3()) {
+	if (cpu_has_pcr()) {
 		regval |= AT91_PMC_PCR_CMD; /* write command */
 		regval |= clk->pid & AT91_PMC_PCR_PID; /* peripheral selection */
 		regval |= AT91_PMC_PCR_DIV(clk->div);
@@ -455,7 +457,7 @@ int clk_register(struct clk *clk)
 	if (clk_is_peripheral(clk)) {
 		if (!clk->parent)
 			clk->parent = &mck;
-		if (cpu_is_sama5d3())
+		if (cpu_has_pcr())
 			clk->rate_hz = DIV_ROUND_UP(clk->parent->rate_hz, 1 << clk->div);
 		clk->mode = pmc_periph_mode;
 	}
@@ -787,7 +789,7 @@ static int at91_clock_reset(void)
 			continue;
 
 		if (clk->mode == pmc_periph_mode) {
-			if (cpu_is_sama5d3()) {
+			if (cpu_has_pcr()) {
 				u32 pmc_mask = 1 << (clk->pid % 32);
 
 				if (clk->pid > 31)
@@ -805,7 +807,7 @@ static int at91_clock_reset(void)
 	}
 
 	at91_pmc_write(AT91_PMC_PCDR, pcdr);
-	if (cpu_is_sama5d3())
+	if (cpu_has_pcr())
 		at91_pmc_write(AT91_PMC_PCDR1, pcdr1);
 	at91_pmc_write(AT91_PMC_SCDR, scdr);
 
@@ -821,12 +823,12 @@ static int do_at91clk(int argc, char *argv[])
 
 	scsr = at91_pmc_read(AT91_PMC_SCSR);
 	pcsr = at91_pmc_read(AT91_PMC_PCSR);
-	if (cpu_is_sama5d3())
+	if (cpu_has_pcr())
 		pcsr1 = at91_pmc_read(AT91_PMC_PCSR1);
 	sr = at91_pmc_read(AT91_PMC_SR);
 	printf("SCSR = %8x\n", scsr);
 	printf("PCSR = %8x\n", pcsr);
-	if (cpu_is_sama5d3())
+	if (cpu_has_pcr())
 		printf("PCSR1 = %8x\n", pcsr1);
 	printf("MOR  = %8x\n", at91_pmc_read(AT91_CKGR_MOR));
 	printf("MCFR = %8x\n", at91_pmc_read(AT91_CKGR_MCFR));
@@ -852,7 +854,7 @@ static int do_at91clk(int argc, char *argv[])
 			state = (scsr & clk->pmc_mask) ? "on" : "off";
 			mode = "sys";
 		} else if (clk->mode == pmc_periph_mode) {
-			if (cpu_is_sama5d3()) {
+			if (cpu_has_pcr()) {
 				u32 pmc_mask = 1 << (clk->pid % 32);
 
 				if (clk->pid > 31)
-- 
2.1.0.24.g4109c28


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
