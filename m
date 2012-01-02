Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiOA-0005Tb-PF
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:57:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:57:13 +0100
Message-Id: <1325512634-25797-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
References: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] net dm9k: Fix compiler warning
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/dm9k.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/drivers/net/dm9k.c b/drivers/net/dm9k.c
index 40a7c67..983edd4 100644
--- a/drivers/net/dm9k.c
+++ b/drivers/net/dm9k.c
@@ -299,6 +299,8 @@ static unsigned dm9k_read_packet_status(int b_width, void __iomem *port, unsigne
 	case IORESOURCE_MEM_32BIT:
 		rc = dm9k_read_packet_status_32(port, status);
 		break;
+	default:
+		rc = -EINVAL;
 	}
 
 	return rc;
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
