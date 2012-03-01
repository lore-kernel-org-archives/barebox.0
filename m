Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S36Pf-0005vY-Gx
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 13:51:20 +0000
From: Christian Hemp <c.hemp@phytec.de>
Date: Thu, 1 Mar 2012 14:50:13 +0100
Message-Id: <1330609813-28879-2-git-send-email-c.hemp@phytec.de>
In-Reply-To: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
References: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH 2/2] pcaam1: Change the machine id/name to follow the phyCARD
 naming convention
To: barebox@lists.infradead.org

Change the machine id/name to follow the phyCARD naming convention.
This patch can be dropped if the phyCARD-A-M1 is updated in the official
machine registry.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/tools/mach-types |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/tools/mach-types b/arch/arm/tools/mach-types
index ff97af4..4c25d56 100644
--- a/arch/arm/tools/mach-types
+++ b/arch/arm/tools/mach-types
@@ -2573,7 +2573,7 @@ nautel_am35xx		MACH_NAUTEL_LPC3240	NAUTEL_LPC3240		2591
 glacier			MACH_GLACIER		GLACIER			2592
 phrazer_bulldog		MACH_PHRAZER_BULLDOG	PHRAZER_BULLDOG		2593
 omap3_bulldog		MACH_OMAP3_BULLDOG	OMAP3_BULLDOG		2594
-pca101			MACH_PCA101		PCA101			2595
+pcaam1			MACH_PCAAM1		PCAAM1			2595
 buzzc			MACH_BUZZC		BUZZC			2596
 sasie2			MACH_SASIE2		SASIE2			2597
 smartmeter_dl		MACH_SMARTMETER_DL	SMARTMETER_DL		2599
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
