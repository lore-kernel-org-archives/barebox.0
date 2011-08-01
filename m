Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqK-0003gP-FE
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:41 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id ECD24FFA5BC
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:34 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:36 +0200
Message-Id: <1312205383-13266-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 2/9] ARM cache l2x0: depend on MMU
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

l2x0 cache support does not work without MMU, so depend
on it in Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 8ee7d6c..5337c46 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -87,5 +87,5 @@ config ARCH_HAS_L2X0
 
 config CACHE_L2X0
 	bool "Enable L2x0 PrimeCell"
-	depends on ARCH_HAS_L2X0
+	depends on MMU && ARCH_HAS_L2X0
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
