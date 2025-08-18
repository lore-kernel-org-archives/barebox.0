Delivery-date: Mon, 18 Aug 2025 20:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dO-001yRw-1w
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dK-0003qO-8k
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DGNjL6Dpa8FtOdGfBBA3YQUsPmvEHg92xRIpwrxoSrc=; b=WfdmgwxVnzBu2f9gsHhtRWDGmX
	6ja/hkVUfCrOmfnTSF5uMM49LIKwZVYGNivOnVThiN3X/BG70ODAlS6nmO/wnsHCfE4In05d8gpfn
	os+9CODdyL3F0tFfPIaEoxHh0I+pyyS0/eoawOpPuSlvhoX1YaD3y7zkQKk0tjHjjoEXqOOJQcwjK
	qeVupNyAg1jW8Zxy9niGrXrn4hRmHJScCEfmu89eNuxKfb7/Gv3c8SfN/hPhVx1o6+OeSSsAg7NBl
	OZ23fpV4t4DtmpTqoD00tIuml/jzIdXz1Bjt5nu72yvIcrM/C2M9l5qAWdI2QX3kp+PMKB2j3FCTs
	vQizb6Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cj-00000008LKn-2HSo;
	Mon, 18 Aug 2025 18:30:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uR-00000008F36-3rHM
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:41 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-Kz; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-2-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_104439_966797_9F69C022 
X-CRM114-Status: GOOD (  13.59  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/15] of: base: add
 of_parse_phandle_with_optional_args()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports Linux commit:

| commit c5d264d4b527c96ae8903376a4b195df47b05203
| Author: Michael Walle <michael@walle.cc>
| Date:   Mon Feb 6 13:43:43 2023 +0000
|
|     of: base: add of_parse_phandle_with_optional_args()
|
|     Add a new variant of the of_parse_phandle_with_args() which treats the
|     cells name as optional. If it's missing, it is assumed that the phandle
|     has no arguments.
|
|     Up until now, a nvmem node didn't have any arguments, so all the device
|     trees haven't any '#*-cells' property. But there is a need for an
|     additional argument for the phandle, for which we need a '#*-cells'
|     property. Therefore, we need to support nvmem nodes with and without
|     this property.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>
|     Reviewed-by: Rob Herring <robh@kernel.org>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20230206134356.839737-10-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/of.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/include/of.h b/include/of.h
index 0ffc09e079a8af097e77e855791439a7aba93f2a..f2cd33b0f6cc6c332512ea08fd9df17bd0660f9f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -367,6 +367,31 @@ static inline int of_parse_phandle_with_args(const struct device_node *np,
 					    cell_count, index, out_args);
 }
 
+/**
+ * of_parse_phandle_with_optional_args() - Find a node pointed by phandle in a list
+ * @np:		pointer to a device tree node containing a list
+ * @list_name:	property name that contains a list
+ * @cells_name:	property name that specifies phandles' arguments count
+ * @index:	index of a phandle to parse out
+ * @out_args:	optional pointer to output arguments structure (will be filled)
+ *
+ * Same as of_parse_phandle_with_args() except that if the cells_name property
+ * is not found, cell_count of 0 is assumed.
+ *
+ * This is used to useful, if you have a phandle which didn't have arguments
+ * before and thus doesn't have a '#*-cells' property but is now migrated to
+ * having arguments while retaining backwards compatibility.
+ */
+static inline int of_parse_phandle_with_optional_args(const struct device_node *np,
+						      const char *list_name,
+						      const char *cells_name,
+						      int index,
+						      struct of_phandle_args *out_args)
+{
+	return __of_parse_phandle_with_args(np, list_name, cells_name,
+					    0, index, out_args);
+}
+
 extern int of_count_phandle_with_args(const struct device_node *np,
 	const char *list_name, const char *cells_name);
 

-- 
2.39.5



