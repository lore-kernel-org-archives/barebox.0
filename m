Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q6jsw-0002T2-VD
	for barebox@lists.infradead.org; Mon, 04 Apr 2011 13:32:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Apr 2011 15:31:54 +0200
Message-Id: <1301923918-28746-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
References: <1301923918-28746-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] net smc911x: Add LAN9221 support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/smc911x.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index e5c0e7e..dc5477b 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -365,6 +365,7 @@
 #define CHIP_9216	0x116a
 #define CHIP_9217	0x117a
 #define CHIP_9218	0x118a
+#define CHIP_9221	0x9221
 
 struct smc911x_priv {
 	struct mii_device miidev;
@@ -385,6 +386,7 @@ static const struct chip_id chip_ids[] =  {
 	{ CHIP_9216, "LAN9216" },
 	{ CHIP_9217, "LAN9217" },
 	{ CHIP_9218, "LAN9218" },
+	{ CHIP_9221, "LAN9221" },
 	{ 0, NULL },
 };
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
