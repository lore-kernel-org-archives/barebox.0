Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnitu-0007Xg-8Q
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 09:37:55 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Tue, 14 Mar 2017 10:37:29 +0100
Message-Id: <20170314093729.27803-1-m.olbrich@pengutronix.de>
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
Subject: [PATCH] efi: clocksoure: make sure the meassured frequency is valid
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Some EFI implementations have a even slower tick rate and the meassured
frequency may be zero.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/clocksource/efi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 89906c452eb7..fb5b7ca63de9 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -71,6 +71,10 @@ static int efi_cs_init(struct clocksource *cs)
 		uint64_t nb_100ns;
 
 		freq = ticks_freq_x86();
+		if (freq == 0) {
+			BS->close_event(efi_cs_evt);
+			return -ENODEV;
+		}
 		nb_100ns = 10 * 1000 * 1000 / freq;
 		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
 		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
