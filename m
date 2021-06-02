Delivery-date: Wed, 02 Jun 2021 12:00:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNfz-0000f7-OH
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:00:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNfu-0001Ir-MD
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:00:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oEKlXutikQgJ7giSjkSdAkuSPvo8xoBxGuh06xV8Vt0=; b=a2SXw0QJs7/9OG
	Jd23g0htRQ/BcdN6G5IbrY5cAoJa5njg8prOoFBn4sCN6FSLdAP3PvyYFTvdV6v/6b3ARb8ePl9NE
	1UB+v5uygA3jG6/TDbG8yWoyOmgKhdvrXl8EMAQSje7ZnNDRmdJNSflmZ8rpnDCt/ScrmIQJP2vSF
	PQtX6W4tIscemUGL03na5fpCJpg/+mHR6uvndpLCyZPUXunIzpAps5VaC/W8Ngg0HKnF4UC0XCpum
	D2xrZjJDMccI/3n2Oj91L2B1hw42hJqCzo5Ye3KUbsA09LiM7JQMuqTvFO9wXO+2lUNU1zWTaCirk
	JB/WGIIBRFO4EBACjf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNeK-0037ND-Fx; Wed, 02 Jun 2021 09:58:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036Fe-BU
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000ML-LN; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-0003A7-VH; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:01 +0200
Message-Id: <20210602095507.24609-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_463019_AF0E9B81 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH 18/24] clk: Add CLK_GET_RATE_NOCACHE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Just add the flag. We don't need any implementation of this flag as we
do not cache the clock rate anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/clk.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 0d2fb488bc..c49604fe2d 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -333,6 +333,7 @@ static inline void clk_put(struct clk *clk)
 
 #define CLK_SET_RATE_PARENT     (1 << 0) /* propagate rate change up one level */
 #define CLK_IGNORE_UNUSED       (1 << 3) /* do not gate even if unused */
+#define CLK_GET_RATE_NOCACHE    (1 << 6) /* do not use the cached clk rate */
 #define CLK_SET_RATE_NO_REPARENT (1 << 7) /* don't re-parent on rate change */
 #define CLK_IS_CRITICAL         (1 << 11) /* do not gate, ever */
 /* parents need enable during gate/ungate, set rate and re-parent */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

