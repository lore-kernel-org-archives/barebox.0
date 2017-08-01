Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcbZQ-0004Qo-BE
 for barebox@lists.infradead.org; Tue, 01 Aug 2017 18:07:06 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue,  1 Aug 2017 20:06:19 +0200
Message-Id: <20170801180621.25325-2-linux@rempel-privat.de>
In-Reply-To: <20170801180621.25325-1-linux@rempel-privat.de>
References: <20170801180621.25325-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 1/3] MIPS: ath79: provide CONFIG_SOC_QCA_AR9331 option
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

QCA AR9331 and QCA AR9344 have some similar part but different uart engines.
We need this flag to provide common debug_ll support.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/mach-ath79/Kconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 9b8e3946e..f2eae2532 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -4,17 +4,22 @@ config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
 
+config SOC_QCA_AR9331
+	bool
+
 choice
 	prompt "Board type"
 
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
+	select SOC_QCA_AR9331
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
 
 config BOARD_BLACK_SWIFT
 	bool "Black Swift"
+	select SOC_QCA_AR9331
 	select HAVE_PBL_IMAGE
 	select HAVE_IMAGE_COMPRESSION
 	select HAS_NMON
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
