Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqXUG-00039q-S9
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 21:35:53 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id DDC05FFB2BE
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 23:35:57 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  8 Aug 2011 23:17:14 +0200
Message-Id: <1312838236-646-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312838236-646-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] at91sam9261ek: fix missing ecc type
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 69111a0..73b411a 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -43,6 +43,7 @@ static struct atmel_nand_data nand_pdata = {
 	.ale		= 22,
 	.cle		= 21,
 /*	.det_pin	= ... not connected */
+	.ecc_mode	= NAND_ECC_SOFT,
 	.rdy_pin	= AT91_PIN_PC15,
 	.enable_pin	= AT91_PIN_PC14,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
