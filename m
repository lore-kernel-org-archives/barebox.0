Delivery-date: Fri, 16 Apr 2021 11:59:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGP-0001Bs-1q
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 11:59:49 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXLGO-0006ws-61
	for lore@pengutronix.de; Fri, 16 Apr 2021 11:59:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZIv6lPlqsCJ3NkNs7u1mdrAc3lMKGSdcUfJYc3+s28Y=; b=GxCFlKeZybL9szMnXtp3mR+XM
	TtI/uuwZixtxoDaPP4gRA0tbNCluVMrtG7D+W7ryDFbiVwAu11jq3xX1YekLQ6kEXA/dLYLn3RM6L
	56mzYUwW4uFtjE/9QDAMEwGGiUx/2MKJz56cmNtuIKVP61oS+VS+B4iJY/vD8pnfMICcobJVrE2j3
	bfwZQRV40leu3Htb3oW2Tc2k0dgB17t08LvPvet+VA6As7QrkdQ3ZZ0yiGuu7pQR3GSnNPLAlAERt
	dycFHe7AdBif7mDZu8iR0V951mBra1+8m+pDATsVCTqJFn0usZ+LIrhaM5J3bXw8w582o5E4mvuQA
	pfVOAmmLw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXLEm-001eHJ-CB; Fri, 16 Apr 2021 09:58:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7R-001cV8-6c
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 09:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=3L/g2Tcidi7HpFT2+5AoD9cuuwyBLTrD3877Ujyep8c=; b=yUNfjHycWH8YZyuqmtP9b+jb8K
 RPgt0lQ6HgiU73rPcjK88y/SUvDgp1zvVk/lqhx8cEsy3EzHp+NNq/sZ9GC/hm8RNPztzApWhL4eS
 HknSg7e23S7N7GYeZf7L3J2WAFrpQqStwu4+cIIcWdxpme9H/tX269k1QiH/nLNtODqckLyIAPOqT
 kQMiz8cCqa+aBjivKTQXWIf4K1nVaxPU+vB6T6uGv4rmaxfE6LcvRxh2HCcOMt9+i//AY9IWlFtN8
 4DunOUU8YgWO/W3hGHhajH1j43ITiqvP+vkWmQWtigxQSAmqqMmmqjkRVhPAJDArclBgeB2N9N4VM
 dawTPHWA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXL7N-009Fyc-KI
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 09:50:32 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7E-00051Q-6w; Fri, 16 Apr 2021 11:50:20 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lXL7C-0001Dp-TU; Fri, 16 Apr 2021 11:50:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Apr 2021 11:49:37 +0200
Message-Id: <20210416094943.3648-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210416094943.3648-1-s.hauer@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_025029_719743_1D57EAA8 
X-CRM114-Status: GOOD (  11.74  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/17] common: Explicitly probe consoles earlier with deep
 probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep probe support the device providing the console can come quite
late in the probe order. Make sure it's probed at postconsole_initcall
time as it used to be without deep probe support so that we get output
earlier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 4b79a9bc10..6b6f904573 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -515,3 +515,20 @@ int of_devices_ensure_probed_by_property(const char *property_name)
 	return 0;
 }
 EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_property);
+
+static int of_stdoutpath_init(void)
+{
+	struct device_node *np;
+
+	np = of_get_stdoutpath();
+	if (!np)
+		return 0;
+
+	/*
+	 * With deep probe support the device providing the console
+	 * can come quite late in the probe order. Make sure it's
+	 * probed now so that we get output earlier.
+	 */
+	return of_device_ensure_probed(np);
+}
+postconsole_initcall(of_stdoutpath_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

