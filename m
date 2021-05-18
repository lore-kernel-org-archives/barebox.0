Delivery-date: Tue, 18 May 2021 13:52:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGd-0004Er-6U
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:52:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGc-0002S0-4s
	for lore@pengutronix.de; Tue, 18 May 2021 13:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iNHHr/hnE5tc9qiy9KG4c8cgewz+16LO2tn0GjcQ/HI=; b=lyAlpt8VS9KiMnDLeoTWPAKsb
	Ac/+61D78RFsv5EYWKxj+0lTgLJ/GBQm3dbkl7ihbletIcu0Rmxju3b/ybNNAXn7CThmEaTDiSy8Z
	Dhxxp5UqMkue62KvShMa+O2XsXBHpSpYvrNTcMb5iFcFPn+DFHYq7gu0cGiqJ+6jc5bLUdMG8gtj/
	CWB7J/YWck9Nl8mY3c7Xm9RzSKI8Zl58Wc8PoAuV7INsfuwqNzJIfL+0zKtKjDWob8SQ2BgWPmqWL
	q1Q60Txvgclj06txMC5RBZCKea6JcTxsWrLcK3NETQbVeCPPQQGMafDjSnsqPWTGj94L7JEEBTHrB
	ZubPfpNNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFe-000eJo-O5; Tue, 18 May 2021 11:51:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEJ-000dfH-0s
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=uIQPT1C14yuOnmc+1JL3vIgB/F9TnQx4A0P6js8b61M=; b=2j5iKZIAtkXRDRj9aTgZ/BRcXj
 Woj4WqYCjpUdAwm4ci2acns5EBZMENJmrMA7j/M/1m20kW6o+UAi+Yb7nQeu7w/1Ygxd3X2Em2zgI
 czWoPuAkmnSWOoZV35rDJwm52EkZ6n+7pBBkqXVgafX0QTrsWaVEE7A03IqUYLhWj+u2VUmObxP9E
 RgZsPqevSngDva/Yngy93zwKAjzosgcnWroQwK30aYbODVprnvz6XbADwm3SajkmNt3gYYO8pb2YO
 BjTAheQbmycg79OC7o0FWNJV7kTY0oh/n1Nip6roPmuvQHPY+54ZwRNTKY65DbKIR09h7xdilLZH3
 Lwe/BN+A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEG-00EcKc-HX
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Go-98; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-000151-Aa; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:19 +0200
Message-Id: <20210518114929.12964-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044940_598457_D42EC894 
X-CRM114-Status: GOOD (  14.20  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/14] clk: introduce clk_register()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This introduces a clk_register() with the same semantics as in Linux.
This also adds a struct clk_init_data. With this it becomes easier to
port over new clock drivers from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 35 +++++++++++++++++++++++++++++++++++
 include/linux/clk.h |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 73682126bf..2ca6d6b483 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -345,6 +345,41 @@ out:
 	return ret;
 }
 
+struct clk *clk_register(struct device_d *dev, struct clk_hw *hw)
+{
+	struct clk *clk;
+	const struct clk_init_data *init = hw->init;
+	char **parent_names;
+	int i, ret;
+
+	if (!hw->init)
+		return ERR_PTR(-EINVAL);
+
+	clk = clk_hw_to_clk(hw);
+
+	clk->name = xstrdup(init->name);
+	clk->ops = init->ops;
+	clk->num_parents = init->num_parents;
+	parent_names = xzalloc(init->num_parents * sizeof(char *));
+
+	for (i = 0; i < init->num_parents; i++)
+		parent_names[i] = xstrdup(init->parent_names[i]);
+
+	clk->parent_names = (const char *const*)parent_names;
+
+	clk->flags = init->flags;
+
+	ret = bclk_register(clk);
+	if (ret) {
+		for (i = 0; i < init->num_parents; i++)
+			free(parent_names[i]);
+		free(parent_names);
+		return ERR_PTR(ret);
+	}
+
+	return clk;
+}
+
 int clk_is_enabled(struct clk *clk)
 {
 	int enabled;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 66ac6a9f14..654845023a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -399,6 +399,7 @@ struct clk {
  */
 struct clk_hw {
 	struct clk clk;
+	const struct clk_init_data *init;
 };
 
 static inline struct clk *clk_hw_to_clk(struct clk_hw *hw)
@@ -547,6 +548,7 @@ int clk_parent_set_rate(struct clk_hw *hw, unsigned long rate,
 				unsigned long parent_rate);
 
 int bclk_register(struct clk *clk);
+struct clk *clk_register(struct device_d *dev, struct clk_hw *hw);
 
 struct clk *clk_lookup(const char *name);
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

