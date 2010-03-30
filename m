Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NwZHg-0001S9-55
	for barebox@lists.infradead.org; Tue, 30 Mar 2010 11:07:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Mar 2010 13:06:55 +0200
Message-Id: <1269947215-18214-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
References: <1269947215-18214-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] netx eth driver: remove local definition of ARRAY_SIZE
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/netx_eth.c |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index e535f18..673007a 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -19,8 +19,6 @@
 #define MAC_TRAFFIC_CLASS_ARRANGEMENT_MASK (0xf<<MAC_TRAFFIC_CLASS_ARRANGEMENT_SHIFT)
 #define MAC_TRAFFIC_CLASS_ARRANGEMENT(x) (((x)<<MAC_TRAFFIC_CLASS_ARRANGEMENT_SHIFT) & MAC_TRAFFIC_CLASS_ARRANGEMENT_MASK)
 
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
-
 #define FIFO_PTR_FRAMELEN_SHIFT 0
 #define FIFO_PTR_FRAMELEN_MASK  (0x7ff << 0)
 #define FIFO_PTR_FRAMELEN(len)  (((len) << 0) & FIFO_PTR_FRAMELEN_MASK)
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
