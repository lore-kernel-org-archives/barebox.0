Delivery-date: Wed, 22 Apr 2026 10:04:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSZP-00F1Wp-0K
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:04:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSZO-0004Cx-Jt
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:04:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ilRxENyy/wZ+ziO2eeo7dlcK2CNCOpj/G8ijAwTPnFs=; b=M3DAvduxtJ6eJ4VekLooRQ0fyJ
	5nuV7b5gmUZSbWeUPv72fKY1y9zN9wxHaBfM9ala9M9MdRN5baDMgEFeRQGXTMbGpOmxem93zJnol
	pH8LDLDyQ+jVfWGZOFi0Xnx0YenAVG9VQCEKo08diSwrwnMm843zxbrBo9onk+oiIj35xwkM7Q1CH
	AO5Yw98MNBIByGEkRD0SkDHwlEj5VwXTTnxEIZQrftwh2XIJbW3RcC0QUoPGXQsde/NeFKt2J6MuD
	XC+P16BEAPvH2MJnTPqk+ZS+yAwsTQbm9BF4e7G+wsjuhcwJZJ0hu+YGJcLra40WB0Shv4+TRf8bV
	7KtQQKiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSZ2-00000009kjN-050v;
	Wed, 22 Apr 2026 08:04:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSYz-00000009kj1-0KmV
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:04:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSYx-00046F-IQ; Wed, 22 Apr 2026 10:03:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSYx-006dDC-1D;
	Wed, 22 Apr 2026 10:03:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSYx-0000000AMAB-1L9R;
	Wed, 22 Apr 2026 10:03:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260417122004.2030708-1-a.fatoum@pengutronix.de>
References: <20260417122004.2030708-1-a.fatoum@pengutronix.de>
Message-Id: <177684503931.2468336.14350193770129656230.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 10:03:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_010401_988783_F03312A8 
X-CRM114-Status: UNSURE (   7.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: stm32mp: stm32mp135-dk: disable button on
 PA13
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 Apr 2026 14:20:02 +0200, Ahmad Fatoum wrote:
> After update to the v7.0-rc1 device trees, boot up on the board
> reports following error:
> 
>   ERROR: gpiolib: _gpio_request: gpio-13 (led-red) status -16
> 
> This is caused by the combination of following two upstream kernel commits:
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: stm32mp: stm32mp135-dk: disable button on PA13
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce99330b64f3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



