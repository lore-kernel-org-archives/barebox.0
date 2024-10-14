Delivery-date: Mon, 14 Oct 2024 15:27:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L74-004Gs4-0h
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:27:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L73-0002RS-LC
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:27:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HovH4JEAehRQbjcWNyUY8SHjGuj2Ual+FrDYFamqmxc=; b=zXIhQnHn1VC7bUfipvqxMPQHvL
	DGmp5+naefqSQZ0pLuzsTEzIAXIR9/aFO9aTfTTv9G1We1tgDmNqhpbkyWDsVaAemrzXhUSwoYXhE
	v56Ht6wB3yN+f9fdDkmInZdLDsGUjfb42NBJ7v14fxvrs4eUDLxe9DZLg+yF44YxvaDGq/KiXnhYG
	aR7VyEnQamkpb/fVPy3tLcKtLylirmtA5qScj6bAmkpEsCMLXIRLTuhuP6u6hNMpK/ypxS/K9gmsI
	KJkB8MIScbm6ymEj+Uxgev7tmhqxeNTzriaRCQpB8fCQ9MemxIG7b8Q0goqipjdn458mfqTonUsq9
	JR8zROiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L6T-00000005GbV-2Fc3;
	Mon, 14 Oct 2024 13:27:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JQ1-00000004xhw-0nTz
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=HovH4JEAehRQbjcWNyUY8SHjGuj2Ual+FrDYFamqmxc=; b=M9u1dqnuprSSVkCTgRdqrcXbL9
	9uKTintEarviaoZQsM5EXfHFbIZfnW6uJog6KFhV325I0E/U/x7HU+AWGxp8qJiXQKAseLtOD1Dcu
	Pu67Yg+qGds9IYZqlxLn3zJumFCKAEYMlUyWfVJfXB1uhk0ML4vcFsD5Q06BjIPfljSIlu2lYB8+C
	x7FVVdl9N1jLeKT+b0j0uWXMRaU7lLfEojC7S0T1tBIKAT0U+ileIIVfQs/KBHlyV/paDMROuZ9kq
	OsNk2Pm0AxnnTrGEtGCJzrvKcSzCwK95zsjqSMLmr2mEwtmbYyIEoaiR+dt0jeBTABuQ7ezfhE3cQ
	THqhl56g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JPy-00000006KQB-0T1w
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:39:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPu-0000gV-7A; Mon, 14 Oct 2024 13:39:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-001mRo-QT; Mon, 14 Oct 2024 13:39:13 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0JPt-00BrES-2L;
	Mon, 14 Oct 2024 13:39:13 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:39:00 +0200
Message-Id: <20241014113912.2826190-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
References: <20241014113912.2826190-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_123918_336033_2E5327A0 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 01/13] clk: add stub definition for of_clk_get_from_provider
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compile testing drivers using of_clk_get_from_provider, but without
CONFIG_COMMON_CLK currently fails, so add a stub definition to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index ae03dcfdb2a2..7e777b67f486 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -846,6 +846,12 @@ static inline struct clk *of_clk_get_by_name(struct device_node *np,
 {
 	return ERR_PTR(-ENOENT);
 }
+
+static inline struct clk *of_clk_get_from_provider(struct of_phandle_args *clkspec)
+{
+	return ERR_PTR(-ENOENT);
+}
+
 static inline unsigned int of_clk_get_parent_count(struct device_node *np)
 {
 	return 0;
-- 
2.39.5



