Delivery-date: Mon, 05 Feb 2024 08:47:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWthK-003xSM-32
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 08:47:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWthL-0003iW-Ki
	for lore@pengutronix.de; Mon, 05 Feb 2024 08:47:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E9sWDHo5U9gsoJg4CRRoCw6amtFxrCO/doYfZDKgR5U=; b=MryDa+OpErszbOqAeQ0Mk/38mC
	wDPoHcEEv4sCES3+AO1OWLVvlW/qvhcqVYbsKhm4YLbOm1T00SYuvRAIYms4YmjtIvlT1AQEhFyqH
	bvCvbk/zgcst7m7Lfu0eoqOVejDHD+T5uA4aNmtAaqBvWar/W/9rkdLjk2azr/syjgwkZSzvxH/lB
	Q59tYF3lfuTDphjKTCWE+c+dv+udvFTj93p3we6zfP8AF+ElxQ7hpbbOUQ7mtdYWM7vME5gzgvJNN
	0PekmcahL87gq6s07o3mzlfDPTnE0BGujcL4EHYrHJSE/5e9qR/AoEMLLigY9IbiNvGMFtYPyKiZG
	Enj0nGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtgz-00000002LIb-1wPW;
	Mon, 05 Feb 2024 07:47:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtgu-00000002LGt-04iZ
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 07:46:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtgs-0003V4-QQ; Mon, 05 Feb 2024 08:46:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtgs-004aUv-Dy; Mon, 05 Feb 2024 08:46:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtgs-008QDw-1D;
	Mon, 05 Feb 2024 08:46:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240131083446.673104-1-s.hauer@pengutronix.de>
References: <20240131083446.673104-1-s.hauer@pengutronix.de>
Message-Id: <170711921437.2007402.2549829238797888860.b4-ty@pengutronix.de>
Date: Mon, 05 Feb 2024 08:46:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_234656_227818_E398FD32 
X-CRM114-Status: UNSURE (   7.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX defconfigs: Enable ELE nvmem support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 31 Jan 2024 09:34:46 +0100, Sascha Hauer wrote:
> The ELE nvmem support is needed on i.MX9 for reading fuses, especially
> for reading MAC addresses from the fuses. Enable it in the relevant
> defconfigs.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX defconfigs: Enable ELE nvmem support
      https://git.pengutronix.de/cgit/barebox/commit/?id=56a38966bb30 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



