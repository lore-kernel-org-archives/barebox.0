Delivery-date: Fri, 19 Jul 2024 14:32:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUmmH-000pnP-0r
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 14:32:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUmmG-0001BC-MS
	for lore@pengutronix.de; Fri, 19 Jul 2024 14:32:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nQW+wj8dlR79ARrw6RraCHnVgFI56d5pAfgdapsX0+w=; b=y7iKsnkEj0XkYKj40IcE31K7TF
	fk1AT6y3iLtX/MR16QhmCrkXg+bMLhH4pi4KKuxlcwb9rLc0PIJ7WmwAz+PxwMIjtv9mlV/6uj3uN
	BjR+dV/Fsu6g6YggyxvxQuHmQy6uHqvnwRYn8IMpLPUEdU/iczzA1cShWIZyPoOQt9Y371YYDPSDy
	s6kJqhPDwPDR1x73ADSIcUZgT0dc3ghtKj4q3p5K6v8C3hUC8fShknjt860WeFbCR242Hb2PY1eiF
	Y/+WHWMojwMdhTcOVsOs0YV86H2tpyPVlBVRzEsuLkh2fe2JAV4H3mil28NQ/RybYuYofOjkSrt7u
	UmWEs8/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUmlc-00000002dsV-3pFj;
	Fri, 19 Jul 2024 12:31:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUmlY-00000002drR-48BX
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 12:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUmlV-00017M-TV; Fri, 19 Jul 2024 14:31:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUmlV-000gFg-GE; Fri, 19 Jul 2024 14:31:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUmlV-00HHlf-1K;
	Fri, 19 Jul 2024 14:31:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716120310.1968471-1-a.fatoum@pengutronix.de>
References: <20240716120310.1968471-1-a.fatoum@pengutronix.de>
Message-Id: <172139227340.4119166.7441394027985730222.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 14:31:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240719_053117_056864_9DEA9C25 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: Re: [PATCH v2 1/2] sandbox: alias I/O ports region in MMIO space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 14:03:09 +0200, Ahmad Fatoum wrote:
> We currently define __pci_iobase to please static analyzers that would
> otherwise complain about inb/outb and friends accessing the NULL page.
> 
> Let's make better use of it and add a node representing it to the device
> tree. This way we can add simple memory mapped peripherals on top that
> just need writable registers that can be read back in tests.
> 
> [...]

Applied, thanks!

[1/2] sandbox: alias I/O ports region in MMIO space
      https://git.pengutronix.de/cgit/barebox/commit/?id=eaa990eef328 (link may not be stable)
[2/2] sandbox: add dummy pinctrl nodes
      https://git.pengutronix.de/cgit/barebox/commit/?id=700ff2933ae8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



