Delivery-date: Tue, 18 Jan 2022 09:30:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jt0-005OtH-OK
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 09:30:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9jsz-0000pR-HX
	for lore@pengutronix.de; Tue, 18 Jan 2022 09:30:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fm2DPvii2rNNa1cM8GmE4UB+AbNIDbiV8EGN38cs578=; b=wRt4sdAWqWPlxv
	v/RpHk/JT8YFSVsIr/JPsw2AL4bF2W5NMJa/sR/dwXFHqTI5JrngtrPN6VcXvujFqnH+UDmYArF5A
	r454XgXGVha0zWNlXuF5ZMU0kwnVrbwP0RNIyvj5jVoLDFjnSbTZwFCpsilynDdlsUSjN5iWIVkfE
	oupuAAX1z7PZ1LlaZmhd7a3C1sTCiBBV7CGp16YHXCxpgf2uX5cl1j4/OWeH8bh/yijCxTWsL94AO
	edMpA1rxgR3JH4wsrfaV+wuldJdsgHZjyqhDqBVFay5Uj38z4UMMwnD9hph0AXeqhQxBnGIgdQ8K0
	6i7hTPUR9b1rVtVZ6dvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9jrl-000jzY-Hg; Tue, 18 Jan 2022 08:29:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9jrf-000jxz-Hu
 for barebox@lists.infradead.org; Tue, 18 Jan 2022 08:29:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jrc-0000Zn-KZ; Tue, 18 Jan 2022 09:29:12 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1n9jrc-00HD91-5t; Tue, 18 Jan 2022 09:29:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 Jan 2022 09:29:11 +0100
Message-Id: <20220118082911.4101673-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_002915_616977_1C2C4DB9 
X-CRM114-Status: UNSURE (   8.03  )
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
Cc: jbe@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] regmap: Implement regmap_[set|clear]_bits()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

regmap_[set|clear]_bits() are useful shortcuts to regmap_update_bits().
Implement them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/regmap.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/regmap.h b/include/regmap.h
index db84c7a534..4b30c21776 100644
--- a/include/regmap.h
+++ b/include/regmap.h
@@ -130,6 +130,18 @@ int regmap_write_bits(struct regmap *map, unsigned int reg,
 int regmap_update_bits(struct regmap *map, unsigned int reg,
 		       unsigned int mask, unsigned int val);
 
+static inline int regmap_set_bits(struct regmap *map,
+				  unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits(map, reg, bits, bits);
+}
+
+static inline int regmap_clear_bits(struct regmap *map,
+				    unsigned int reg, unsigned int bits)
+{
+	return regmap_update_bits(map, reg, bits, 0);
+}
+
 /**
  * regmap_read_poll_timeout - Poll until a condition is met or a timeout occurs
  *
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

