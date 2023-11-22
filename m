Delivery-date: Wed, 22 Nov 2023 18:42:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFT-004esO-37
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 18:42:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rFU-0002xI-0O
	for lore@pengutronix.de; Wed, 22 Nov 2023 18:42:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BzxdfTbABBeYjFJQAl8V6hoxOQpP3WEZP2TcHUQcfHI=; b=xjG0XKsmJRs4Ja+pNlVXLfCc8f
	lu9iw9wOEQIAdHrmfJUIj8wc2Len/UNjO1hFPYNHDMkouiL2I0xvO/LCTEixJrVK8sdy3MN/NopLi
	BvlS/M0NaiQ020msnR7Fw7Oqrf+BdOGH7QAN5U6sjaXOPENQSvi1FkUzTc09oZQxse4O3aF1W5LZZ
	UE8o4tG3FBxUgnJ+I7enVlZxMg1+PhcvkyLeRlNkCCinmzVhpCcbKSU2quPdEQfQ82AyOffsCpTHF
	aYMP0lEfhgaYzNMv1f3aEVu92TOHD1DEdRxBKo0B1ObOPrw7a7zL20CNy4S19DSQkmROVSqv6h0he
	e8b2mcPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE7-002hkQ-0a;
	Wed, 22 Nov 2023 17:41:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rE2-002hgo-1e
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 17:41:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE1-0002B7-Cy; Wed, 22 Nov 2023 18:41:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rE0-00ArWu-Ui; Wed, 22 Nov 2023 18:41:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5r34-001lAy-1g;
	Wed, 22 Nov 2023 18:30:02 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 18:29:50 +0100
Message-Id: <20231122172951.376531-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122172951.376531-1-a.fatoum@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_094122_547928_D9FFE08B 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 19/20] of: define of_devices_ensure_probed_by_compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will need to ensure probe of OP-TEE from SCMI code in a follow-up
commit, so add a small helper to facilitate this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - changed prototype to take const char * instead of char * (Sascha)
---
 include/of.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/of.h b/include/of.h
index e99b41ef6f14..7d1df462d8cf 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1221,6 +1221,16 @@ int of_device_disable(struct device_node *node);
 int of_device_disable_path(const char *path);
 int of_device_disable_by_alias(const char *alias);
 
+static inline int of_devices_ensure_probed_by_compatible(const char *compatible)
+{
+	struct of_device_id match_id[] = {
+		{ .compatible = compatible, },
+		{ /* sentinel */ },
+	};
+
+	return of_devices_ensure_probed_by_dev_id(match_id);
+}
+
 phandle of_get_tree_max_phandle(struct device_node *root);
 phandle of_node_create_phandle(struct device_node *node);
 int of_set_property_to_child_phandle(struct device_node *node, char *prop_name);
-- 
2.39.2



