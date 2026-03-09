Delivery-date: Mon, 09 Mar 2026 08:51:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVOJ-009fzu-1F
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 08:51:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVOJ-000819-O3
	for lore@pengutronix.de; Mon, 09 Mar 2026 08:51:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=niD05egvMFSTk0/9clCxo0E974XHRldPrKJ5BTu6Woo=; b=QNwbniKd/H56Yt5AV3X/bI4wyR
	nnGOmC0Jb+yOJ9sobc2nb1xuC3r1htQNMqoejK7f4RYNQCY79Nnrs1NUjwOLE+71x9RkqgvZ92NVD
	jwp0lD0Fmf5Px3p6dlsrDB0K4VLI27OyPPqsV2c0LTzlNYazO6ojzX/g2wG8bQYp5rmdf4xd1XDSw
	yDhPjpJBb73R2GzVgc7YsGPFoNt950W9NBGTpDr7A7R1AA31e+2kFdwFCPPJB6+U6eWtrdwhxXDBE
	6bphb1G9nOqz1bQUN1Fvr3RUYhsiBMuQRvl6dCoNLhFnYqLwwE5PVKevsVFVqa3r4LbK8wqtTYP07
	WfKL0Qog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVNz-00000006q52-2mvQ;
	Mon, 09 Mar 2026 07:50:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVNx-00000006q4g-0e40
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 07:50:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzVNu-0007wX-Bs; Mon, 09 Mar 2026 08:50:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzVNs-004Uk9-2h;
	Mon, 09 Mar 2026 08:50:38 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vzVNu-00000002ujX-0TVF;
	Mon, 09 Mar 2026 08:50:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
References: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
Message-Id: <177304263810.694706.16649903430014321885.b4-ty@pengutronix.de>
Date: Mon, 09 Mar 2026 08:50:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_005041_193280_F3C77C4D 
X-CRM114-Status: UNSURE (   7.20  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i.MX: hab: always lock SRK hash after fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 06 Mar 2026 11:38:12 +0100, Ulrich Ölmann wrote:
> The flag IMX_SRK_HASH_WRITE_LOCK has been present since the introduction of
> barebox' hab command in [1], but only got its first user recently. Keeping SRK
> hash locking optional is dangerous though: after programming the SRK hash,
> leaving it writable allows later manipulations which can render a device
> unbootable.
> 
> Make SRK hash programming always burn the corresponding lock fuses on all
> supported i.MX variants (IIM/OCOTP), and remove IMX_SRK_HASH_WRITE_LOCK.
> 
> [...]

Applied, thanks!

[1/1] i.MX: hab: always lock SRK hash after fusing
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f4d4a2b75b7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



