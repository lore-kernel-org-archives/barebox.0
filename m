Delivery-date: Wed, 25 Jan 2023 15:52:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKh85-001bWN-Ke
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 15:52:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKh82-0007lw-W0
	for lore@pengutronix.de; Wed, 25 Jan 2023 15:51:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UyGaw/xsJqn0PhSpytusS7xzqM5t/pbHBP+zz/4uhhU=; b=cJmKJy+vLhZaAlwSpbLTu+THF8
	/ftxQySXyn5sdSEZ3NV1NVlgp2AFrX4NEVFWJHnpTZOdx8cK1g6tpaFmsc6K0e5MuN3Nec1SpcaX3
	D+p27nPBxnQTdBhoNriK9tjUSb+sQEDc6KmVvbGvYpcItpF7DdVtXBdzN0HAcmnkJVdSTU4ui6GCj
	vzzn5iRcVmU5kAoG7rsK2pHNdVsTDIkd4QJg1UK2lgRKa2cuxoPBj7z9ZLAytzhRzWJvk+Sg+hy93
	479K/LNxJFAgQkIw+1FjaS7ac2cFj3wjD4h+IKKJod58W2//6YApRUibi05XlDxL5NX5PCcu5b2Q3
	uh3m6uoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKh6e-007faG-W5; Wed, 25 Jan 2023 14:50:33 +0000
Received: from out-115.mta0.migadu.com ([2001:41d0:1004:224b::73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKh6Z-007fZ5-JS
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 14:50:30 +0000
Date: Thu, 26 Jan 2023 01:50:01 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674658224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=UyGaw/xsJqn0PhSpytusS7xzqM5t/pbHBP+zz/4uhhU=;
	b=t8Y4L7havckFui6YWRPdmiMzuPS412J6mmA1ERzuvgj8VbSlgNsSTbeIPvRMVDJvpBi2Xs
	8Ks3HDWiRPCdp63Cdrjh+driAWxN7wda6WNoGJA2v02tO8oaR1dm5KTej/a2U3v9NvaLUF
	tO8IkDTkXh57kTdjsKVof2AJoCAPdf/LXpTgizaYLchNB1t4hpr+iLSb5/VjLcPH1UM1FH
	nFHeNFBX6r2gptgf000+wuuaj8kdB0uAyLbz0Z5hxVc65IAioeohasTc8KtfEUYl1abKju
	kO6SZTAeurOInZ3eVWU6OcmA0QjmEGPSzISe2nfOWxYZF7QBjbm5EYi6tb6l4A==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <Y9FBmYziOHQRPmtN@novena-choice-citizen>
References: <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
 <Y9DkOI1yxte95PYg@novena-choice-citizen>
 <20230125081923.GY24755@pengutronix.de>
 <Y9EvGHjLUX1ykAxU@novena-choice-citizen>
 <072ab8ce-d92f-8841-a44e-621a3ba345a4@pengutronix.de>
 <Y9E23b56PcfZWsum@novena-choice-citizen>
 <77f25018-39ab-ec53-56a5-21bfdeb484d7@pengutronix.de>
 <Y9E8mqaQ+S2PeatL@novena-choice-citizen>
 <13bed4ae-5db5-7432-f610-a065bdebb524@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13bed4ae-5db5-7432-f610-a065bdebb524@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_065028_787634_5454CC46 
X-CRM114-Status: GOOD (  16.15  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 03:33:18PM +0100, Ahmad Fatoum wrote:
> On 25.01.23 15:28, John Watts wrote:
> > On Wed, Jan 25, 2023 at 03:16:05PM +0100, Ahmad Fatoum wrote:
> >> We could add the binding to the barebox AT24/AT25 driver. We'll need
> >> to make sure we don't fail the probe in the error path as not to
> >> break existing users. Fortunately, with deep probe, we will
> >> have no -EPROBE_DEFER that would complicate this.
> > 
> > I'm really not sure if specifying the regulator (that should always be on) for
> > every possible node is a good idea. I'd need to add -supply properties to:
> > 
> > - USB
> > - Sata
> > - HDMI
> > - SD cards
> > - Ethernet
> > - PCIe
> > - FPGA
> > - I2C
> > - UART
> 
> What voltage does your UART require that you don't already have when
> your SoC is powered up? anyways, I still see utility in observing
> the vcc-supply upstream bindings for EEPROMs.

These are used for pull-up/pull-down resistors.

> Add an of_devices_ensure_probed_by_property("regulator-boot-enabled") or
> something to the start of your machine's board driver then.

Hmm. Probing for regulator-always-on and regular-boot-on seems to fix my issue.

John.


