Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGAOE-0004c8-Gl
 for barebox@lists.infradead.org; Mon, 04 Jan 2016 19:02:00 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Mon, 4 Jan 2016 19:01:21 +0000
Message-ID: <1451934086.26955.274.camel@rtred1test09.kymeta.local>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
In-Reply-To: <20160104083257.GA13058@pengutronix.de>
Content-Language: en-US
Content-ID: <26D7C76FC2F9D94EB3EB6E9AA9F8DD3C@kymetacorp.com>
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
Subject: [PATCH 1/2] OF: fix typo in for_each_compatible_node()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Missing closing parenthesis.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 include/of.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 18c92d7..75cc3c1 100644
--- a/include/of.h
+++ b/include/of.h
@@ -647,7 +647,7 @@ static inline struct device_node *of_find_node_by_path_or_alias(
 	     dn = of_find_compatible_node(dn, type, compatible))
 /* Iterate over compatible nodes in default device tree */
 #define for_each_compatible_node(dn, type, compatible) \
-        for_each_compatible_node_from(dn, NULL, type, compatible
+        for_each_compatible_node_from(dn, NULL, type, compatible)
 static inline struct device_node *of_find_matching_node(
 	struct device_node *from,
 	const struct of_device_id *matches)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
