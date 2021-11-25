Delivery-date: Thu, 25 Nov 2021 17:08:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHIn-0001XB-49
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 17:08:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mqHIl-0000Bf-17
	for lore@pengutronix.de; Thu, 25 Nov 2021 17:08:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3WT9WxSCWVOQi22l25uKarAQLcnGgLwzHzBMlBaSD0=; b=pswxYMbXf3itga
	G17syreASGhXpbEEWbTO0DeoU7uxGGoMbKrrqeL05kB09ZnFz7ioHqvD1HmmKsYonCfJzYe7plw7M
	X/cq2fplVTn4IbzAbtpli/LMQlX5BxMBNPYOz8fSw9U4j/SaSdz5yB881oHpZk4Y5FQ2kCGTrncXP
	4G6Nc2LV7iuMQ7cGPQ4pyvSrzXZYdfP/aKs55RqBajFPbpdTc3nNka7tQ1HANFDzJU3xohB3XfSeh
	/1BnpknOGtn9ycT3ghgSsHH1eLunbU2ywvn993GSVJH2g6A2Ml6/YD/QNsyILIZAqn5sw/y3s/g9p
	Rq1cACq/ACqBh+4PDbEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqHGp-008C23-UM; Thu, 25 Nov 2021 16:06:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqHGk-008C0n-PZ
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 16:06:44 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHGh-0008Qy-KI; Thu, 25 Nov 2021 17:06:39 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mqHGh-00G3yw-3p; Thu, 25 Nov 2021 17:06:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 25 Nov 2021 17:06:37 +0100
Message-Id: <20211125160637.3828394-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211125160637.3828394-1-a.fatoum@pengutronix.de>
References: <20211125160637.3828394-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211125_080642_855662_75F210F8 
X-CRM114-Status: GOOD (  13.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] of: base: improve documentation of global exports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Most comments are probably from the initial Linux port. Fix some
discrepancies and add docs for barebox-specific of_probe.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ec4f9327036c..065265ec9756 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -171,8 +171,7 @@ static int of_alias_id_parse(const char *start, int *len)
  * of_alias_scan - Scan all properties of 'aliases' node
  *
  * The function scans all the properties of 'aliases' node and populates
- * the global lookup table with the properties.  It returns the
- * number of alias_prop found, or error code in error case.
+ * the global lookup table with the properties.
  */
 void of_alias_scan(void)
 {
@@ -2354,6 +2353,13 @@ static const struct of_device_id reserved_mem_matches[] = {
 	{}
 };
 
+/**
+ * of_probe - Probe unflattened device tree starting at of_get_root_node
+ *
+ * The function walks the device tree and creates devices as needed.
+ * With care, it can be called more than once, but if you really need that,
+ * consider first if deep probe would help instead.
+ */
 int of_probe(void)
 {
 	struct device_node *node;
@@ -2727,8 +2733,6 @@ struct device_node *of_find_node_by_reproducible_name(struct device_node *from,
  * of_graph_parse_endpoint() - parse common endpoint node properties
  * @node: pointer to endpoint device_node
  * @endpoint: pointer to the OF endpoint data structure
- *
- * The caller should hold a reference to @node.
  */
 int of_graph_parse_endpoint(const struct device_node *node,
 			    struct of_endpoint *endpoint)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

