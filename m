Delivery-date: Wed, 25 Jan 2023 09:14:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKauu-001HrT-Gp
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 09:14:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKaur-0004lP-R6
	for lore@pengutronix.de; Wed, 25 Jan 2023 09:13:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=26UVpg4Tej9dc+TTBGfaaBt1F5XdyIJiFEQ456SLTdA=; b=OlIEtB09RyY73Kz04RhDhtUtwb
	X11Clf3ht8a39JSnTpf197LoJfKyVa++Vaty7bMzS12T/w9Hv4MtF3NOwPeydyML9sg8G4hDJLZ5e
	N6gTqcMhgESihmTk7bc4XH6YDsMbgJUA4AAgS/9k2xIwOCsv6zxO1OILli4R05DdWVc5ASnoLFtau
	GaBJKCOOZ5na6R5EKJgaK4W5P+AdVVhcBUhTEyRhBOaAF81p3WtPDX9RK/RP/aJUdI4ttIjo60V91
	rBojJTMgW7jKyObgV2vqKrHBRx2KiSdol5aJsCANk41eF/eijQm2hSy9F496/pOTAjCOdV5UbCJxH
	D4DNdb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKatY-006LJo-Hz; Wed, 25 Jan 2023 08:12:36 +0000
Received: from out-208.mta0.migadu.com ([91.218.175.208])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKat1-006L0l-Fp
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 08:12:06 +0000
Date: Wed, 25 Jan 2023 19:11:36 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674634319;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=26UVpg4Tej9dc+TTBGfaaBt1F5XdyIJiFEQ456SLTdA=;
	b=0eX12cSNiOfueavZat/3qPEXPTLIEb3FqBArbW4LH87iYltaMz3N2Jgf97zirC5Ivu1tbp
	vq4OcAUguNhtSGUPj1Ca4Sg4ylSl92puV9JxcgZGbIF9xRx4pZRIb5ej522g6uPpl44Hvg
	Y0MmWveBBLxMK7aCvN3NEzZXfUEcS4dJsGMjOwuPQeQ06fhaJ4cK2pBW84/LEh3yp8VXY1
	vah5PBHZOWyv7k2sE0TufGbkWTi38KdI3U+M8eJtxo2QskMptBcR+PXTjXEP5Z0t2e8k8+
	gIX1FLyhgZeU16td7BjY0t61IVG0JPcTeoiq2PuSVa122N7jCeZDOWPkLtIUxA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9DkOI1yxte95PYg@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230122175141.119834-5-contact@jookia.org>
 <20230123093305.GS24755@pengutronix.de>
 <Y9AlCQieCBIEOjs5@novena-choice-citizen>
 <20230125080406.GW24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125080406.GW24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_001204_286586_E90B8079 
X-CRM114-Status: GOOD (  14.62  )
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

On Wed, Jan 25, 2023 at 09:04:06AM +0100, Sascha Hauer wrote:
> It looks like something is not initialized correctly yet. Normally
> the usual suspects are pinctrl, clocks or regulators. Each of them
> should be tied in by the deep probe mechanism as needed already, at
> least when it's properly registered in the device tree. Clock looks
> correct (66MHz), for the (pfuze) regulator I can't find anything in the
> board code that configures something there later. You could verify
> that the pinctrl has been configured already by activating the debugging
> in drivers/pinctrl/imx-iomux-v3.c.
> It could be something that pulls SDA low, but I don't have an idea why
> it should work later.

My immediate guess is that it's the pinctrl, but shouldn't this be set up
for me already? Or have I found a device tree bug?

John.


