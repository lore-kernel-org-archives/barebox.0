Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21EZ-0000ZO-Pw
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:12:01 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 8F797104EC65
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:22:01 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:10:19 +0100
Message-Id: <1359904236-11622-19-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203150333.GE18068@game.jcrosoft.org>
 <1359904236-11622-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 19/36] ARM AT91: switch at91rm9200 board to barebox_arm_entry
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/Kconfig                    |    1 +
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c |    2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 4e687c4..f54b6dc 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -90,6 +90,7 @@ config SOC_AT91RM9200
 	select HAVE_AT91_DBGU0
 	select HAS_AT91_ETHER
 	select MACH_HAS_LOWLEVEL_INIT
+	select MACH_DO_LOWLEVEL_INIT
 
 config SOC_AT91SAM9260
 	bool
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index 4add3d9..221c05d 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -129,5 +129,5 @@ void __naked __bare_init reset(void)
 	set_cr(r);
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91rm9200_get_sdram_size(), 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
