Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYNpR-0005MK-B1
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 21:15:31 +0000
Received: from mail95.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D2024DC29C3
 for <barebox@lists.infradead.org>; Tue, 13 Nov 2012 22:22:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Nov 2012 22:13:16 +0100
Message-Id: <1352841198-22595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] at91sam9: add detection of low power sdram
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/include/mach/at91sam9_sdramc.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index 1ab61e9..971a772 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -110,6 +110,11 @@ static inline u32 at91_get_sdram_size(void)
 
 	return size;
 }
+
+static inline bool at91_is_low_power_sdram(void)
+{
+	return at91_sys_read(AT91_SDRAMC_MDR) & AT91_SDRAMC_MD_LOW_POWER_SDRAM;
+}
 #endif
 
 #endif
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
