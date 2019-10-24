Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNWDt-0004yK-Fo
 for barebox@lists.infradead.org; Thu, 24 Oct 2019 06:03:50 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 24 Oct 2019 08:03:42 +0200
Message-Id: <20191024060342.15541-2-o.rempel@pengutronix.de>
In-Reply-To: <20191024060342.15541-1-o.rempel@pengutronix.de>
References: <20191024060342.15541-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v6 2/2] doc: watchdog: add note about danger of autoping
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/watchdog.rst | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/user/watchdog.rst b/Documentation/user/watchdog.rst
index 26e347d5f6..02bd576a89 100644
--- a/Documentation/user/watchdog.rst
+++ b/Documentation/user/watchdog.rst
@@ -29,6 +29,12 @@ enabled by default. To start polling from command line run:
 
   wdog0.autoping=1
 
+**NOTE** Using this feature might have the effect that the watchdog is
+effectively disabled. In case barebox is stuck in a loop that includes feeding
+the watchdog, then the watchdog will never trigger. Only use this feature
+during development or when a bad watchdog design (Short watchdog timeout
+enabled as boot default) doesn't give you another choice.
+
 The poller interval is not configurable, but fixed at 500ms and the watchdog
 timeout is configured by default to the maximum of the supported values by
 hardware. To change the timeout used by the poller, run:
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
