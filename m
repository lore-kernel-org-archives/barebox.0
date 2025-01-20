Delivery-date: Mon, 20 Jan 2025 08:23:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZm7n-0029ZX-0z
	for lore@lore.pengutronix.de;
	Mon, 20 Jan 2025 08:23:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZm7n-00054O-Ds
	for lore@pengutronix.de; Mon, 20 Jan 2025 08:23:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3N5n05Y0eLWv9Smz+0r+0Id7GvJ6F6BOnXSU+uqIuQc=; b=mrCpr0Llxuc94aNKTfamfgUu26
	dkqCHUV9don/IDSAKJL4kgWiYf5U8VaLWGhTdumEFI+cfPcPL20paXPfNlS8u0gTkX1+AUQ4AhWqe
	IrQfHsgi33b8GXvFP7LIvtcqood/gu/dGA5sYApWSfylwZri6YkB1WgdBsdUAwjPJAzR8ikuqUMPJ
	Pp2YEm/0gAT14IR7NZVgNaktfdKJBWEkntGBjJhEnHKggejo6EC+o5UBkiCUlKjJefmbCCPLePSZp
	CwgOEzJjnRT83SHMXCLNOCwOMWwtKFD/liGJH8b6Pe8pBmdGeJFa4nzoeA+F3EuTAi0e4XVmBXns+
	Dsjh8Vvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZm7L-00000004ucn-3XuC;
	Mon, 20 Jan 2025 07:22:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZm4k-00000004uAu-3N77
	for barebox@lists.infradead.org;
	Mon, 20 Jan 2025 07:20:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tZm4i-0004hv-1m; Mon, 20 Jan 2025 08:19:56 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tZm4g-000tbr-0A;
	Mon, 20 Jan 2025 08:19:54 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tZm4f-003mEL-36;
	Mon, 20 Jan 2025 08:19:53 +0100
Date: Mon, 20 Jan 2025 08:19:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Felix Singer <felixsinger@posteo.net>
Message-ID: <Z435GYDuBypAQrZx@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
 <20250112083432.320215-11-a.fatoum@pengutronix.de>
 <Z4oVpYra9gKbDoGM@pengutronix.de>
 <b5506841-68f9-496b-9b59-8c9d5fbe0d77@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b5506841-68f9-496b-9b59-8c9d5fbe0d77@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_231958_869106_47409A7B 
X-CRM114-Status: GOOD (  23.01  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 10/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Jan 17, 2025 at 10:03:20AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 17.01.25 09:32, Sascha Hauer wrote:
> > Hi Ahmad,
> > 
> > On Sun, Jan 12, 2025 at 09:34:29AM +0100, Ahmad Fatoum wrote:
> >> +MAKE_FIT := $(srctree)/scripts/make_fit.py
> >> +
> >> +# Use this to override the compression algorithm of the DTBs
> >> +FIT_COMPRESSION ?= none
> >> +
> >> +quiet_cmd_fit = FIT     $@
> >> +      cmd_fit = $(MAKE_FIT) -o $@ --arch $(CONFIG_ARCH_MKIMAGE_NAME) --os linux \
> >> +		--name 'barebox-$(KERNELRELEASE)' \
> >> +		$(if $(findstring 1,$(KBUILD_VERBOSE)),-v) \
> >> +		$(if $(FIT_DECOMPOSE_DTBS),--decompose-dtbs) \
> >> +		--dtb-compress $(FIT_COMPRESSION) -k $< @$(word 2,$^)
> > 
> > I had to drop this and the following patches from this series.
> > 
> > barebox already has a cmd_fit which you are overwriting with this patch.
> > The existing FIT target is used for the beagleplay board to build an
> > image to be started from U-Boot. I suspect we can just replace existing
> > FIT target with your version.
> 
> I renamed it to cmd_itb in this patch that you picked:
> https://lore.kernel.org/all/20250106091935.3435710-1-a.fatoum@pengutronix.de/

I see. This patch was not on the branch I currently tested. I applied
10-13 on master now and it compiles fine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


