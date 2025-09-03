Delivery-date: Wed, 03 Sep 2025 08:24:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv2-007YB2-1F
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv1-0000Qa-5R
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:24:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fiMDcMU2YPIZhVzHvo1Ly5UHuDonESQstxMMWYThkJw=; b=x7vZesrhf/f6mtJ3oF0y5c/USR
	ZvdTrfNRoeeJSru2/qtU7TBlM91rt/scMh7Bq0pblOBHUdXRUoIg9JlHj/hQxjATEaczg70CM1Kud
	mLV7ug8yGDWwTQ4Lw12TXJzgxhDtP+Q25ndGbnqGAyOG7qrKWHdFDeaE0X96kp4aHvRhgtriPJAHM
	X6J/VrSbjngGotKDDERaDrodYPNTSznPLNwGfrh+EpTKDoUyMluHyKdO0yJBIZspnqm4bQWm4pOBM
	FXn1uBSOibrKm160Gg/Noh2UbJXwcmDtEFkoj6UIlgMEPvE7+QArjIBwGCcgWd85TkpS+xuO0ZBWA
	Mk9IoPoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgue-00000004baT-1Pgg;
	Wed, 03 Sep 2025 06:24:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utguY-00000004bTx-3Knr
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:24:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utguX-00007w-I4; Wed, 03 Sep 2025 08:24:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utguX-003Vz4-1A;
	Wed, 03 Sep 2025 08:24:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utguX-00000009lZa-1Gcc;
	Wed, 03 Sep 2025 08:24:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <afa@pengutronix.de>
In-Reply-To: <20250828093135.1959085-1-s.hauer@pengutronix.de>
References: <20250828093135.1959085-1-s.hauer@pengutronix.de>
Message-Id: <175688064129.2327755.3005962152971780725.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:24:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_232402_834302_59BA4081 
X-CRM114-Status: UNSURE (   9.34  )
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
Subject: Re: [PATCH] Kbuild: do not build dtbs concurrently
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 Aug 2025 11:31:35 +0200, Sascha Hauer wrote:
> commit 3c862a83f019 ("kbuild: restrict dtbs target to enabled DTs by
> default") added the dtbs target as a dependency to the images target.
> In the dtbs target we call into Kbuild for building the device trees.
> The device trees are also built as part of the regular build in
> parallel, so we end up running Kbuild for the same directory twice.
> 
> This sometimes results in failed builds with messages like this one
> (done with make V=2):
> 
> [...]

Applied, thanks!

[1/1] Kbuild: do not build dtbs concurrently
      https://git.pengutronix.de/cgit/barebox/commit/?id=7689314d0a78 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



