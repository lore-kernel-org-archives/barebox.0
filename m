Delivery-date: Thu, 06 May 2021 11:31:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMH-0001aI-NH
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:31:49 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaMG-0000ox-DS
	for lore@pengutronix.de; Thu, 06 May 2021 11:31:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VnPLg2Dr3stdcKhorlQR0opzfewSF6wfNhbAk/V5b5A=; b=OeB3pl6nEIZqnXeae3JbGHcvo
	gxrjpaM9BdH9MifdRNbvhfW2PF0/LDFSRsqgs68eJEULL1nGhD/4fGUefye1HJDe8wkdY+LiIOg5G
	ueaHnka6Tk/mdZUhvJrum7kzO8suqlG7wzoQe1s0IRVEvJsc5WhV4rLNz9Z3MWJ9C4bMI/bajOr+W
	w04ctlsCCFFY0qIPV1Ads0eSKjtg75IG3AS37p/MsdXwUkvbeMGy9DIXzYuWjI3kCyKG0KJ1t5Jco
	RrSg2PgnLgDHUST7Z+fvMTeIcxUaYppgBHtpmRDnAa0JBZdK3VqWSWHUnDtgTO2xg3j5nVEs9BI7d
	wwKMWqv6w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaL4-003oOJ-M6; Thu, 06 May 2021 09:30:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJo-003nsf-KL
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=SsqJ+md9DzpRrBBtfjsnRWDsX31kLA+Zeb9as92XTw4=; b=AfumNDDJxD8qxBeE+C8Popw8FY
 YTG1yOMJod6McAkeNNRGsawDDtKsbnvX+Mm3LxY9Yve6e+MPzUhEFhTS5+Skz/vgSYdpR+mLKQhX5
 UcF/Ec8K20l3f+dyGDY2jQa8hTpscE8+w0Cd4wCdj1RBbYYV3pK64V4TRdJryuCrEeXnU64ks+fs/
 EChXnlc118knIAfWG1UdinCchzoCEbmP89irOOo5JdE+Rx/lO2RyC6tqdpb2eFS15H4QWdeEK7ae/
 6NwXavT30QOkqhRrNlUE9/wVrTrHK9OMHBYVGS2CpJYO2dWdZh27gYXezYOsrC/nxfOPyOgUqMzLO
 RkBJSZOQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJk-005uIk-TB
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:15 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pI-IZ; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lm-IV; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:58 +0200
Message-Id: <20210506092901.25461-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022912_987291_61F0CBF6 
X-CRM114-Status: GOOD (  12.44  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/17] ARM: stm32mp: ddrctrl: add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

In case of deep-probe we have to ensure that the memory device is
available after the mem_initcall().

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-10-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-stm32mp/ddrctrl.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-stm32mp/ddrctrl.c b/arch/arm/mach-stm32mp/ddrctrl.c
index 646fe4401a..9687747b3b 100644
--- a/arch/arm/mach-stm32mp/ddrctrl.c
+++ b/arch/arm/mach-stm32mp/ddrctrl.c
@@ -148,4 +148,14 @@ static struct driver_d stm32mp1_ddr_driver = {
 	.of_compatible = DRV_OF_COMPAT(stm32mp1_ddr_dt_ids),
 };
 
-mem_platform_driver(stm32mp1_ddr_driver);
+static int stm32mp1_ddr_init(void)
+{
+	int ret;
+
+	ret = platform_driver_register(&stm32mp1_ddr_driver);
+	if (ret)
+		return ret;
+
+	return of_devices_ensure_probed_by_dev_id(stm32mp1_ddr_dt_ids);
+}
+mem_initcall(stm32mp1_ddr_init);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

