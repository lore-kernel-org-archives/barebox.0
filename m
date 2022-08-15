Delivery-date: Mon, 15 Aug 2022 13:49:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYas-006NZc-HG
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 13:49:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNYas-0001de-Me
	for lore@pengutronix.de; Mon, 15 Aug 2022 13:49:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wnaqZZCF/3+imPzqKwaX8CyvJAbpS52Za9wl1ntv/HQ=; b=2QxMd4XbRbqZU3qPmD2A5b8KaJ
	VQzOFJ4YoKxB85laqqYEP/Rbb4f7Til4ukuemMHyj6bA2IZ72RP4vTJqbPyiJhBYGKjKRgHAMpKSZ
	76tcYsu0cLbIsZWjvU1Qm6L0gN/lNc7ZR5ltzmqpkCF08AHpWaGbj91jnDoSYcJGo1WhZEB62Cnzs
	EgqYnKX4/1b3myao1HS3lZChBXnfml4UUGX9ian83YmBOag6OUPHQfmqftnXOteR4u5ZWu54yjP1J
	RyIOCYrUvi9GeXWzmeY0EKJNhUoMQTta+3siJLgl4lfATcAJ26xMhiQlNJysEspM+OHUBMCfIjqF+
	YuAedHIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYYm-00Fch4-Q7; Mon, 15 Aug 2022 11:47:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYUg-00FZhn-07
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 11:42:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUb-0000ea-5e; Mon, 15 Aug 2022 13:42:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUY-003uOl-69; Mon, 15 Aug 2022 13:42:48 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNYUZ-009Xxw-JH; Mon, 15 Aug 2022 13:42:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 13:42:46 +0200
Message-Id: <20220815114246.2275465-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815114246.2275465-1-a.fatoum@pengutronix.de>
References: <20220815114246.2275465-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_044254_137014_44DAE4E2 
X-CRM114-Status: GOOD (  11.69  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] pstore: ram: use new of_fixup_reserved_memory() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The new of_fixup_reserved_memory() can handle everything that the
opencoded version in pstore can with the added benefit that it correctly
handles #address-cells/#size-cells != 1, which previously were just
assumed to be 1.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 31 +++++++++----------------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 0d8bb8f418f4..1f105c2a384e 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -474,35 +474,22 @@ static int ramoops_of_fixup(struct device_node *root, void *data)
 {
 	struct ramoops_platform_data *pdata = data;
 	struct device_node *node;
-	u32 reg[2];
+	struct resource res = {};
 	int ret;
 
-	node = of_get_child_by_name(root, "reserved-memory");
-	if (!node) {
-		pr_info("Adding reserved-memory node\n");
-		node = of_create_node(root, "/reserved-memory");
-		if (!node)
-			return -ENOMEM;
+	res.start = pdata->mem_address;
+	res.end = res.start + pdata->mem_size;
+	res.name = "ramoops";
 
-		of_property_write_u32(node, "#address-cells", 1);
-		of_property_write_u32(node, "#size-cells", 1);
-		of_new_property(node, "ranges", NULL, 0);
-	}
+	ret = of_fixup_reserved_memory(root, &res);
+	if (ret)
+		return ret;
 
 	node = of_get_child_by_name(node, "ramoops");
-	if (!node) {
-		pr_info("Adding ramoops node\n");
-		node = of_create_node(root, "/reserved-memory/ramoops");
-		if (!node)
-			return -ENOMEM;
-	}
+	if (!node)
+		return -ENOMEM;
 
 	ret = of_property_write_string(node, "compatible", "ramoops");
-	if (ret)
-		return ret;
-	reg[0] = pdata->mem_address;
-	reg[1] = pdata->mem_size;
-	ret = of_property_write_u32_array(node, "reg", reg, 2);
 	if (ret)
 		return ret;
 
-- 
2.30.2



