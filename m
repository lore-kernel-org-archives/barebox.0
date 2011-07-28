Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLUB-0007fm-Oo
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:58:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:58:16 +0200
Message-Id: <1311839900-10389-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] net: remove unused fields from struct eth_device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/net.h |    2 --
 1 files changed, 0 insertions(+), 2 deletions(-)

diff --git a/include/net.h b/include/net.h
index 31bf6a2..7ac1c33 100644
--- a/include/net.h
+++ b/include/net.h
@@ -28,8 +28,6 @@
 struct device_d;
 
 struct eth_device {
-	int iobase;
-	int state;
 	int active;
 
 	int  (*init) (struct eth_device*);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
