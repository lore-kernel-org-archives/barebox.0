Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b88Bj-0003bD-NS
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 15:36:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b88BO-00069N-7d
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 17:35:46 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed,  1 Jun 2016 17:35:46 +0200
Message-Id: <1464795346-1004-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] state: select CRC32
To: barebox@lists.infradead.org

The raw state backend uses crc32 unconditionally, so make
sure it's present.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index a8c1855aab17..c321090de0b3 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -818,6 +818,7 @@ config POLLER
 
 config STATE
 	bool "generic state infrastructure"
+	select CRC32
 	select ENVIRONMENT_VARIABLES
 	select OFTREE
 	select PARAMETER
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
