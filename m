Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wehuy-0005Z8-Jw
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:32:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:31:45 +0200
Message-Id: <1398677505-15869-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1398677505-15869-1-git-send-email-s.hauer@pengutronix.de>
References: <1398677505-15869-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] of_path: Allow to specify path with phandle only
To: barebox@lists.infradead.org

Instead of just allowing to specify an OF path with additional
partname: property allow to specify a phandle to the partition
directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/of_path.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 20eb771..6a2d634 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -148,6 +148,9 @@ int of_find_path(struct device_node *node, const char *propname, char **outpath)
 
 	device_detect(op.dev);
 
+	if (list_is_singular(&op.dev->cdevs))
+		op.cdev = list_first_entry(&op.dev->cdevs, struct cdev, devices_list);
+
 	i = 1;
 
 	while (1) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
