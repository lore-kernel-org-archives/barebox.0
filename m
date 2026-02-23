Delivery-date: Mon, 23 Feb 2026 10:18:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS5M-004mQD-0Q
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:18:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS5M-0001Xe-FQ
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:18:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LjApkxzub3Pkgj111BInDyq2Wpuv2fd8rVdHlh115LI=; b=0fOrHzVGaz1o5cqpbJFFdp2loG
	mP+5bBGQkPi83nOFw2eWHorv35fXAUKa1XURyE6b82+p1aBs+Eb9bJTzghcZnd9UhGfAGhghlPN0F
	IGdI4W1JEroSWOToQdG5u7E66nqdlRmQhkzzJwMNtH1Hni4BlXuzBfq9LxdSNNbgHYWkegCGP8eSt
	68uEhrgyzQ84GmeNkUKJYUZK853DhN3/pfauApmyvqj8zMZ5V/wyQaLh7lsfudGMFSdhbXaU557Cp
	ByktHZHEIGFvvX3G/Iw0JNPbQ4CiQLRF6vM42z3XbW+k9+uEPMk8uGboIG6twB5LsYxYWJ3nR0oxJ
	lRXjfs0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS51-0000000HWRF-0p53;
	Mon, 23 Feb 2026 09:18:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS4z-0000000HWQd-2vOh
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:18:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4y-0001Qb-A5; Mon, 23 Feb 2026 10:18:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4w-002Chq-2S;
	Mon, 23 Feb 2026 10:18:12 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4y-00000000njc-0CyL;
	Mon, 23 Feb 2026 10:18:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Robert Schwebel <r.schwebel@pengutronix.de>
In-Reply-To: <20260216173455.1625601-1-r.schwebel@pengutronix.de>
References: <20260216173455.1625601-1-r.schwebel@pengutronix.de>
Message-Id: <177183829204.191165.17976586981620863797.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:18:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011813_746952_969BAC12 
X-CRM114-Status: UNSURE (   6.09  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] Documentation: spell out what TLV actually means
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 18:34:45 +0100, Robert Schwebel wrote:
> "barebox TLV" is used in many places, but the acronym is not explained
> anywhere. Spell out what it actually stands for.
> 
> 

Applied, thanks!

[1/1] Documentation: spell out what TLV actually means
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd5ec20eadc9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



