Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yn3Kz-0005fO-JE
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 11:06:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 13:05:36 +0200
Message-Id: <1430219137-8294-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
References: <1430219137-8294-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] eth: halt active ethernet device on unregister
To: Barebox List <barebox@lists.infradead.org>

When an active ethernet device is unregistered it should
be halted to quiesce the device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 net/eth.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/net/eth.c b/net/eth.c
index 89bddba..0c1ff73 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -385,6 +385,9 @@ void eth_unregister(struct eth_device *edev)
 	if (edev == eth_current)
 		eth_current = NULL;
 
+	if (edev->active)
+		edev->halt(edev);
+
 	if (IS_ENABLED(CONFIG_OFDEVICE))
 		free(edev->nodepath);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
