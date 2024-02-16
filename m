Delivery-date: Fri, 16 Feb 2024 12:58:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawrW-008Wn7-1r
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:58:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawrW-0005cC-0R
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:58:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F9D/u8dYi65v9LrcZtPhiEyJfw8wHtf4ZRJYOcXAb9A=; b=3cQLm2oR8qSnvcHmKG6pdfZrCA
	QEkAWSSgSJHKKXE8E7ua34YMQ5ltK3gLL4d52mwhIo4rAP8A8Ism4wFi0ZIZXkGjDnOMUiAiIasJr
	Km36MklU7tIvGP53cwgscDPzt/uKoRdcCo2zbdqwLHeORL9PHNKhHnNYPRmmHJvY7oMSvS/YhqDdq
	7TS2nKsNHW/Gc8twDaheq3j2CgnEBTc4khYhg9jYUrWuFzeCEJLZwKUcdFR++MUQuZPWotqXOkzVA
	fx4pfC8WxOljI2doqbxl4Dtn/V30jISb6mo/lg+3NneoS3LiEXy2gzh+59jm1tPzyIzrcJOpTRAx+
	DZnCtiTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqz-00000002Dre-40Z8;
	Fri, 16 Feb 2024 11:58:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawqw-00000002Dqx-1nAB
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:58:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqv-0005Vj-9E; Fri, 16 Feb 2024 12:58:01 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqu-00149m-Sb; Fri, 16 Feb 2024 12:58:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawqu-005uRQ-2e;
	Fri, 16 Feb 2024 12:58:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
Message-Id: <170808468081.1408563.1650929609141157630.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 12:58:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035802_498665_9F0039BE 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/6] implement i.MX93 AHAB secure boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Feb 2024 16:17:38 +0100, Sascha Hauer wrote:
> This adds support for AHAB based secure boot on i.MX93. The user
> interface is integrated into the existing hab command used for ealier
> i.MX variants. On i.MX93 the hab command can:
> 
> - read/write the SRK hash
> - lock the device
> - show lock status of the device
> 
> [...]

Applied, thanks!

[1/6] hab: drop incomplete i.MX28 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=03980be2951c (link may not be stable)
[2/6] hab: drop i.MX35
      https://git.pengutronix.de/cgit/barebox/commit/?id=7ebceef3cb18 (link may not be stable)
[3/6] hab: cleanup hab status printing during boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b70430c3e79 (link may not be stable)
[4/6] hab: pass flags to lockdown_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=948cf279f844 (link may not be stable)
[5/6] ARM: i.MX: ele: implement more ELE operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=73dfdaa3148a (link may not be stable)
[6/6] hab: implement i.MX9 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=d8d5dc85ede0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



