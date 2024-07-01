Delivery-date: Mon, 01 Jul 2024 14:36:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGf-000VDH-15
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:36:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGGe-0002bL-Q4
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MogHviNTF3Sxml86WLQr6qdbd/TC8W+bOGHeUZmqbQ0=; b=iqyCP8nzYM9Xycafj+AF4dm7R8
	aIVJ+BllIIrgZ6beabdYLKjzGvdI8SvWnYq66l49KnM3YIK/ZXP66S6A/3IdBYaTCKacF6LKlzIxo
	+++q5BkVQAFEkcmqVbAlf/raIOvydkGBQSFFgmOG0KUN044eVt4Y84itLoL1/WgGVHmS+GxIuoBiS
	tUSLbtK4ApBc2JvemgL7TC7PKxqGx8jo0q4HwO/GA7tlBQ/WScQ/Ts6CV/ID+NaCeCXzclARHKpHC
	yjzEDjWbv/P3HqJEZjIll3AOwrhvqo1P2NC2gCjsYAa2lVcc2DKgIdynLqE2IDxnSAykKkNupmaP4
	p4B7GwcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGGC-00000003Fk3-1lzk;
	Mon, 01 Jul 2024 12:35:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFsC-000000034I1-1cVV
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:11:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFsA-0000tk-Tv; Mon, 01 Jul 2024 14:11:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFsA-006Mw3-Gy; Mon, 01 Jul 2024 14:11:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOFsA-006Gdx-1S;
	Mon, 01 Jul 2024 14:11:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240620125829.550300-1-a.fatoum@pengutronix.de>
References: <20240620125829.550300-1-a.fatoum@pengutronix.de>
Message-Id: <171983586644.1493916.13211587647238402962.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:11:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_051108_465161_85C510E7 
X-CRM114-Status: UNSURE (   9.13  )
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
Subject: Re: [PATCH master] common: misc: do not run pollers inside panic()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Jun 2024 14:58:29 +0200, Ahmad Fatoum wrote:
> When panic() is not configured to hang, it will wait 100 ms for messages
> to go out before trying to poweroff or reset the machine.
> 
> The wait is implemented using udelay(), which runs pollers if the delay
> duration exceeds 100 us. This is a bad idea as it needlessly exposes
> barebox to hang indefinitely if the driver that's being polled had
> something to do with why we ended up in the panic in the first place.
> 
> [...]

Applied, thanks!

[1/1] common: misc: do not run pollers inside panic()
      https://git.pengutronix.de/cgit/barebox/commit/?id=b026cd03f940 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



