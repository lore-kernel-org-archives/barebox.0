Delivery-date: Tue, 05 Dec 2023 12:37:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkR-004747-0w
	for lore@lore.pengutronix.de;
	Tue, 05 Dec 2023 12:37:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rATkR-0006GX-9t
	for lore@pengutronix.de; Tue, 05 Dec 2023 12:37:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WwnpItGg1EgDkpu6NOhBPriWaeFhVve6O73XHysiSxo=; b=oztjwMfrFTTbidmbdLhVdOy761
	tCoU7czf8GTQrQYbIwWZQxieSaCcb4bCxVHsw43bScrfqmk51R/aUGUWP9hFxcHwNnyk4iWW3BzB5
	q9QAPthWy0KsKgfF2HT7ClRrv6unNixYIyTnltAQQ3HGCqxoZIBUm8CDM1vw09wS0RBa/l1WSPP1v
	XG1dW831YdXNA3pR/4ETkjyAeeUUeMVBItDvICnmFGfvuVboiL8s2TLCtDWiFlO7c0q6sBcZisY5Q
	qTl3+2MnyEbXuW5pY+T+2zQrHE+TkWo9jVA0JOvVJV0RMTHbQNRl+RjN4bT0cwT7ikeLCppF3H+vS
	BppmLyLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rATj2-0079Hg-0Z;
	Tue, 05 Dec 2023 11:36:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rATix-0079GF-1h
	for barebox@lists.infradead.org;
	Tue, 05 Dec 2023 11:36:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-0005w9-D7; Tue, 05 Dec 2023 12:36:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiv-00DjOS-0h; Tue, 05 Dec 2023 12:36:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rATiu-00H1fd-2z;
	Tue, 05 Dec 2023 12:36:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  5 Dec 2023 12:36:16 +0100
Message-Id: <20231205113618.3966168-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
References: <20231205113618.3966168-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_033623_561168_DEF56A6F 
X-CRM114-Status: GOOD (  13.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] of: define macro for maximum of_device_is_compatible return value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_device_is_compatible() will return zero on mismatch and a positive
value up to and including (INT_MAX / 2) on match. Knowledge of the upper
bound can be useful to callers, because if inside a loop a maximum score
was achieved, there's usually no point in continuing the search.

Therefore add a macro for INT_MAX / 2 and document it for potential
users.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 6 ++++--
 include/of.h      | 4 ++++
 2 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 463db1058ae9..8a42fcee1d40 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -546,7 +546,9 @@ struct device_node *of_get_cpu_node(int cpu, unsigned int *thread)
 EXPORT_SYMBOL(of_get_cpu_node);
 
 /** Checks if the given "compat" string matches one of the strings in
- * the device's "compatible" property
+ * the device's "compatible" property. Returns 0 on mismatch and a
+ * positive score on match with the maximum being OF_DEVICE_COMPATIBLE_MAX_SCORE,
+ * which is only returned if the first compatible matched.
  */
 int of_device_is_compatible(const struct device_node *device,
 		const char *compat)
@@ -559,7 +561,7 @@ int of_device_is_compatible(const struct device_node *device,
 	for (cp = of_prop_next_string(prop, NULL); cp;
 	     cp = of_prop_next_string(prop, cp), index++) {
 		if (of_compat_cmp(cp, compat, strlen(compat)) == 0) {
-			score = INT_MAX/2 - (index << 2);
+			score = OF_DEVICE_COMPATIBLE_MAX_SCORE - (index << 2);
 			break;
 		}
 	}
diff --git a/include/of.h b/include/of.h
index 7d1df462d8cf..19b8e7c038a4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -5,6 +5,7 @@
 #include <fdt.h>
 #include <errno.h>
 #include <linux/types.h>
+#include <linux/limits.h>
 #include <linux/list.h>
 #include <linux/err.h>
 #include <asm/byteorder.h>
@@ -124,6 +125,9 @@ int of_fixup_reserved_memory(struct device_node *node, void *data);
 
 struct cdev;
 
+/* Maximum score returned by of_device_is_compatible() */
+#define OF_DEVICE_COMPATIBLE_MAX_SCORE	(INT_MAX / 2)
+
 #ifdef CONFIG_OFTREE
 extern struct device_node *of_read_file(const char *filename);
 extern struct of_reserve_map *of_get_reserve_map(void);
-- 
2.39.2



