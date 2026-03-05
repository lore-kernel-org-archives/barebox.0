Delivery-date: Thu, 05 Mar 2026 13:16:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy7cq-008K8f-1V
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:16:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy7cp-0000d6-26
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:16:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KEKf7r3M9svesfxugowp6rP8c6hxdKqapXplw0lLklQ=; b=OlX/MVUyl9mzbk+bniXxGS4wBT
	EiwaHDJ706z27ec6MS/0wa5U4h2I7icyUyYbaIlSza84cFqUaNMNqgoUBGW9bEiOKrkx4lhElpaYN
	hHtAMuef6IEWXSS5vuAXpVnVD5npluOaaiWvWtIxINnTHyBftfEg1dcVuMzatUFapWFKv+1BtrKyJ
	Wazj8mvJntLNTA3kEoT0/AG0ZsE736y7lVxRqlqO8JarFXGoX6iCU1JzHR+pr2pqxLmARUIiH24RB
	ZnNMevbPCoHuBKAb3jFhwUuwDmhoqE50Eifl1BmS8U/EzPjMv/8Eeu8lZWQKu/Ba5CYpl9NVkVK3l
	oqPqmzfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cE-00000001k86-2RFe;
	Thu, 05 Mar 2026 12:15:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy7cB-00000001k5a-0YJ3
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:15:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy7c9-0000Nu-Di; Thu, 05 Mar 2026 13:15:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy7c7-003sl6-2r;
	Thu, 05 Mar 2026 13:15:37 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vy7c9-0000000F3Li-0Pvm;
	Thu, 05 Mar 2026 13:15:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260305065352.3417011-1-s.hauer@pengutronix.de>
References: <20260305065352.3417011-1-s.hauer@pengutronix.de>
Message-Id: <177271293708.3587731.10956483943242486628.b4-ty@pengutronix.de>
Date: Thu, 05 Mar 2026 13:15:37 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_041539_190065_E4EC1629 
X-CRM114-Status: UNSURE (   5.96  )
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
Subject: Re: [PATCH] aiodev: Enable saradc for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Mar 2026 07:53:52 +0100, Sascha Hauer wrote:
> The RK3588 also has a saradc, add the SoC to the dependency list.
> 
> 

Applied, thanks!

[1/1] aiodev: Enable saradc for RK3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=303f569a666d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



