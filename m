Delivery-date: Wed, 25 Mar 2026 12:48:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mim-004uF1-0c
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 12:48:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5Mil-0000JD-IG
	for lore@pengutronix.de; Wed, 25 Mar 2026 12:48:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ghpirbFt6iMEznSdAxi90aQ+KKQeW72nU/N07Ffgy2s=; b=LRTVqQUrPpJ2ogyXHKAJVh5/58
	dSX1dHVjbWPuo7ITikhhrZm6nnBOv5etemAKX2EQILLWw1ZRp+p1eNgTl48U+GI1jma7Pk7yjnq95
	m8vYP7BgnlSsoB5JyDClggJJETO8SANttJlwE6Tyt4Od43c7IWgoOrK9i5GR8UxW6osA2P+1perQG
	3HoBl5e8ewxAtbyMPy1Q+7DFf3HfL5T4p4Bdnz7rg4hDhr8Xs4/kX6J6Y3HwgpsIPslWJz8kKQ9xm
	mrLw7/tK1J0Ts5Uxv+1FAAU656Pdav5NR5Su+gUyDOZVVR9l9TsbyBVCWMQozY+uJmOPHS5Ga4jI+
	hVVJDR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiN-00000003Iha-29Ty;
	Wed, 25 Mar 2026 11:47:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5MiK-00000003Ifk-1dRM
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 11:47:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00005f-NL; Wed, 25 Mar 2026 12:47:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-0023MF-1f;
	Wed, 25 Mar 2026 12:47:54 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5MiI-00000009hXd-1jSY;
	Wed, 25 Mar 2026 12:47:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 25 Mar 2026 12:42:47 +0100
Message-ID: <20260325114753.2249763-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
References: <20260325114753.2249763-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_044756_422951_D93030C0 
X-CRM114-Status: GOOD (  11.00  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] clk: ignore -EPROTO in clk_get_enabled_if_available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Getting an SCMI clock can succeed with failure being postponed until the
driver attempts to enable the clock, at which time -EPROTO is returned.

Have clk_get_enabled_if_available() ignore that error code after
printing the warning, so the system can at least reach a shell.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1cb8a1898e10..dc96a584398c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -1292,7 +1292,7 @@ static inline struct clk *clk_get_enabled_if_available(struct device *dev,
 	ret = clk_enable(clk);
 	if (ret) {
 		clk_put(clk);
-		return ERR_PTR(ret);
+		return ret == -EPROTO ? NULL : ERR_PTR(ret);
 	}
 
 	return clk;
-- 
2.47.3



