Delivery-date: Tue, 29 Mar 2022 09:35:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6O2-009wpt-Qk
	for lore@lore.pengutronix.de; Tue, 29 Mar 2022 09:35:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nZ6O5-0002at-2Q
	for lore@pengutronix.de; Tue, 29 Mar 2022 09:35:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QpkU192oaJ6p9Y0hcobW9eVRhBIIwUQqqv/ijPcLLIA=; b=NQAMB2BgjzrzWx
	5+4hWwrHA7n7xy4IKHp/daWmZugYtULlE+x3qYe7+7jw9/NKF4cWrjkFK9A5cJ28S1w8Ks6woQOLc
	gNGhl6llNUBw2RhoLM9uVipZOX/pFePHKomngA0c1uvCF9fYgcOrbYoKHJKeO/oi7rIIFaa8yjtqd
	glbai8LMm5kZAIeJYeUogUL8PnqoGHUZokDDUBlJAAoUy+5eh8DARLq2Rr+bwe3sgiWohnzTicVEK
	KvO6FcWFPjR+yQqH9h3QP3AJz+6F7en7h73/wzWey7yjoBFKzr30vg+QMoFb//y1RuXb7HdZpUyf/
	Sled5f12agMYj9pMlcWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZ6Mb-00BLqf-1Y; Tue, 29 Mar 2022 07:34:01 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZ6MR-00BLm9-L0
 for barebox@lists.infradead.org; Tue, 29 Mar 2022 07:33:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hNH3oAKF62BXFZNp+cBgwGNMJYofnhbC5aVs5nJUvmE=; b=az0nMXcQWA1WR1pEtvXqhnTvdF
 NOg0fbnDSrZcbh1si60iLFjTEDc5ytOPvVdSxCAE/hroVLN1kxmGUhwxlIwkF8MSZowQGuXEyNgK+
 QluFFcrl8fYOOkyoGsHTSRMLXKQ3fTCpjtJQ59dC1i25ohwGz5xup9AS8SabtG/XCIfcjub8AY8cK
 gTbS9kmNjfte1PfJnsZJgLpNnoYrYXBz08J3jTegZqdwgWHzcRAAVLNoyIqsWmDGGPIt+z/6lEHKg
 /o2ZdPQtp5669a+G0GrdHztL+R5tmGIZL/2TZ54rUTvDL243jX+LQcxr9m5IpSz70v7BrPboLm7t1
 ZA+EG9SA==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:44172
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.95)
 (envelope-from <andrej.picej@norik.com>) id 1nZ6MI-00HHxZ-0x;
 Tue, 29 Mar 2022 09:33:42 +0200
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Cc: upstream@lists.phytec.de
Date: Tue, 29 Mar 2022 09:33:32 +0200
Message-Id: <20220329073333.435822-1-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id:
 andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_003352_028830_ADF065B7 
X-CRM114-Status: GOOD (  11.19  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/2] of: implement new of_device_ensure_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Function first goes through all the aliases which have the given stem.
It then ensures that all the devices hiding under these aliases are
probed.

User can specify one device_node which won't get probed. This is mainly
for avoiding recursion if the function will be called from device probe
function, or to specify the device which should get probed last. In the
later case the user should probe the last device manually.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - add check for deep probe support,
 - users can now specify one device node, which won't get probed. This
   ensures that one device can be probed last and we avoid recursion, if
this device happens to have alias,
 - fix function name (ensured -> ensure).
---
 drivers/of/base.c | 40 ++++++++++++++++++++++++++++++++++++++++
 include/of.h      |  6 ++++++
 2 files changed, 46 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 80465d6d50..ad747e9e63 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -274,6 +274,46 @@ int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id_from);
 
+/**
+ * of_device_ensured_probed_by_alias_stem - Ensure all devices with alias base name
+ * are probed
+ * @np:		Device node of a device that should be probed last, NULL if such
+ * 		device doesn't exist
+ * @stem:	Alias stem of the given device_node
+ *
+ * The function ensures all devices with the given alias stem are probed before the
+ * target device.
+ *
+ * Returns 0 on success or error code.
+ */
+int of_device_ensure_probed_by_alias_stem(struct device_node *np, const char *stem)
+{
+	struct alias_prop *app;
+	int id = -ENODEV;
+	int ret;
+
+	if (!deep_probe_is_supported())
+		return 0;
+
+	list_for_each_entry(app, &aliases_lookup, link) {
+		if (of_node_cmp(app->stem, stem) != 0)
+			continue;
+
+		/* If device node is given skip the probing of that device so we
+		 * avoid recursion.
+		 */
+		if (np != NULL && np == app->np)
+			continue;
+
+		ret = of_device_ensure_probed(app->np);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_device_ensure_probed_by_alias_stem);
+
 const char *of_alias_get(struct device_node *np)
 {
 	struct alias_prop *app;
diff --git a/include/of.h b/include/of.h
index 216d0ee763..0b520bb35c 100644
--- a/include/of.h
+++ b/include/of.h
@@ -261,6 +261,7 @@ extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 				const char *stem);
+extern int of_device_ensure_probed_by_alias_stem(struct device_node *np, const char *stem);
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
@@ -750,6 +751,11 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
 	return -ENOSYS;
 }
 
+static int of_device_ensure_probed_by_alias_stem(struct device_node *np, const char *stem)
+{
+	return -ENOSYS;
+}
+
 static inline const char *of_alias_get(struct device_node *np)
 {
 	return NULL;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

