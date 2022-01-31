Delivery-date: Mon, 31 Jan 2022 08:59:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERaz-001TQJ-PJ
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 08:59:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERay-0005lX-Bo
	for lore@pengutronix.de; Mon, 31 Jan 2022 08:59:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vg+UtaXIkCC4Rtr2KPnjjGNR28kVI0DTyu7g0k+HTWg=; b=Nw6nh7Mncborg/
	/pslbqsv+Tn0dR6dDtCEQvELE0fIvVtafe7xaTAu/vgNVS59CwYvfzNth/PwW1uTG/b/ZZxcDg18o
	jqR9wONgI2kmpvYcOLkmH56+eUyV1VGZ5iio3AZcfjNnxNNaQ3HrlJyBgUt4dePW5itfCoJ4Luz0M
	0kwIdrWPX5/yKwTQXPQuW9UtY3YtCkyG4AeyO+/JWsRAJyPoYsvbUfBXV8jU/6KuLN3Y0Bk3ihhix
	uE5MmMQEw9l/4iMztu4eD/6I9wGODL7oBxKJplDBP8qHLfguRh09ud501vY75F5zZTVoMfCG/1qyy
	0qQQDnTDTa2MbfblKwcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERZb-008M7b-0l; Mon, 31 Jan 2022 07:58:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nERZ8-008Ly9-MM
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 07:57:38 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ7-0005Dt-At; Mon, 31 Jan 2022 08:57:33 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nERZ6-007rHN-Ju; Mon, 31 Jan 2022 08:57:32 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 Jan 2022 08:57:17 +0100
Message-Id: <20220131075725.1873026-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
References: <20220131075725.1873026-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_235734_795288_14334043 
X-CRM114-Status: UNSURE (   8.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/12] clk: fixed-factor: add clk_hw registration functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Save users the hassle of opencoding by providing wrappers with the same
Linux semantics: names are duplicated, same arguments and struct clk_hw
is returned.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-fixed-factor.c | 9 +++++++++
 include/linux/clk.h            | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index fd4a3805f192..a6d3fdc6a14c 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -84,6 +84,15 @@ struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
 	return clk_fixed_factor(name, parent_name, mult, div, flags);
 }
 
+struct clk_hw *clk_hw_register_fixed_factor(struct device_d *dev,
+		const char *name, const char *parent_name, unsigned long flags,
+		unsigned int mult, unsigned int div)
+{
+	return clk_to_clk_hw(clk_register_fixed_factor(dev, xstrdup(name),
+						       xstrdup(parent_name),
+						       flags, mult, div));
+}
+
 /**
  * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
  */
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6a041440e399..52aeeba878e0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -551,6 +551,10 @@ struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
 		const char *parent_name, unsigned long flags,
 		unsigned int mult, unsigned int div);
 
+struct clk_hw *clk_hw_register_fixed_factor(struct device_d *dev,
+		const char *name, const char *parent_name, unsigned long flags,
+		unsigned int mult, unsigned int div);
+
 /**
  * struct clk_fractional_divider - adjustable fractional divider clock
  *
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

