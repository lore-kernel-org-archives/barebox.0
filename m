Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cK-0h
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:37 +0100
Message-Id: <1361909936-2665-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/29] of: Add missing prototype for of_device_is_compatible
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/of.h |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/of.h b/include/of.h
index 82475c3..c324c74 100644
--- a/include/of.h
+++ b/include/of.h
@@ -107,6 +107,9 @@ int of_get_named_gpio(struct device_node *np,
 struct device_node *of_find_node_by_phandle(phandle phandle);
 void of_print_property(const void *data, int len);
 
+int of_device_is_compatible(const struct device_node *device,
+		const char *compat);
+
 int of_machine_is_compatible(const char *compat);
 
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
