Delivery-date: Fri, 20 Dec 2024 10:17:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOZ80-00AOP3-32
	for lore@lore.pengutronix.de;
	Fri, 20 Dec 2024 10:17:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tOZ80-0002rq-RN
	for lore@pengutronix.de; Fri, 20 Dec 2024 10:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M2FS3cj4eb1RIxXSxj+r1MRIvkV3QULrJtMrg7QxDZc=; b=s2r1BjYz/KOHIWYYbM+RpgCg4d
	qIWhmckB1PXsa6QxWcz5yz8+MH2Vylr8gc9ZPXTBZMTgZ5AjdEUD8a77bn3Tn55ozyM7oMIx7gb7+
	XpkgcV2I+1be7l3nvNjulvhCBB421Zaz7Yw19z8UYZyeM/0j0FWFTpnbkzOIS9w7He7ktU4SpmJZD
	t7tmNStbzh1lGmzGemKPrsG9Kfx5oOSlLKlP4r1BYgjNySpAHd79v7sEcKApTcZWGOa6LLxv7+4uv
	fjYi3aVoKP9actF8Ihtp7+w8KfgmQrA6+qMBjR3bLTDzAilzReGofaP50Uc2s2QCrmp3pB/aETy4n
	3iezYDtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZ7V-00000004OW8-1k0T;
	Fri, 20 Dec 2024 09:16:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOZ7S-00000004OVX-1S9w
	for barebox@lists.infradead.org;
	Fri, 20 Dec 2024 09:16:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZ7R-0002jU-5t; Fri, 20 Dec 2024 10:16:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZ7Q-004Lry-0j;
	Fri, 20 Dec 2024 10:16:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tOZ7Q-00DKSa-30;
	Fri, 20 Dec 2024 10:16:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
Message-Id: <173468618492.3176869.17803922225434327780.b4-ty@pengutronix.de>
Date: Fri, 20 Dec 2024 10:16:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_011626_389172_6E338EA1 
X-CRM114-Status: UNSURE (   7.00  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 01/12] spi: cosmetic style fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Dec 2024 14:03:13 +0100, Marco Felsch wrote:
> Replace <space><tab> by <tab> only. While on it move the forward
> declaration on the file top to sync it with the Linux spi.h.
> 
> 

Applied, thanks!

[01/12] spi: cosmetic style fixes
        https://git.pengutronix.de/cgit/barebox/commit/?id=971d680834c3 (link may not be stable)
[02/12] spi: fix spi_message init during __spi_validate
        https://git.pengutronix.de/cgit/barebox/commit/?id=a94723bc1096 (link may not be stable)
[03/12] spi: add spi_{set,get}_ctldata accessors
        https://git.pengutronix.de/cgit/barebox/commit/?id=54409e934e68 (link may not be stable)
[04/12] gpiolib: add support for gpiod_get_index and gpiod_get_index_optional
        https://git.pengutronix.de/cgit/barebox/commit/?id=5d3d3cde390a (link may not be stable)
[05/12] gpiolib: add support for gpiod_set_consumer_name
        https://git.pengutronix.de/cgit/barebox/commit/?id=36c526f67557 (link may not be stable)
[06/12] spi: add support to handle cs-gpios
        https://git.pengutronix.de/cgit/barebox/commit/?id=428c21711c51 (link may not be stable)
[07/12] spi: add support to setup spi-cs-{setup,hold,inactive}-delay-ns
        https://git.pengutronix.de/cgit/barebox/commit/?id=d5c540ed7203 (link may not be stable)
[08/12] spi: allow reporting the effectivly used speed_hz for a transfer
        https://git.pengutronix.de/cgit/barebox/commit/?id=2e6906488aa4 (link may not be stable)
[09/12] spi: import spi_controller::flags
        https://git.pengutronix.de/cgit/barebox/commit/?id=8562b7b2d792 (link may not be stable)
[10/12] spi: add support for spi_controller::set_cs_timing
        https://git.pengutronix.de/cgit/barebox/commit/?id=c18276085ffd (link may not be stable)
[11/12] spi: Provide common spi_message processing loop
        https://git.pengutronix.de/cgit/barebox/commit/?id=64112e839a33 (link may not be stable)
[12/12] spi: add support for BCM2835 SPI controller
        https://git.pengutronix.de/cgit/barebox/commit/?id=2851606ff823 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



