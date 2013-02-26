Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzV-0005YD-Jh
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:52 +0100
Message-Id: <1361909936-2665-26-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 25/29] of: Add missing prototype for size/address counting
 functions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/of.h |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/of.h b/include/of.h
index b2f9ca7..21e5687 100644
--- a/include/of.h
+++ b/include/of.h
@@ -53,6 +53,9 @@ struct driver_d;
 
 int of_match(struct device_d *dev, struct driver_d *drv);
 
+int of_n_addr_cells(struct device_node *np);
+int of_n_size_cells(struct device_node *np);
+
 struct property *of_find_property(const struct device_node *node, const char *name);
 
 struct device_node *of_find_node_by_path(struct device_node *root, const char *path);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
