Delivery-date: Mon, 25 Aug 2025 13:42:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVav-004Lb0-2V
	for lore@lore.pengutronix.de;
	Mon, 25 Aug 2025 13:42:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uqVau-0007pa-KG
	for lore@pengutronix.de; Mon, 25 Aug 2025 13:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MVYCfK9HJFW7ulkHc41vZ9lI5s104ntZm3LRFQOT5K4=; b=NeaPDVSfs1u2lWvTCvWNkvhsH3
	WxfOtCnUMlCY2OxJjIC7hUKOh09Tb9RWrNjv0rgTYIgrlZe9fUUQrtBXj5nsSkbsn6Yq2IUAp2RQF
	/wRFRiunIWHA4jH7vEvSIEHpumBUUAhwbOYLXfh0r9pipjCfqYATpaLx0fWZ/k3BQHa1MtDqy4K23
	4/lV55aY1MsLniHTM/NYiS2US0A9V5XfsV6Pd1gBKA6lrwuM+z4VU8no66cR9edftfGg/2v/s6Put
	QrKZ7wbjPRBjeOfmlNeq2Bjoqf1QSdY2jtxSWBJuSS33SkZhtWs3qL7PMHMzrnWIxgcksiT+TjEF/
	KqYUywgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVaO-00000007nKQ-3PR7;
	Mon, 25 Aug 2025 11:42:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqTs6-00000007Yvr-27sf
	for barebox@lists.infradead.org;
	Mon, 25 Aug 2025 09:52:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqTs5-0003hl-AK; Mon, 25 Aug 2025 11:52:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqTs5-0022tB-0R;
	Mon, 25 Aug 2025 11:52:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uqTs5-000000035wX-0LA7;
	Mon, 25 Aug 2025 11:52:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250821-sign-rkimage-v1-1-910d74532724@pengutronix.de>
References: <20250821-sign-rkimage-v1-1-910d74532724@pengutronix.de>
Message-Id: <175611553307.737812.3039242953453701701.b4-ty@pengutronix.de>
Date: Mon, 25 Aug 2025 11:52:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_025214_546454_A6EFA6FD 
X-CRM114-Status: UNSURE (   8.75  )
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
Subject: Re: [PATCH] scripts: rockchip: implement image signing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 Aug 2025 17:37:36 +0200, Michael Tretter wrote:
> The header of a Rockchip signed images contains an RSA public key and
> the signature generated with the corresponding RSA private key at the
> end of the header.
> 
> Since barebox already creates the header for the Rockchip image, adding
> the signature in the rkimage tool is very convenient and avoids the need
> for a separate tool for signing.
> 
> [...]

Applied, thanks!

[1/1] scripts: rockchip: implement image signing
      https://git.pengutronix.de/cgit/barebox/commit/?id=54da6347b273 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



