Delivery-date: Thu, 15 Aug 2024 10:50:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seWBz-009ojj-0w
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 10:50:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seWBy-00086Y-MY
	for lore@pengutronix.de; Thu, 15 Aug 2024 10:50:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MAmFCSOek862mcpQQUnMcknuQ37cKmm2hHpHHq2MhlM=; b=1rqbyFNXqSsaoOastY7RD/52i5
	moTO5fwe1QKFnZnS7FRjjdVWCcqZNub1y7ZoDjGyafMFGTGp+BJQZCCzZxg21LydKasyyAg9VKRPi
	KHDioeZndxk/QzPeUcJxRiCC6/ujH90nkdSu7Ci/JwmGLer5zTiaLOrLXEYEvuM2xT92iHcnp1v4Y
	kAHUujhqJ50bSRHRshThiYUkaVG8VffxyB4YGoS/c6eE2ejZY7ZRme/J8Fwf0CEX6Xizj7FFK+Xi7
	ORiSsuDE2NC+waHpEnqbxGx3cz3j8DSVjxPBgQDOzkHdltKjtBWYwu+UHBP1e72kGbgvjRiQQKPie
	rMqswiDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seWBY-00000009QRM-42ff;
	Thu, 15 Aug 2024 08:50:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seWBV-00000009QQX-3Qzm
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 08:50:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWBU-00080L-BN; Thu, 15 Aug 2024 10:50:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWBT-000YVB-UV; Thu, 15 Aug 2024 10:50:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWBT-004lHi-2r;
	Thu, 15 Aug 2024 10:50:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240814161435.566270-1-a.fatoum@pengutronix.de>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
Message-Id: <172371181588.1135043.9823474042286374651.b4-ty@pengutronix.de>
Date: Thu, 15 Aug 2024 10:50:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_015017_920922_F2166623 
X-CRM114-Status: UNSURE (   8.48  )
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
Subject: Re: (subset) [PATCH 1/3] debug_ll: ns16550: fix prototype in
 documentation comment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 18:14:33 +0200, Ahmad Fatoum wrote:
> The functions were changed to take a base parameter, so they can be used
> with PBL console instead of just DEBUG_LL. Update the comment to reflect
> the current state of the code.
> 
> 

Applied, thanks!

[1/3] debug_ll: ns16550: fix prototype in documentation comment
      https://git.pengutronix.de/cgit/barebox/commit/?id=a64d49c422fa (link may not be stable)
[2/3] openrisc: implement C debug_ll for NS16550
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb3e9040a77f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



