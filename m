Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1zyW-0006UX-En
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 13:51:17 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EF503104ED68
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 15:01:20 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 14:49:58 +0100
Message-Id: <1359899398-3867-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359895702-30597-1-git-send-email-plagnioj@jcrosoft.com>
References: <1359895702-30597-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] at91sam9_ddrsdr: fix register on mdr read and sdram
 detection for ddr size
To: barebox@lists.infradead.org

it's currently working by luck

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v2:
	2 bug together make it work

Best Regards,
J.
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
index 2614f97..88796a6 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h
@@ -146,7 +146,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	bool is_sdram;
 
 	cr = __raw_readl(base + AT91_DDRSDRC_CR);
-	mdr = __raw_readl(base + AT91_DDRSDRC_CR);
+	mdr = __raw_readl(base + AT91_DDRSDRC_MDR);
 
 	is_sdram = (mdr & AT91_DDRSDRC_MD) <= AT91_DDRSDRC_MD_LOW_POWER_SDR;
 
@@ -158,7 +158,7 @@ static inline u32 at91_get_ddram_size(void * __iomem base, bool is_nb)
 	size = 1;
 	/* COL */
 	size += (cr & AT91_DDRSDRC_NC) + 8;
-	if (is_sdram)
+	if (!is_sdram)
 		size ++;
 	/* ROW */
 	size += ((cr & AT91_DDRSDRC_NR) >> 2) + 11;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
