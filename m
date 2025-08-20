Delivery-date: Wed, 20 Aug 2025 14:30:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohxd-002cMG-2S
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 14:30:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uohxc-0001MG-Kh
	for lore@pengutronix.de; Wed, 20 Aug 2025 14:30:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FXQ15DSWG8M05+9Yxxetx5iQYMgAN7O+lj5o5apQp+I=; b=ngaFsJIpIjzdwTI//d26v+aPHl
	IVTPeZYacPzYQMC9TWSCDuOeEnlUJ+DcFIYgiLFKlvoZhjFagFROXIpxWLw+Se5Qxoii1fpDR4Hld
	UaHFDNXH6zGjrVN/gwHJdyAPiwTLy+l0vboeOLvsk6tKfqu1QVDW2M85rnRj0xeh/whwvcT+JLyIm
	+edYXcvdR0XiF2Q/Ul9wnuLQsrTkrRFAwEkpFkYTQJ7po83RZy/JFmQUOm9v5wvqiRn8lvm5UNEq7
	y7vY+ZiStxT/0w95K58Ip6n4teKlwWevq328ffX2+HTahgCv6tewLZRDCsYK4fV27SUUHGUkZTKoF
	EzpktcnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohxD-0000000DZ9h-44d1;
	Wed, 20 Aug 2025 12:30:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uohxB-0000000DZ8M-00Uz
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 12:30:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohx9-0001DL-Sd; Wed, 20 Aug 2025 14:30:07 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohx9-001FDm-2H;
	Wed, 20 Aug 2025 14:30:07 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uohx9-00HJjF-26;
	Wed, 20 Aug 2025 14:30:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
References: <20250820-rkimage-signed-v1-0-0ad3d1d1c952@pengutronix.de>
Message-Id: <175569300764.4127400.11791913690551446052.b4-ty@pengutronix.de>
Date: Wed, 20 Aug 2025 14:30:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_053009_045976_C2412428 
X-CRM114-Status: UNSURE (   9.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ARM: rockchip: add support for signed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 Aug 2025 12:16:56 +0200, Michael Tretter wrote:
> The Rockchip signed image has the same header format as the unsigned
> image, but uses a different magic.
> 
> In order to be able do boot and update signed images, barebox has to
> accept the magic of the signed images.
> 
> Extend the bootm and bbu handlers to accept signed images.
> 
> [...]

Applied, thanks!

[1/4] filetype: detect Rockchip signed images
      https://git.pengutronix.de/cgit/barebox/commit/?id=82d6bc770840 (link may not be stable)
[2/4] ARM: rockchip: bbu: accept signed images
      https://git.pengutronix.de/cgit/barebox/commit/?id=7837c6b1a9cd (link may not be stable)
[3/4] ARM: rockchip: bootm: don't propagate error from register_image_handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=5ba734b8fb15 (link may not be stable)
[4/4] ARM: rockchip: bootm: accept signed images
      https://git.pengutronix.de/cgit/barebox/commit/?id=87b9c0e8ff8a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



