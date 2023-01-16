Delivery-date: Mon, 16 Jan 2023 14:41:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkF-00DbhU-Qc
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:41:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPkD-0007VN-KO
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:41:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=C/vL4VsruZAw9BkFoL9xYYaxAdvB3iHjhEPg/3W6nMs=; b=VQd7/nru/S28IpwcwphrnWKnn9
	394fpbDieURrB6cQzE9yS2VuQ+8N817NH+nahmj99jfkUidGcALlnT9xzIsb08lhwTJcOZrwoHi6w
	ZP+QN6CJcJP84P9aDo2CODpTQsWjGUaKCEqYPomiVBC/9Y3VLrqv1Rfw+fY8ooIQj+sN4jmrVKXER
	0+iRyr4evgUG/UMtP+cYfnSWTtUYl5V+fOCDf9xJ3azG4mEHv5QBYTBBBRGMgO0F2gUhwc80mkriR
	C6NiIvHWSMd3bpvPMsPGABJspyO4tnCDxFA2z+r/XgcRATmunZqSGkwVvuu7/1Pj9t0+f2deVr1Zx
	c0T61iIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPir-00AVnJ-5E; Mon, 16 Jan 2023 13:40:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPdf-00ATQp-P0
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:35:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPde-00060v-28; Mon, 16 Jan 2023 14:35:02 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPdd-006SHs-EQ; Mon, 16 Jan 2023 14:35:01 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPdc-008Nwo-PX; Mon, 16 Jan 2023 14:35:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:35:00 +0100
Message-Id: <20230116133500.1998550-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_053503_882222_DAA4E331 
X-CRM114-Status: GOOD (  10.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: implement of_device_enable_by_alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For symmetry with of_device_disable, which already has direct, path and
by alias variants, implement the missing of_device_enable_by alias as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 15 +++++++++++++++
 include/of.h      |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 9504ac47cb09..937847f44ab7 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2789,6 +2789,21 @@ int of_device_enable_path(const char *path)
 	return of_device_enable(node);
 }
 
+/**
+ * of_device_enable_by_alias - enable a device node by alias
+ * @alias - the alias of the device tree node to enable
+ */
+int of_device_enable_by_alias(const char *alias)
+{
+	struct device_node *node;
+
+	node = of_find_node_by_alias(NULL, alias);
+	if (!node)
+		return -ENODEV;
+
+	return of_device_enable(node);
+}
+
 /**
  * of_device_disable - disable a devicenode device
  * @node - the node to disable
diff --git a/include/of.h b/include/of.h
index 4f4e9248ada9..7ee1304b932b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1146,6 +1146,7 @@ extern const struct of_device_id of_default_bus_match_table[];
 
 int of_device_enable(struct device_node *node);
 int of_device_enable_path(const char *path);
+int of_device_enable_by_alias(const char *alias);
 int of_device_disable(struct device_node *node);
 int of_device_disable_path(const char *path);
 int of_device_disable_by_alias(const char *alias);
-- 
2.30.2



