Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUSLH-0007OO-J0
 for barebox@lists.infradead.org; Tue, 12 Nov 2019 09:20:10 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 12 Nov 2019 10:19:48 +0100
Message-Id: <20191112091956.26628-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191112091956.26628-1-a.fatoum@pengutronix.de>
References: <20191112091956.26628-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/10] ARM: stm32mp157c-dk2: add optional DEBUG_LL print to
 entry point
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The TF-A sets up pin muxing and clocking for the UART4 which is the UART
suggested by ST for use as debug console.

Eventually, we might want to do this ourselves to be sure, but for now
lets just stick in a putc_ll('>'), so user selecting DEBUG_LL can see
that barebox started.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
index 566ace79c956..2106eaadc93a 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -7,12 +7,21 @@
 
 extern char __dtb_z_stm32mp157c_dk2_start[];
 
+static void setup_uart(void)
+{
+	/* first stage has set up the UART, so nothing to do here */
+	putc_ll('>');
+}
+
 ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 {
 	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	fdt = __dtb_z_stm32mp157c_dk2_start + get_runtime_offset();
 
 	barebox_arm_entry(STM32_DDR_BASE, SZ_512M, fdt);
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
