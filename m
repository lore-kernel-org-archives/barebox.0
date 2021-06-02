Delivery-date: Wed, 02 Jun 2021 12:02:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNi2-0000is-KW
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 12:02:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loNhw-0001zi-TG
	for lore@pengutronix.de; Wed, 02 Jun 2021 12:02:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HevGyeEK0JDTWRGqszd87ULVx1MLQqnBrHtoARGyoVs=; b=aJb4vaXWy6fici
	AAp8fQQyTEJ48rlbc+8pypGG5dI4lX9mAROoi1uSpFNX1PvYz00oJpZtMURn5MXgzi2F4qjb18Ips
	2B2I3lS0txnzxr6R/lUTYrKB1AYUhSyZgMhWx7qvRSWKjqXxXzDHx91niROlysbwW1JV/TAlPr5fr
	W3YSMEae4mVmphz7bK+CVZBVrE9poB7f3CC/oOwhmq7y02BRxEDz0vFR+/e7V0Ifh8wEjF5kzEWoP
	qqVl210DafFv9J34hivleydXSaKAv/4UkmWjTir2cGy3FRLFAIgPpMjxDvnX9MmxxWgp4CT3CRE4a
	vwPUB+3FnQd7bXEKXozA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loNg8-00386F-UX; Wed, 02 Jun 2021 10:00:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loNal-0036Fa-BX
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 09:55:20 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNai-0000MN-Ib; Wed, 02 Jun 2021 11:55:12 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loNag-0003AD-W6; Wed, 02 Jun 2021 11:55:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 11:55:03 +0200
Message-Id: <20210602095507.24609-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602095507.24609-1-s.hauer@pengutronix.de>
References: <20210602095507.24609-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_025515_681325_B823FBB0 
X-CRM114-Status: GOOD (  15.05  )
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
Subject: [PATCH 20/24] clk: implement CLK_SET_RATE_UNGATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some clocks need to be turned on in oder to change their rate. Implement
CLK_SET_RATE_UNGATE to support these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 12 +++++++++++-
 include/linux/clk.h |  1 +
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 74e2f5d783..fe2424dc8a 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -172,6 +172,12 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (!clk->ops->set_rate)
 		return -ENOSYS;
 
+	if (clk->flags & CLK_SET_RATE_UNGATE) {
+		ret = clk_enable(clk);
+		if (ret)
+			return ret;
+	}
+
 	parent = clk_get_parent(clk);
 	if (parent) {
 		parent_rate = clk_get_rate(parent);
@@ -179,7 +185,7 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 		if (clk->flags & CLK_OPS_PARENT_ENABLE) {
 			ret = clk_enable(parent);
 			if (ret)
-				return ret;
+				goto out;
 		}
 	}
 
@@ -190,6 +196,10 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 	if (parent && clk->flags & CLK_OPS_PARENT_ENABLE)
 		clk_disable(parent);
 
+out:
+	if (clk->flags & CLK_SET_RATE_UNGATE)
+		clk_disable(clk);
+
 	return ret;
 }
 
diff --git a/include/linux/clk.h b/include/linux/clk.h
index d53699a874..72971c8e27 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -335,6 +335,7 @@ static inline void clk_put(struct clk *clk)
 #define CLK_IGNORE_UNUSED       (1 << 3) /* do not gate even if unused */
 #define CLK_GET_RATE_NOCACHE    (1 << 6) /* do not use the cached clk rate */
 #define CLK_SET_RATE_NO_REPARENT (1 << 7) /* don't re-parent on rate change */
+#define CLK_SET_RATE_UNGATE     (1 << 10) /* clock needs to run to set rate */
 #define CLK_IS_CRITICAL         (1 << 11) /* do not gate, ever */
 /* parents need enable during gate/ungate, set rate and re-parent */
 #define CLK_OPS_PARENT_ENABLE   (1 << 12)
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

