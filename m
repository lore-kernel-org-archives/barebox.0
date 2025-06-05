Delivery-date: Thu, 05 Jun 2025 15:15:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARb-0041hN-06
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:15:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNARa-00037y-Ev
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:15:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fEL8yu67ECuDL4MUkMzxjpn3F/jzTo0F8aQT9RXXglE=; b=H480ilcTDhy7wmmOdHscYLdV8d
	1Ztcl15pon2BGAagEVVW6DHiS2sod7Om3+zanyro1SdQVyWL+YSKeTVZeZO/m/rkWb6tobzga8sp+
	EltPzxc1wBDqTutUK0MnSTtQUUYgYCttKndn0suzp5Yu6NgIi5gHBnuMdbvMnbr00tJDin9Qast10
	pDJqPp5spbBc3hpBbQJJMCo9rmtUPv9qN3YCLSRHJwoxdMG3mabk+8FJmV4a98nNlu1XiErBIgwj2
	k5Gh7OO9EqWgILrDN43mw7pltJ0+/M5SPaXjL78ZubrHOwhnigmnbnthPXtANFhrL+apkL9KZFqG0
	eL2eyHVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNARB-0000000FaOY-2FJK;
	Thu, 05 Jun 2025 13:15:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFM-0000000FXwk-22E4
	for barebox@bombadil.infradead.org;
	Thu, 05 Jun 2025 13:03:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=fEL8yu67ECuDL4MUkMzxjpn3F/jzTo0F8aQT9RXXglE=; b=iZQgeXCSzuDEGC8R0kWaCIVg4g
	+rVbyJhcJYf1FPQkwAh0KHnz6iej3TYsqaL6xK8ggmjq61Oi8xEIfsY0Pb6TBl5t3SIzwiIa84VbR
	mtqjMa1e1ZPAmMNNOvmh0qmrBhAtraHWafBx1rYG06XK2rCUPv5C0O9TE1fqLw1ZUxkHQmoIaZSdD
	6fhARWl+U3SQD8M1JslMM6nhQkPC3qmhbkRiGTwG20vzxXa4EQqcVRV1ayk1GNI5Kz8ZZ3oCGBcn5
	P3SkusIgzXuaNg934gnS3TL4bEpuiILKv7LK3TycDg+jBGDJVTp/5FFYfgd0H1rWZeq09AgdsLirG
	d6mlA+GA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFH-00000001AJw-1DXD
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-00014K-MU; Thu, 05 Jun 2025 15:02:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFE-001xkC-1d;
	Thu, 05 Jun 2025 15:02:56 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1o;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-24-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1333;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=c+8FZ6ZKzNE47/kvWmTDNwVIYfYj+oRrSK0+QOXOjSQ=;
 b=yrJJaPnzxQE2AJy2XRCVauDqbgdaT4haGkget9u8ijBM4JTBWOA8LuUtwbySOPOdWxkzX4cbQ
 8hE4Xfb4Q0GAW+U5IZaPjWCS5Qg90Rj5fcudcK8rAZXv8L5OrzmGU4N
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_140259_400766_223423BB 
X-CRM114-Status: GOOD (  10.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 24/33] clk: add struct clk_parent_data
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



