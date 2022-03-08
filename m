Delivery-date: Tue, 08 Mar 2022 12:52:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOQ-004btG-MX
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 12:52:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYOP-00074L-7w
	for lore@pengutronix.de; Tue, 08 Mar 2022 12:52:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5KCAlsgDNXB2nnMlwb66GphdYmfwHQ09f3aVS0kgZKA=; b=bUBe4zD8vOsfN1
	54eRVcAjk3ug5O871WcC6DZT1HteBaTlBpsRtQUI/3cyqFuHDTFuX1VNn3Wo5qurKltAldZ+8cdmJ
	Kt+s+G8Ev0tRWapZnQw2frbYK7bzhPpvZd0vcWsnHbePF/hJAtd98FvCnQUI321wBZMbVG7f0Gwsp
	r2tSe1wyWx9ZbEJlHUnoveP9n23cfVXfDHkpdJm701SLd/KapJ1Q4u76GEJblv111TMkEs+ZabeOZ
	5H7r9uXdsVvzpJAOeGD1Pmmpj3zQYRPbogmJrFDj2+JiH3Zi5OpqklwfVBEEiP2HRdkIy1HaYbeew
	q5Od0GOM8bjeTI555R3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYMz-004DS3-Qu; Tue, 08 Mar 2022 11:51:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYMs-004DPz-3O
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 11:51:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-0006in-La; Tue, 08 Mar 2022 12:51:04 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYMq-00FdcO-3P; Tue, 08 Mar 2022 12:51:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 12:50:59 +0100
Message-Id: <20220308115103.3664883-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308115103.3664883-1-s.hauer@pengutronix.de>
References: <20220308115103.3664883-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_035106_174667_BF510E33 
X-CRM114-Status: GOOD (  11.79  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] of: platform: return early when deep probe is not
 supported
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When deep probe is not supported we can bail out early from the
of_devices_ensure_probed_by_* functions. This saves us from iterating
over the whole device tree and then doing nothing on the found nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0e718469db..5a05001213 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -455,6 +455,9 @@ int of_device_ensure_probed_by_alias(const char *alias)
 {
 	struct device_node *dev_node;
 
+	if (!deep_probe_is_supported())
+		return 0;
+
 	dev_node = of_find_node_by_alias(NULL, alias);
 	if (!dev_node)
 		return -EINVAL;
@@ -480,6 +483,9 @@ int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids)
 	struct device_node *np;
 	int err, ret = 0;
 
+	if (!deep_probe_is_supported())
+		return 0;
+
 	for_each_matching_node(np, ids) {
 		if (!of_device_is_available(np))
 			continue;
@@ -509,6 +515,9 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 {
 	struct device_node *node;
 
+	if (!deep_probe_is_supported())
+		return 0;
+
 	for_each_node_with_property(node, property_name) {
 		int ret;
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

