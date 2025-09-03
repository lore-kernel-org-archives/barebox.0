Delivery-date: Wed, 03 Sep 2025 08:24:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv1-007YAT-1Q
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 08:24:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utgv0-0000Pm-AD
	for lore@pengutronix.de; Wed, 03 Sep 2025 08:24:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ooSIz+94NxNCZV5sZLrvDFb4fBvMYB6XP9yCkP9mHtI=; b=eReXSJ2/IzfFTr0JrHeTpWPy3P
	ti3Sna93uSM+OLMm0+tYNxM5LdT3yKnLorezs673FDLooRro0jXuj8Vi4luW99K35NGRprBE5b2ix
	nlp0Zo/7KeGDZwreeZh6jWbVsfX0C+qfcb8yFEwtvKtN6LzEPF2vC2qEBYAr5qa9ylJHW3L3M1bt5
	iwFk0L3Y+ognm22vC6CxXFqqiSKru2Cf6Q3TqsR0dYm/lywtRTY9xuV8MIVhECKbIXf/cUpBuw09X
	Uqbue3HjbIUH3jcpURzQPrjKzKHVjf9USEwfBLM16uHv7p0f3LzgtN9q7GeOUubqBxNrUBXfZv0dm
	A/jr/CeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgud-00000004bYG-0VGw;
	Wed, 03 Sep 2025 06:24:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utgu2-00000004bH4-315z
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 06:23:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgu1-0008Rl-GB; Wed, 03 Sep 2025 08:23:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgu1-003Vyq-12;
	Wed, 03 Sep 2025 08:23:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1utgu1-00000009lWB-16DN;
	Wed, 03 Sep 2025 08:23:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250828113442.3543907-1-s.hauer@pengutronix.de>
References: <20250828113442.3543907-1-s.hauer@pengutronix.de>
Message-Id: <175688060925.2327541.14167147023726750882.b4-ty@pengutronix.de>
Date: Wed, 03 Sep 2025 08:23:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250902_232330_761975_1EE04B66 
X-CRM114-Status: UNSURE (   6.24  )
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
Subject: Re: [PATCH 1/2] mci: am654-sdhci: Wait for transfer complete
 interrupt with MMC_RSP_BUSY cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 28 Aug 2025 13:34:40 +0200, Sascha Hauer wrote:
> The MMC_RSP_BUSY flag indicates that we have to wait for the transfer
> completion interrupt. Other SDHCI drivers do this, but the am654 driver
> missed it.
> 
> 

Applied, thanks!

[1/2] mci: am654-sdhci: Wait for transfer complete interrupt with MMC_RSP_BUSY cmd
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b7c6416b968 (link may not be stable)
[2/2] mci: sdhci: am654: Use sdhci_wait_idle()
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2876b0468ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



