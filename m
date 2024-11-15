Delivery-date: Fri, 15 Nov 2024 13:16:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFZ-002F6d-0C
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 13:16:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBvFY-0004OY-Aq
	for lore@pengutronix.de; Fri, 15 Nov 2024 13:16:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZLPJHDhQB/rAIxgdD+QqYgciibildEhJthXzJXvrg04=; b=0f3+meRm9MMi7/HwPL2rntpH9i
	Z/8ew8moOKM/2bs7pUeVrUjrsuQsKa4kWPft+YOzYdxbvYc/PC7aJ3fbcWm+Utx94HSVHGS2jFgSh
	VNSmJS/WI0kHDpW5G0hcJSSLJhbDKYF7OL/D6iEeOqWUGDZThizxQY+6rjBLyfKlLuxqdVyYt1FQ7
	TVeqPP0sosSSrWHLoIEXLYKf5utAiMcBj3d5Xi7q+EWMI7xzVuBb7ZxSWzl9INjpVkK55PNcHVb/F
	uNwAEaoGzaggDABVVbuoob9Fz7GCaz+vSrYxFG/ofiGpDrkVIUR8+Fwd+pDGE0ZNFsTJ20d5KMDTg
	tF+dWDNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvFB-00000002dNo-239J;
	Fri, 15 Nov 2024 12:16:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBvF7-00000002dL8-0EQz
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 12:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-0004BE-JB; Fri, 15 Nov 2024 13:16:03 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-000u9l-1K;
	Fri, 15 Nov 2024 13:16:03 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tBvF5-00GmQm-13;
	Fri, 15 Nov 2024 13:16:03 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: h.assmann@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 15 Nov 2024 13:16:01 +0100
Message-Id: <20241115121602.3999375-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
References: <20241115121602.3999375-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_041605_149279_14DA03F4 
X-CRM114-Status: GOOD (  14.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/4] bootsource: have bootsource_get_alias_name return const char *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only user of bootsource_get_alias_name() calls it and frees it
shortly after and users in board code will likely do the same.

Instead of allocating every time, let's just return a static array and
expect users to call strdup() if they want to keep the bootsource valid
for longer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/bootsource.c  | 23 +++++++++++------------
 include/bootsource.h |  2 +-
 2 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index 6808c9c51d88..3c8f53f3a890 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -72,27 +72,24 @@ const char *bootsource_get_alias_stem(enum bootsource src)
 /**
  * bootsource_get_alias_name() - Get the name of the bootsource alias
  *
- * This function will return newly allocated string containing name of
+ * This function will return a pointer to a static string containing name of
  * the alias that is expected to point to DTB node corresponding to
  * detected bootsource
  *
- * NOTE: Caller is expected to free() the string allocated by this
- * function
  */
-char *bootsource_get_alias_name(void)
+const char *bootsource_get_alias_name(void)
 {
+	static char buf[sizeof("i2c-eeprom-2147483647")];
 	const char *stem;
+	int ret;
 
 	/*
 	 * If alias name was overridden via
 	 * bootsource_set_alias_name() return that value without
 	 * asking any questions.
-	 *
-	 * Note that we have to strdup() the result to make it
-	 * free-able.
 	 */
 	if (bootsource_alias_name)
-		return strdup(bootsource_alias_name);
+		return bootsource_alias_name;
 
 	stem = bootsource_get_alias_stem(bootsource);
 	if (!stem)
@@ -105,13 +102,17 @@ char *bootsource_get_alias_name(void)
 	if (bootsource_instance == BOOTSOURCE_INSTANCE_UNKNOWN)
 		return NULL;
 
-	return basprintf("%s%d", stem, bootsource_instance);
+	ret = snprintf(buf, sizeof(buf), "%s%d", stem, bootsource_instance);
+	if (ret < 0 || ret >= sizeof(buf))
+		return NULL;
+
+	return buf;
 }
 
 struct device_node *bootsource_of_node_get(struct device_node *root)
 {
 	struct device_node *np;
-	char *alias_name;
+	const char *alias_name;
 
 	alias_name = bootsource_get_alias_name();
 	if (!alias_name)
@@ -119,8 +120,6 @@ struct device_node *bootsource_of_node_get(struct device_node *root)
 
 	np = of_find_node_by_alias(root, alias_name);
 
-	free(alias_name);
-
 	return np;
 }
 
diff --git a/include/bootsource.h b/include/bootsource.h
index 33ad26946059..9fb77a0bb0a9 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -29,7 +29,7 @@ enum bootsource bootsource_get(void);
 enum bootsource bootsource_get_device(void);
 int bootsource_get_instance(void);
 void bootsource_set_alias_name(const char *name);
-char *bootsource_get_alias_name(void);
+const char *bootsource_get_alias_name(void);
 const char *bootsource_to_string(enum bootsource src);
 const char *bootsource_get_alias_stem(enum bootsource bs);
 int bootsource_of_alias_xlate(enum bootsource bs, int instance);
-- 
2.39.5



