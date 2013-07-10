Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uws0d-0000Ki-3Z
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:52:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:52:01 +0200
Message-Id: <1373453528-3723-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/9] of: export of_default_bus_match_table
To: barebox@lists.infradead.org

For code which wants to call of_platform_populate.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/of.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/of.h b/include/of.h
index ebe8e39..0d8f6b3 100644
--- a/include/of.h
+++ b/include/of.h
@@ -679,4 +679,6 @@ static inline int of_property_write_u64(struct device_node *np,
 	return of_property_write_u64_array(np, propname, &value, 1);
 }
 
+extern const struct of_device_id of_default_bus_match_table[];
+
 #endif /* __OF_H */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
