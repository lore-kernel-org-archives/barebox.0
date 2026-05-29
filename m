Delivery-date: Fri, 29 May 2026 13:44:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdc-000AcV-02
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 13:44:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdb-0000gf-FN
	for lore@pengutronix.de; Fri, 29 May 2026 13:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eJ/IRvjvlQ3e7ecAIIPgXGUw844vTDXsSYnQfL1y1Sk=; b=vbRhkm//q2fpvqFmGaua88Pqgk
	bmk9gk0fP/EMsW6kjykC5FwSV4QUekI5GprT9YW1IDF9tO1BgZobQdhWUeImWj5+XJYC5rtaq9pAc
	sFmkoPzDRluZRtQWGeIkhMT2LRc1dFPrObYd6Qdbgan8pv1BiIbNL3ar/luaVBWJAWDWKj470IdPD
	GDtK3m1jACSunUnN0h1vWUo4L5sp4t85hZBhXlNj5B7xUrL+ySr+U3zLj6X2PfCc7kO28uYbHu0Sz
	+gtFgQFaEvMs4hVoO1zLlP0vXnTV2iXgcf+12SWJG1sbr5RqqoSH3OzVqOkNs7lbaptFGuGAHf+Pf
	BY+bUtPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcR-00000007Io9-1xFe;
	Fri, 29 May 2026 11:43:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcM-00000007Img-3xJf
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 11:43:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcK-0000Pe-V8; Fri, 29 May 2026 13:43:08 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0005Jp-1n;
	Fri, 29 May 2026 13:43:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0000000At1O-21ky;
	Fri, 29 May 2026 13:43:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20260528121532.1242489-2-eagle.alexander923@gmail.com>
References: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
 <20260528121532.1242489-2-eagle.alexander923@gmail.com>
Message-Id: <178005498647.2594741.7637751783109083704.b4-ty@pengutronix.de>
Date: Fri, 29 May 2026 13:43:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_044310_984406_ABCA1B16 
X-CRM114-Status: UNSURE (   6.12  )
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
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PCIe pipe clock gates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 May 2026 15:15:31 +0300, Alexander Shiyan wrote:
> The PCIe pipe clocks are currently left as orphan clocks and remain
> enabled indefinitely, which is suboptimal. Add the missing clock gates
> so the PCIe driver can explicitly manage them when not in use. In order
> not to break compatibility with old DTB, mark them as CLK_IGNORE_UNUSED.
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3568: Add PCIe pipe clock gates
      https://git.pengutronix.de/cgit/barebox/commit/?id=28f3a11c9a73 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



