Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptze2-000861-C8
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 09:44:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Feb 2011 10:43:55 +0100
Message-Id: <1298886235-1769-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
References: <1298886235-1769-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM tx28stk5: limit mmc max frequency to 25MHz
To: barebox@lists.infradead.org

Higher frequencies do not seem to work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/karo-tx28/tx28-stk5.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/boards/karo-tx28/tx28-stk5.c b/arch/arm/boards/karo-tx28/tx28-stk5.c
index a3f4a28..81cb80c 100644
--- a/arch/arm/boards/karo-tx28/tx28-stk5.c
+++ b/arch/arm/boards/karo-tx28/tx28-stk5.c
@@ -29,9 +29,10 @@
 #include <mach/fb.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
-	.caps = MMC_MODE_4BIT | MMC_MODE_HS | MMC_MODE_HS_52MHz,
+	.caps = MMC_MODE_4BIT,
 	.voltages = MMC_VDD_32_33 | MMC_VDD_33_34,	/* fixed to 3.3 V */
 	.f_min = 400 * 1000,
+	.f_max = 25000000,
 };
 
 static struct device_d mci_socket = {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
