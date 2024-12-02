Delivery-date: Mon, 02 Dec 2024 12:37:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4kL-0034D2-0D
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 12:37:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI4kK-0003Rn-Tr
	for lore@pengutronix.de; Mon, 02 Dec 2024 12:37:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rs472Xn99aPJOGUYldok+81hi+ERBbBa8UxlgTrRk6k=; b=vBlDasCN6/txCbtkd+CqKaoHw2
	LJpkJwfrKpEYIq1/rvrGijiShrNty9pFFx5L0hKHR8v0cmgxv+PjUtuCmjlkhP9mIlN1nA9wYWoIU
	LOz61vwHUM7TZGPGRNCVgY6dfAdWb2q2GDt+TeTbyx0fps6HA9LFtPxas50KJHYr2YizsPKP50PTH
	AF+l+wPURBNNr64cs15sG04K+6btj5/W+cqS19qudw16IGCMt5DKvvJEHzeTmh1ZHMDkCmE6A0+bF
	Fsnp/LS4nLT2GaKRMRV5KouAc2lrQma7hIyIUUH/TGCs6sl5DJtUuozB8d+LFUDIEaKTHbQS2Sfsm
	OQ59IyYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4ju-00000005vaV-0li2;
	Mon, 02 Dec 2024 11:37:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI4Xg-00000005sjF-0N4P
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 11:24:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xe-000158-Rg; Mon, 02 Dec 2024 12:24:38 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xd-001Hts-2r;
	Mon, 02 Dec 2024 12:24:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI4Xe-002FBa-1q;
	Mon, 02 Dec 2024 12:24:38 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 12:24:36 +0100
Message-Id: <20241202112437.535013-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202112437.535013-1-a.fatoum@pengutronix.de>
References: <20241202112437.535013-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_032440_153478_1C2552A9 
X-CRM114-Status: GOOD (  14.43  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/4] bootsource: have bootsource_get_alias_name return const char *
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The only user of bootsource_get_alias_name() calls it and frees it
shortly after and users in board code will likely do the same.

Instead of allocating every time, let's just return a static array and
expect users to call strdup() if they want to keep the bootsource valid
for longer.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - no change
---
 common/bootsource.c  | 23 +++++++++++------------
 include/bootsource.h |  2 +-
 2 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index d82bb5f18c52..4bccdfdb70d5 100644
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



