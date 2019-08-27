Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2cWq-0000LY-MZ
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 14:33:04 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id C0AC0E0008
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 14:32:46 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 16:32:35 +0200
Message-Id: <20190827143239.15682-3-ahmad@a3f.at>
In-Reply-To: <20190827143239.15682-1-ahmad@a3f.at>
References: <20190827143239.15682-1-ahmad@a3f.at>
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
Subject: [PATCH 2/6] sandbox: remove unused ARCH_LINUX Kconfig symbol
To: barebox@lists.infradead.org

It's not referenced anywhere anymore, so drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 5227cb624f2b..d153846efa0f 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -12,6 +12,3 @@ config LINUX
 	bool
 	default y
 	select GENERIC_FIND_NEXT_BIT
-
-config ARCH_LINUX
-	bool
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
