Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzF-0006RD-2w
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-Ig
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:50 +0100
Message-Id: <20191129151505.23946-25-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 24/39] input: select POLLER
To: barebox@lists.infradead.org

CONFIG_INPUT needs CONFIG_POLLER, so everything that selects INPUT
needs to also select POLLER.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/input/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index be061683fb0a..e40032d91b2f 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -66,6 +66,7 @@ config KEYBOARD_USB
 
 config INPUT_SPECIALKEYS
 	bool "Special keys handler"
+	select POLLER
 	select INPUT
 	help
 	  Say Y here to handle key events like KEY_RESTART and KEY_POWER.
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
