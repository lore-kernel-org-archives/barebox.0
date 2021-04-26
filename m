Delivery-date: Mon, 26 Apr 2021 12:04:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lay6C-00031J-Gc
	for lore@lore.pengutronix.de; Mon, 26 Apr 2021 12:04:16 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lay6B-0008Lv-QD
	for lore@pengutronix.de; Mon, 26 Apr 2021 12:04:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQRPPmvX9yo/migRlZlbwCiqYnA7xXAKmTvGlT72zkQ=; b=O6DkLa0CCWGUGnvUzsznGIDsd
	hYRGccOvAeUloNd8md+G7Mc9nhDq1r51BB+TEiaqmvZ9xZOFmCgUvEZt65mJJw1jKfwUwJ2qvv8Sd
	64P0v82pKJc6biPTCBeZJnPrXFWH8UNTu96EmssZcel4ftz43kFXmmV/JVbrufRGxgAX4UO7bX30U
	0PYLDXLJ36DZRlXAO+KjO/01imXcspwfRqvatKmFwF63jQWnus7iiy7G9TS8JdOoXWJZqjVk58p73
	Qfkw6n/EiJA9Rel15W6/85YnpC2CCRbYuukk79gWeC2ryQEkwEorRXJgrZUP8Q20EI30ATvgCvLRP
	5cyVYutww==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lay57-007NAP-Ox; Mon, 26 Apr 2021 10:03:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lay53-007NA9-Jm
 for barebox@desiato.infradead.org; Mon, 26 Apr 2021 10:03:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Uc6+OWytoxvndR+q8Z8+/siamN29FZORQLBfExWB2eQ=; b=16U50HvmDJlHOPJ1TMRMjqNbBa
 4gu0AwhVfOFt27D9oh94B5W6Bjlyx59QHwNXEuUNX529JfUu5TdZgk/nIbqc5Pjecy9fpnLMVyzuQ
 eWX16Iqwhyk6BMYvdH2eQ3KbTO4SWO+dq5DNgD3LDzTDCgBSP2KKW52CKu3CI63DodgTR1n4fFkvB
 BHvmIu1ATbESsCPefxgTvG06vbw18es+xPbqPWYBXR9op1avvdBSbGVv9sghMIjUN78EEJNYdzoFm
 R2T5vvzBX7ZpSnz4WL0ENSEFAxXxEtr1rM96JTzhxkg3cwtt+iVqfRi8TeR7QS8xNSJpWy+3FHi28
 gUDSTkTw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lay50-00Fsmt-6H
 for barebox@lists.infradead.org; Mon, 26 Apr 2021 10:03:03 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1lay4y-0008Gx-GW; Mon, 26 Apr 2021 12:03:00 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1lay4y-0006Nh-5Y; Mon, 26 Apr 2021 12:03:00 +0200
Date: Mon, 26 Apr 2021 12:03:00 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210426100300.ixrvnzezrsd7luhn@pengutronix.de>
References: <20210416094943.3648-1-s.hauer@pengutronix.de>
 <20210416094943.3648-18-s.hauer@pengutronix.de>
 <62d9fd38-fa11-446d-1aee-2165a55f0fd5@pengutronix.de>
 <20210426092025.ayufzlgd7hchyngw@pengutronix.de>
 <b337571d-58e6-4c8d-58a9-764e8126e04b@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b337571d-58e6-4c8d-58a9-764e8126e04b@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:58:00 up 145 days, 4 min, 48 users,  load average: 0.28, 0.09,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_030302_257660_891D52F6 
X-CRM114-Status: GOOD (  25.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 17/17] ARM: i.MX Phytec physom: Add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21-04-26 11:36, Ahmad Fatoum wrote:
> Hi,
> 
> On 26.04.21 11:20, Marco Felsch wrote:
> >> How about changing BAREBOX_DEEP_PROBE_ENABLE so BAREBOX_DEEP_PROBE_ENABLE(physom_imx6_match);
> >> works? Updated boards should be using board drivers anyway, so make it easier for them to
> >> enable deep probe.
> > 
> > Hi Ahmad,
> > 
> > Why do I need to chnage it to board drivers if I only wanna fix a probe
> > order issue? But you're right adding the _match table should be possible
> > to :)
> 
> Either you have board code at a single init level and changing to a board driver
> will be very straight-forward. Or you have multiple initcalls, which expect
> drivers at prior initcall levels to have probed a device, which will be broken
> by a move to deep probe.
> 
> >> I'd go even further and require board drivers by having it take a driver_d * as argument
> >> and introduce deep_probe_board_driver() that expands to postcore_platform_driver and
> >> BAREBOX_DEEP_PROBE_ENABLE.
> > 
> > How about this:
> >  1st) adding a probe_enum like kernel and introduce PROBE_PREFER_DEEP
> >  2nd) adding a deep_probe_enable_board() function to common/deep_probe.c
> >  3th) checking during register_driver() if the flag is set and call the
> >       deep_probe_enable_board().
> > 
> > This allows use to still use the macro mechanism and the boards already
> > converted to the board driver style can use this simple enum to mark all
> > boards as deep-probable.
> 
> I don't see how that would work. deep_probe_is_supported() is called on oftree
> registration, which is prior to the board driver's register_driver.

Arg.. you're right, didn't noticed that call during
barebox_register_of().

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

