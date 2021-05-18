Delivery-date: Tue, 18 May 2021 13:51:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFf-0004Bd-AP
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:51:07 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyFe-0001pK-BJ
	for lore@pengutronix.de; Tue, 18 May 2021 13:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=thZu0mU2dAWhgjpRanWn+vKEsbkOqYd8lRJmsY3kVug=; b=OTUndkUhM5AHcrXqby8WwE4Kk
	09H6ieLHcA12dUYbKvJOoM83+GwCz/+HINZDV+sl9Snyw1ExAhcWww3LzFSCN3JTLavMp1DptNHPp
	VW3l1AoBiSzxRjkaERmchEWPwXyrinwI6FrzeZm+awZZYMFSYLRa2T4LlDhR877yLgB0DnNUWVuS+
	vFjJU+NEiykRc3Hv6tLaOtUMb/Ecqzvcqu0ViW2qQSdGV71fCoJA05S0R9bET59pJsVnbHBYJQIq9
	CHURDtnqWTZakpVKIJoqV1sT02IYcW0JyITlocAPSrg8LexPre81bfT5cA7P/ryyaMTV3akShyREQ
	bojTiA94g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyEm-000dmu-NZ; Tue, 18 May 2021 11:50:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEC-000dcV-8i
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=QmmSsVVLb2bQC8SBduSwGvpymXbi61C3XIAtyQ6LxSQ=; b=OA9J9yiUgmEcYP3Ov/FEv5fiE5
 nI4/aSgVic2xUyL2pXnpNlWiQ+71sXuQd2/Ac/+budu3nsCQ28dn9QGSVQXGHEy8T7xaU/vxG65cL
 gEbMsKFglyqiC6aqyVbZ2MATgZPHH7yBBDvbWz8Fi3IMJt03FGFJjJ//AYZDbXd5eSHzUJji/A/Ad
 LYWRjV/gyIv/11mcUcOOWX7HRkox3lblEJ4Li/B/99DPeNBZPalLlvSgnzJfoezl774zMnqIGx7mc
 3RNmeH2b0aILD35EFKFdw1f3mAEZk9HIoRoVq1XaTULuL6YzLAR2rCzzRmvMYGqojAabU/y+KfwUl
 S5yHCeMA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyE8-00EcHc-FJ
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gw-6U; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015P-EE; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:27 +0200
Message-Id: <20210518114929.12964-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044932_552559_28FFA6E1 
X-CRM114-Status: GOOD (  10.60  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/14] clk: Add Linux functions to register a fixed factor
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
index 04dd4b0116..01bda4d94f 100644
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

