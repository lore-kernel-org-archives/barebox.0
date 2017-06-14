Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hn-0001y8-MS
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:36 +0200
Message-Id: <20170614072641.29942-4-s.hauer@pengutronix.de>
In-Reply-To: <20170614072641.29942-1-s.hauer@pengutronix.de>
References: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] Revert "globalvar: make nv_device static"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit f655902cfad63b9ba5cea7d0c9fc9c3632143e02.
---
 common/globalvar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 1385559fd7..9bb363f3a5 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -19,7 +19,7 @@ struct device_d global_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
-static struct device_d nv_device = {
+struct device_d nv_device = {
 	.name = "nv",
 	.id = DEVICE_ID_SINGLE,
 };
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
