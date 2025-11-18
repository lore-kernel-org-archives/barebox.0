Delivery-date: Tue, 18 Nov 2025 08:59:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLGca-002FnY-2Y
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 08:59:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLGca-0003JT-9K
	for lore@pengutronix.de; Tue, 18 Nov 2025 08:59:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1WFCXurOnnrzCKklG/jaqBruj6LjUV8UfTldi2itZp4=; b=T5hI+yG91DZjcoExDxREYNBv5E
	vTgYL+JnjL7S6Qwaz7s9U4d+AZSBiXDcJ26kO5xNmenDAYRjdB9Um04QiYa92b1M4mcNahBL+rKGm
	a+ZUE29XFmrP2Kbb74Tb6AcvorZtFMCbrpWhOoFMqcQoedtBPIN1D2NzAmgWGm/g2JFhvTkNUl4Tz
	SBkQLkaJK4h1IRzDWwiv0xaahxJwlv8HUzcc9UF5Ix2WLeNC3/YQ+NdPA1fTr81cSmRMr6ojjEIWS
	qT3XBJUcrfdSb7fX0m6TTy3769bp6MzcS72G1x0QVV5zZGX+o/wKak2ZChJGJLSnJsHbRSEKgByzQ
	+ujyVE+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLGc0-000000000nb-2FSW;
	Tue, 18 Nov 2025 07:58:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLGbt-000000000j0-387G
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 07:58:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGbs-0003C3-5p; Tue, 18 Nov 2025 08:58:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGbr-0012sS-3B;
	Tue, 18 Nov 2025 08:58:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGbs-0000000FMmi-1I0S;
	Tue, 18 Nov 2025 08:58:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20251117-imx93-power-mix-v1-1-102acc18ee20@pengutronix.de>
References: <20251117-imx93-power-mix-v1-1-102acc18ee20@pengutronix.de>
Message-Id: <176345272384.3662297.10684103189825486509.b4-ty@pengutronix.de>
Date: Tue, 18 Nov 2025 08:58:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_235845_786489_80670687 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX93: cpu_init: enable media+mlmix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Nov 2025 22:40:22 +0100, Michael Grzeschik wrote:
> The MEDIAMIX domain contains control and status registers for the media
> peripherals, i.e. MIPI, LCDIF, etc.
> 
> The code is an adaptation of the u-boot code in
>     arm/arm/mach-imx/imx9/soc.c
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX93: cpu_init: enable media+mlmix
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cef5f627a75 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



