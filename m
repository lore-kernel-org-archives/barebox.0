Delivery-date: Tue, 22 Apr 2025 10:39:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799q-003yZW-18
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u799g-00025N-KG
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QhkyXQ30O+bUKr3fHC7CnrpBiXQpsO15/ePXhBXQCXA=; b=IHc5bkEYxsGhIhKh8SUtrgLNFj
	KEXlhAUH1cC3vFOUi8KhqCDZz3X/7O2iLHJ04WSJK4hsXHmTVuqvErpbVvkzDffJWGiLPuT8OOKSt
	cIUF3uGu78jcetC+ZhwlkUS6xabAWj032MGMEL8WNNFS4AHKqGnwi0AGJqvbCqA7L5ecJDozIqN1C
	v/9bvRLYDc8bUzShhwmuZQd8F0b3aGfqoEPjCgBE3Oe/hNTq6J9e/tZztFgNEw0WSjWf9E/yvi44x
	ENrmNbT7f+A2qrKqCzwvBWcxgbxC/va6Z2agGiVLU65WXXoBgrrDK5naN26vt5wAIAgrYJCOylYtA
	jKPnetjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798x-00000006MSO-13Px;
	Tue, 22 Apr 2025 08:38:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78Uh-00000006CRI-1PrW
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:56:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-0000i2-84
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:56:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Ug-001Vw8-0B
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78Uf-000vQy-36
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:56:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:56:33 +0200
Message-Id: <20250422075637.220688-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075637.220688-1-a.fatoum@pengutronix.de>
References: <20250422075637.220688-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005639_386366_27AEC81B 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/7] clk: mux: fix mask/width confusion in clk_hw_register_mux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

In Linux __clk_hw_register_mux takes a mask argument, while
clk_hw_register_mux expects a width.

Align barebox with this API to fix the bugs in the STM32MP1 and STM32F4
clock drivers, which are the only two making use of this macro so far.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/clk.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 883b1a314688..74802fde4572 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -662,11 +662,12 @@ struct clk_hw *__clk_hw_register_mux(struct device *dev,
 				     spinlock_t *lock);
 
 #define clk_hw_register_mux(dev, name, parent_names,                  \
-		num_parents, flags, reg, shift, mask,                 \
+		num_parents, flags, reg, shift, width,                \
 		clk_mux_flags, lock)                                  \
 	__clk_hw_register_mux((dev), (name), (num_parents),           \
 				     (parent_names),                  \
-				     (flags), (reg), (shift), (mask), \
+				     (flags), (reg),                  \
+				     (shift), BIT((width)) - 1,       \
 				     (clk_mux_flags), NULL, (lock))
 
 #define clk_hw_register_mux_table(dev, name, parent_names, num_parents,	  \
-- 
2.39.5



