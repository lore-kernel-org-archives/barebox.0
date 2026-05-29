Delivery-date: Fri, 29 May 2026 13:44:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvdb-000AcF-1z
	for lore@lore.pengutronix.de;
	Fri, 29 May 2026 13:44:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSvda-0000fb-Re
	for lore@pengutronix.de; Fri, 29 May 2026 13:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ef1yeJ1KaG3Z/F+Fhp/mh2VQ9I6OlOPmFTA5Q/FJp6o=; b=JZNFJB/DAWNTz+x5o5nICytNk5
	gt3L0sTyFfqEqekS7HKq3daq07qcCS8r0KqiNXyNtKxy3FzTw/LKfpM4BIEhSz6j01odKV1ECXHRY
	oTvgxEkN1FTGLhvaydOnjPP2PuWEVJ0F/uuQu09GvtGjlEvAu9wAW4lLqtk9/efFoFA1VeBcV1Dj1
	Ijy6WXD35u4k38lKxlsRAXC7rzcOg1yhCCBOBmx1JzboaSyfu9BWQSG9n6IIIh1ywurX6kJUKpfcO
	8Mc6mTHBp11czcbHYmekNXkH9np/Da00sgCUjOebxwPC3V8JA2yAXfWJHfHd6hI1QV8/UJ07t/w4/
	AAA7blvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcP-00000007Ink-195D;
	Fri, 29 May 2026 11:43:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSvcM-00000007Ime-2OID
	for barebox@lists.infradead.org;
	Fri, 29 May 2026 11:43:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0000Pg-OZ; Fri, 29 May 2026 13:43:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0005Jr-1r;
	Fri, 29 May 2026 13:43:06 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wSvcI-0000000At1O-28f1;
	Fri, 29 May 2026 13:43:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Miaoqian Lin <linmq006@gmail.com>, Heiko Stuebner <heiko@sntech.de>
In-Reply-To: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
References: <20260528121532.1242489-1-eagle.alexander923@gmail.com>
Message-Id: <178005498650.2594741.1926401683699308544.b4-ty@pengutronix.de>
Date: Fri, 29 May 2026 13:43:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_044310_634147_48522499 
X-CRM114-Status: UNSURE (   4.62  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH] clk: rockchip: Fix error pointer check after
 rockchip_clk_register_gate_link()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 May 2026 15:15:30 +0300, Alexander Shiyan wrote:
> Replace NULL check with IS_ERR_OR_NULL() check after calling
> rockchip_clk_register_gate_link() since this function
> returns error pointers (ERR_PTR).
> 
> 

Applied, thanks!

[1/1] clk: rockchip: Fix error pointer check after rockchip_clk_register_gate_link()
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a11a80667cd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



