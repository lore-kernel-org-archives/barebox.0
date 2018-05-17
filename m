Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJQSq-000597-P3
 for barebox@lists.infradead.org; Thu, 17 May 2018 21:29:34 +0000
Received: by mail-pf0-x244.google.com with SMTP id c10-v6so2685375pfi.12
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 14:29:22 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 14:29:14 -0700
Message-Id: <20180517212917.3628-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180517212917.3628-1-andrew.smirnov@gmail.com>
References: <20180517212917.3628-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 1/4] of: Make of_property_get_value() public
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make of_property_get_value() public, so it can be used in other part
of the system.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/base.c | 5 -----
 include/of.h      | 6 ++++++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4bcc11364..fc01a99ef 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -129,11 +129,6 @@ struct property *of_find_property(const struct device_node *np,
 }
 EXPORT_SYMBOL(of_find_property);
 
-static const void *of_property_get_value(struct property *pp)
-{
-	return pp->value ? pp->value : pp->value_const;
-}
-
 static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 			 int id, const char *stem, int stem_len)
 {
diff --git a/include/of.h b/include/of.h
index fec51bb94..7fc4b7791 100644
--- a/include/of.h
+++ b/include/of.h
@@ -94,6 +94,12 @@ static inline void of_write_number(void *__cell, u64 val, int size)
 	}
 }
 
+static inline const void *of_property_get_value(struct property *pp)
+{
+	return pp->value ? pp->value : pp->value_const;
+}
+
+
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
