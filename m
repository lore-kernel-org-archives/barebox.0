Delivery-date: Wed, 28 May 2025 14:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWE-001B0N-25
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFW7-0006hr-4n
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fEL8yu67ECuDL4MUkMzxjpn3F/jzTo0F8aQT9RXXglE=; b=HnNhssObpEF9gJVHdi6Kpvt1En
	RNQrQGkEgKI/fk6WbutWgVsp+QO1lz+a52uX5ZXf37lUyaUQDm6Ra/+ieRyS50Nz/kZCxAoCdDVTy
	wqH41qwQAoq0C0EKNXxLx+gPUzI5R0yqZJ1MVRoUnse2Gef+DOTGnK2+vh8sqirUtJO26x2k048hj
	5amz7Ef0e9wXE+AfGRKPMAzz9roI1FoYkQxzWfgvcI0RaSrB2Z9c5P0+6YR/iRI4VbTfXBm+YhXpK
	xoYw8Y5GIXQ+p+wNr+M9x3r/8eBaMr1AQ58eSrqTBI5d7ZeLGHH/L8bBYu3kNpoQZ4/3DTbaQpdO9
	N389I9zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVT-0000000D2jj-1w4o;
	Wed, 28 May 2025 12:03:39 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU2-0000000D2b8-2zNV
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=fEL8yu67ECuDL4MUkMzxjpn3F/jzTo0F8aQT9RXXglE=; b=NP/jynWmM61EYVJBnzszyWLaK7
	j8Z4Pyjnjg2+eb7yYzHO2p8Q9LR0oDtuCsonU8+FiJPbfUyvcIsuTYf+FZP+yyV3Fd1ORFslM4xSv
	bjE5jx6ZcjhSjlnyxXqmjDP/iLeTwa5H9/TXs8n/VPbrM7TIjm1GZspHaC+coH3LqDL6I7SJgy21f
	Hk8n6pk2xbXcI27lDlU+M3V1pm5BXdzZ4nfd+O4hiDhc/nlY3uzlYdHrRUaVoo9XFr9Sn1i7GsM5I
	mMDF55kzHF0tZFfeDJ9hoJBtbF+2miTitBNQZ2wxntP0nwfnKuVxgUf0IhXnAH+BSTQwJFTrCD8dj
	MR9FfAIQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTz-0000000DarJ-3nAh
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004VH-Rx; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aDu-27;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1q;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-23-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=1333;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=c+8FZ6ZKzNE47/kvWmTDNwVIYfYj+oRrSK0+QOXOjSQ=;
 b=NYEXD5j+maoF9Wb4p0yfyVTOSOX6/TfydbeuWvCz96H7MtErrDumphV8wDcbI11X5AfuEJmQR
 AYbKMz/kZsaB1lL7Fv41xaJ044Ot/eJJtnfxWpH3/QKOeZQ7kxcjE+t
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130208_065352_AD2AD1CD 
X-CRM114-Status: UNSURE (   9.05  )
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
Subject: [PATCH 23/31] clk: add struct clk_parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will become in handy for the upcoming SCMI clk parent support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 7ae4c48ca27ffbe4597eede01fca27ddee9772d1..f2c02c9eec8fca9702176d0265eecc3620e74fdb 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -349,6 +349,18 @@ struct clk_ops {
 	int		(*get_phase)(struct clk_hw *hw);
 };
 
+/**
+ * struct clk_parent_data - clk parent information
+ * @hw: parent clk_hw pointer (used for clk providers with internal clks)
+ * @name: globally unique parent name (used as a fallback)
+ * @index: parent index local to provider registering clk (if @fw_name absent)
+ */
+struct clk_parent_data {
+	const struct clk_hw	*hw;
+	const char		*name;
+	int			index;
+};
+
 /**
  * struct clk_init_data - holds init data that's common to all clocks and is
  * shared between the clock provider and the common clock framework.
@@ -365,6 +377,7 @@ struct clk_init_data {
 	const char		*name;
 	const struct clk_ops	*ops;
 	const char		* const *parent_names;
+	const struct clk_parent_data    *parent_data;
 	const struct clk_hw	**parent_hws;
 	unsigned int		num_parents;
 	unsigned long		flags;

-- 
2.39.5



