Delivery-date: Tue, 15 Mar 2022 14:41:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU7R1-004KMU-5V
	for lore@lore.pengutronix.de; Tue, 15 Mar 2022 14:41:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nU7Qz-0007UQ-IK
	for lore@pengutronix.de; Tue, 15 Mar 2022 14:41:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PRNQa1HOGxnGlXh+jZxeQO+2rhkR9uDTAPgQ21vcCTQ=; b=jgPbkB9B50MKn/
	S/YO8RNK47JX2umNTtsXCegL74bKQbJa6Lvb8D+TFoANAdcT9fnIp5bCIjZxsHORauVpyfXbHOzUA
	SH2r+8MxtB2oSeYqt4IMCXVZgt8D3J4OaSp9Sw9LAQaAiTEUyZBk2Zxg23VF1Bn74FYEOM5VrBySj
	3Xumrwk56TVwGKYKqbD/ZK+GZGsMWLa1Fr38XQDxDCVMPOEvfnMeF6zo9xf2L7FCfhnmHQXVxUJ1f
	Eb9ikKit1QV7hKmEYIzVJhgq42Dn7i7pxGzW/+tiPrwRWg5tTDDybkKB5aCUyvRfihX6V3MqWJvb2
	dzJmmYWWTb6LhlTvFKtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU7PQ-009G3E-I9; Tue, 15 Mar 2022 13:40:20 +0000
Received: from cpanel.siel.si ([46.19.9.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU7PF-009FzQ-8c
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 13:40:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com; 
 s=default;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vKiQGnis+2TXi5MiH9+YUR8uKVqJh1z/+i7Ib9PzCLo=; b=nMdvDdh+JlwQUHC7WdmkDOceJY
 bmvGoyiOwF/YQeZV2yMexFMtTKMo3yHMPQlNPMom22ZCL+rlUvt68OU+fRCwpGyuaUA0t9aoRs9eq
 EAmLCqUBq6dbF/we9Xr1kYLNbfQto56i9A1TUsZMfhjdP5U8Jk0N60o8SSZbGORiMkToc8GyFKDlB
 qyypDR17Nd2stF2OErF0pAkH0VQr5nz8ON/nfeQn4ZHK2O+BQkdLGPpVoYNF0Ak/TL+1NM309pNd5
 B2KzzgXVlQqfDmF6Q/s6uWvThsRdtrZb8l43/3B4rRp/pVNQO7FSSw5WGyLp27IXwK2SPSuZ4b19P
 fCWqpCYQ==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:40480
 helo=localhost.localdomain)
 by cpanel.siel.si with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.94.2)
 (envelope-from <andrej.picej@norik.com>) id 1nU7P5-00EQ3O-90
 for barebox@lists.infradead.org; Tue, 15 Mar 2022 14:39:59 +0100
From: Andrej Picej <andrej.picej@norik.com>
To: barebox@lists.infradead.org
Date: Tue, 15 Mar 2022 14:39:41 +0100
Message-Id: <20220315133942.537756-1-andrej.picej@norik.com>
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
X-CRM114-CacheID: sfid-20220315_064009_651051_54BEDDE1 
X-CRM114-Status: UNSURE (   5.43  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: implement new of_device_ensured_probed_by_alias_stem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Function first goes through all the aliases which have the given stem.
It then ensures that all the devices hiding under these aliases are
probed.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 drivers/of/base.c | 28 ++++++++++++++++++++++++++++
 include/of.h      |  6 ++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 80465d6d50..055dba97ab 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -274,6 +274,34 @@ int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id_from);
 
+/**
+ * of_device_ensured_probed_by_alias_stem - Ensure all devices with alias base name
+ * are probed
+ * @stem:	Alias stem of the given device_node
+ *
+ * The function ensures all devices with the given alias stem are probed.
+ *
+ * Returns 0 on success or error code.
+ */
+int of_device_ensured_probed_by_alias_stem(const char *stem)
+{
+	struct alias_prop *app;
+	int id = -ENODEV;
+	int ret;
+
+	list_for_each_entry(app, &aliases_lookup, link) {
+		if (of_node_cmp(app->stem, stem) != 0)
+			continue;
+
+		ret = of_device_ensure_probed(app->np);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(of_device_ensured_probed_by_alias_stem);
+
 const char *of_alias_get(struct device_node *np)
 {
 	struct alias_prop *app;
diff --git a/include/of.h b/include/of.h
index 216d0ee763..95817c58a4 100644
--- a/include/of.h
+++ b/include/of.h
@@ -261,6 +261,7 @@ extern void of_alias_scan(void);
 extern int of_alias_get_id(struct device_node *np, const char *stem);
 extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
 				const char *stem);
+extern int of_device_ensured_probed_by_alias_stem(const char *stem);
 extern const char *of_alias_get(struct device_node *np);
 extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 
@@ -750,6 +751,11 @@ static inline int of_alias_get_id_from(struct device_node *root, struct device_n
 	return -ENOSYS;
 }
 
+static int of_device_ensured_probed_by_aliases(const char *stem)
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

