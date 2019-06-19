Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY9i-0008EH-Fa
 for barebox@lists.infradead.org; Wed, 19 Jun 2019 10:49:31 +0000
Received: by mail-lj1-x244.google.com with SMTP id v18so2770850ljh.6
 for <barebox@lists.infradead.org>; Wed, 19 Jun 2019 03:49:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 19 Jun 2019 13:49:16 +0300
Message-Id: <20190619104916.4128-1-antonynpavlov@gmail.com>
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
Subject: [RFC] sandbox: prevent segfault in tap_alloc()
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Tap network interface initialization in sandbox
barebox leads to segfault under Debian Buster/Sid.

The problem is that strcpy(dev, ifr.ifr_name) inside
tap_alloc() tries to alter read-only data passed
by tap_probe() and barebox receives SIGSEGV.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/tap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/tap.c b/drivers/net/tap.c
index 1fbfa085b1..d7e32f4875 100644
--- a/drivers/net/tap.c
+++ b/drivers/net/tap.c
@@ -14,7 +14,7 @@
 
 struct tap_priv {
 	int fd;
-	char *name;
+	char name[128];
 };
 
 static int tap_eth_send(struct eth_device *edev, void *packet, int length)
@@ -65,7 +65,7 @@ static int tap_probe(struct device_d *dev)
 	int ret = 0;
 
 	priv = xzalloc(sizeof(struct tap_priv));
-	priv->name = "barebox";
+	strncpy(priv->name, "barebox", sizeof(priv->name));
 
 	priv->fd = tap_alloc(priv->name);
 	if (priv->fd < 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
