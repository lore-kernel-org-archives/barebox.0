Delivery-date: Mon, 27 Nov 2023 07:51:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSu-00Aeu9-1v
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSu-0001Cc-L9
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ptHZ3teQgLN8SrpDezNCvscYpiPB+FRkwz4AfbpTMFE=; b=UeiCQj7y8H9Pb68djTp22mAvbi
	e/+7PLmTeU3wdbQKUA+ci03Y6zCMqd6a8ih30XsvND9DOoWCDMj7LyxPenKwGop8NpWzA9gKmBswV
	rUVcgf1S5Vk+eXnyKIhNc2bD2z9GQ3LpbktBjoi6cZ0wnyyPe+LLjEu4fv+6SALGi86V7jcXZNGOi
	ps8+oaI862EIXSgu4wSBf/fv4LX6NX5tpsZiCbM3OSWxbTDsUk0RpnBbDweDHtFPPBzn3rIAKCvfY
	Uh+pO2hhuPfS2aw87rXlX3fPfjwKNQGhxSmD5NoZ2bHjTmiw5Fcr6J17vZhPIgxfmCKKB+xIRYxqa
	ty/Y6lpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRa-001bdH-1E;
	Mon, 27 Nov 2023 06:50:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWI-1T
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dG-AM; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsit-UB; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2l;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:38 +0100
Message-Id: <20231127064947.2207726-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_672273_F445454B 
X-CRM114-Status: UNSURE (   9.72  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/13] clk: divider: implement CLK_DIVIDER_ALLOW_ZERO
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already support CLK_DIVIDER_ONE_BASED and incoming STM32MP13 clock
support can have clock dividers evaluate to zero. Add support for
CLK_DIVIDER_ALLOW_ZERO analogously to Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk-divider.c | 6 ++++++
 include/linux/clk.h       | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 1eaff1675b24..150b1fe60fd4 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -88,6 +88,12 @@ unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 	unsigned int div;
 
 	div = _get_div(table, val, flags, width);
+	if (!div) {
+		WARN(!(flags & CLK_DIVIDER_ALLOW_ZERO),
+			"%s: Zero divisor and CLK_DIVIDER_ALLOW_ZERO not set\n",
+			clk->name);
+		return parent_rate;
+	}
 
 	return DIV_ROUND_UP_ULL((u64)parent_rate, div);
 }
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 9975c1a601c4..269664b0ba63 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -417,6 +417,7 @@ struct clk_divider {
 #define clk_div_mask(width)	((1 << (width)) - 1)
 
 #define CLK_DIVIDER_POWER_OF_TWO	(1 << 1)
+#define CLK_DIVIDER_ALLOW_ZERO		(1 << 2)
 #define CLK_DIVIDER_HIWORD_MASK		(1 << 3)
 #define CLK_DIVIDER_READ_ONLY		(1 << 5)
 
-- 
2.39.2



