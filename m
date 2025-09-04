Delivery-date: Thu, 04 Sep 2025 10:54:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5jK-007yc4-2F
	for lore@lore.pengutronix.de;
	Thu, 04 Sep 2025 10:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uu5jJ-00038X-Ip
	for lore@pengutronix.de; Thu, 04 Sep 2025 10:54:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGB7Gcc0wJTz8YC5d7/MYUbjaMpxSsBwh4s/jT8m1+w=; b=oCRmAM2Z7OUZfkOScCKzVeDbxP
	4rKWkqDwE2riI4hiNuKnNgTFnrzyeMertic1GnS4gVNF+Nn0w3rbvnBQUko9jXVkPNXWyUcSa6BtE
	1t9scc+Uj6IGn8MdfnFh5coMr/1i2eoEY2vFnzgWDdp6zCez1ce6rT6IDs8T8G94vj38m18iOBW5B
	eXLi08JXVU18rN1TIKCHGP+/oQ3nYljwUSdJcsLEY3elfYvlFk+lnvx7zF/FUCGuxPS8YFOrpyWWu
	l47BeSOcUbSbsPfcAm9GJv5rRYWv5p4NZS5TsSce2b1dL0dRU74Szvj8oJG4jx+/T9Z+ADCqR3i6c
	3nMOHh7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu5ii-0000000AN9Q-3hrd;
	Thu, 04 Sep 2025 08:53:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu52o-0000000A6dw-1y3c
	for barebox@lists.infradead.org;
	Thu, 04 Sep 2025 08:10:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu52l-00076k-OW; Thu, 04 Sep 2025 10:10:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu52l-003hDh-1s;
	Thu, 04 Sep 2025 10:10:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uu52l-0000000DGgO-2BTe;
	Thu, 04 Sep 2025 10:10:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250904073140.4091593-1-a.fatoum@pengutronix.de>
References: <20250904073140.4091593-1-a.fatoum@pengutronix.de>
Message-Id: <175697340751.3162327.17885572469826820834.b4-ty@pengutronix.de>
Date: Thu, 04 Sep 2025 10:10:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_011010_512656_BB4755E0 
X-CRM114-Status: UNSURE (   6.32  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: sunxi: drop select of undefined
 CPU_SUPPORTS_64BIT_KERNEL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 04 Sep 2025 09:31:35 +0200, Ahmad Fatoum wrote:
> We define this symbol only on MIPS and RISC-V, so it's safe to remove on
> ARM.
> 
> 

Applied, thanks!

[1/1] ARM: sunxi: drop select of undefined CPU_SUPPORTS_64BIT_KERNEL
      https://git.pengutronix.de/cgit/barebox/commit/?id=06d4c4a994b1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



