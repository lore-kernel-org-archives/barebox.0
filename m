Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d047A-0005Ld-VD
 for barebox@lists.infradead.org; Mon, 17 Apr 2017 10:42:38 +0000
Received: by mail-lf0-x244.google.com with SMTP id 75so15535496lfs.3
 for <barebox@lists.infradead.org>; Mon, 17 Apr 2017 03:42:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Apr 2017 13:42:09 +0300
Message-Id: <20170417104210.8196-2-antonynpavlov@gmail.com>
In-Reply-To: <20170417104210.8196-1-antonynpavlov@gmail.com>
References: <20170417104210.8196-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] of: base: exclude memcpy-like code from
 of_property_write_u8_array()
To: barebox@lists.infradead.org

The of_new_property() function already has functionality
to copy data into of_property so we can make
of_property_write_u8_array() simpler.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/base.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6632f4d9dd..1161ce9793 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1090,19 +1090,14 @@ int of_property_write_u8_array(struct device_node *np,
 			       size_t sz)
 {
 	struct property *prop = of_find_property(np, propname, NULL);
-	u8 *val;
 
 	if (prop)
 		of_delete_property(prop);
 
-	prop = of_new_property(np, propname, NULL, sizeof(*val) * sz);
+	prop = of_new_property(np, propname, values, sizeof(*values) * sz);
 	if (!prop)
 		return -ENOMEM;
 
-	val = prop->value;
-	while (sz--)
-		*val++ = *values++;
-
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
