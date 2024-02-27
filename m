Delivery-date: Tue, 27 Feb 2024 13:58:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rex2L-00Abqk-1o
	for lore@lore.pengutronix.de;
	Tue, 27 Feb 2024 13:58:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rex2L-00063n-0v
	for lore@pengutronix.de; Tue, 27 Feb 2024 13:58:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WmW6iqKcrCjBCQZYaRH+LkC/yP4dtfbye00Znhaeres=; b=3LpUQSnNkz40XlQQmTzsdstiAi
	2cW9qCOgMmaDifcDC8bjdTAg+N8hrlyw3BkxCNmgLgrtD59ROJJf2cGFtybGSMOHdUo9KPHtMNpAU
	S0b7ZbpzlVc9h+qDpUIVieeb0poonx1I+3saGiND9De1mmtrWdyl3eexeWEXL4Q7kw8c37Q6JUj/w
	SqmPVjx50OcvdnHU9Y8jg07KYJae1I+w520TbR+y0NYcrF6kMQi/yovKzQvrkTlZCuhU5DG8lkC4w
	PBbG4BTpdJk+3qNlHL0mlIdWx5Wghr9xiIpzgt3oq7ALagWjblsktkxP9tIueOBSY5QfsgM3AyO18
	eLwiXv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rex1d-00000005HIZ-1AN7;
	Tue, 27 Feb 2024 12:57:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rex1Z-00000005HHk-28Jl
	for barebox@lists.infradead.org;
	Tue, 27 Feb 2024 12:57:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rex1T-0005sd-OP; Tue, 27 Feb 2024 13:57:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rex1T-003CaT-Bo; Tue, 27 Feb 2024 13:57:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rex1T-003QYe-0v;
	Tue, 27 Feb 2024 13:57:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240220114508.3685478-1-s.hauer@pengutronix.de>
References: <20240220114508.3685478-1-s.hauer@pengutronix.de>
Message-Id: <170903864728.816669.10897047996054591312.b4-ty@pengutronix.de>
Date: Tue, 27 Feb 2024 13:57:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_045733_581323_5DF4BB39 
X-CRM114-Status: UNSURE (   7.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: add bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Feb 2024 12:45:08 +0100, Sascha Hauer wrote:
> On i.MX93 the ROM API can be used to detect the bootsource. Implement
> support for this.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX93: add bootsource detection
      https://git.pengutronix.de/cgit/barebox/commit/?id=47e42821eccc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



