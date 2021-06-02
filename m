Delivery-date: Wed, 02 Jun 2021 12:05:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNkH-0000mI-Ts
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:05:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNkC-0002Uc-IO
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:05:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yfXvNihfB4RloU5s0KeoNt2CeGsLXzSnwVsFyRQoueg=; b=TKpv3/k6NZaV9f
	+zroHv1C2W7EIqrNJYazzSXCNMWxywBx2aFM4MCv0JvPnHNjXANO9D90GB+4oDBmTkt9q5Atjq3e9
	VpPZ/8z4MiNW+uzina42bgmVewQBCEzE7fyAD+chhZ7Cz+Q1CZoZyZb1GkTm1JkEUEDP9N4EpXNXy
	bKqRvEJd+NLwrD0LGLXGh1HLE5rnuo8h/yGcmap2zzH8wOWdo0YR9fGfXNVlhbzdPhzuALT/00b/d
	IbUNZTy623Nvu3qXbX2PMpeHo3FnLvqFJdeebzvu/Nqajt7Xvwp9FBAws3Rep2/eYjGqIoRa9IsWi
	kvYllvjFe8aUvXCTrDsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNiO-00392Q-4q; Wed, 02 Jun 2021 10:03:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNas-0036KW-5y
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MI-IB; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-00039t-UA; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:54:58 +0200
Message-Id: <20210602095507.24609-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025522_300113_02BD27A1 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/24] clk: Add Linux functions to register a fixed factor
 clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux has clk_register_fixed_factor(). Add the same function with the same
prototype for barebox to ease code porting from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-fixed-factor.c | 7 +++++++
 include/linux/clk.h            | 3 +++
 2 files changed, 10 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 4f1a07c629..fd4a3805f1 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -77,6 +77,13 @@ struct clk *clk_fixed_factor(const char *name,
 	return &f->hw.clk;
 }
 
+struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		unsigned int mult, unsigned int div)
+{
+	return clk_fixed_factor(name, parent_name, mult, div, flags);
+}
+
 /**
  * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
  */
diff --git a/include/linux/clk.h b/include/linux/clk.h
index ba98c5307e..3bb7efdc61 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -509,6 +509,9 @@ extern struct clk_ops clk_fixed_factor_ops;
 struct clk *clk_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div,
 		unsigned flags);
+struct clk *clk_register_fixed_factor(struct device_d *dev, const char *name,
+		const char *parent_name, unsigned long flags,
+		unsigned int mult, unsigned int div);
 
 /**
  * struct clk_fractional_divider - adjustable fractional divider clock
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

