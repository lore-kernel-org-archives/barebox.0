Delivery-date: Thu, 07 Sep 2023 11:59:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeBmy-006yyS-I3
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 11:59:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeBmw-0008R7-Ca
	for lore@pengutronix.de; Thu, 07 Sep 2023 11:59:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YoZFw3khh/h7sA/uIu8Yf6/8Mtu2JW3oBItcYd1RMbw=; b=XrwnoIR8UNPixHs429AOvtcTmU
	l5MgMFEcmJ63OpoqBwudMQ1HlHbWISIjwLf3XIrAs7LmWZdS0eGx9XhuOSX2kE8FXoytcfSC007Y9
	VlYu3K5GGlDUo2qasN/mVGE15SIjmHcQf4Xev6Zeq+u1SMI7didR5KCOH/eaewRGcQUbNGPr3RM2U
	Eh1F9629TuFvDYfrraXmnYetPw15k7br53WDNCsPOoQ6MqA4SMB7FLMg1n5urzM4KMtZISqRyZ2BP
	kvAY+28x4FBG3JmwZjgwudQnerEs8uR2QxIrNZ2cindBpPyO3G70z53Tzx2owWpaH9D8M/9H26VQs
	wN7hs0kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBlt-00BjYc-2u;
	Thu, 07 Sep 2023 09:57:57 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeBlq-00BjXK-2b
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 09:57:56 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7305BE0006;
	Thu,  7 Sep 2023 09:57:48 +0000 (UTC)
Date: Thu, 7 Sep 2023 11:57:47 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZPmem2k04HWDFbAz@tour>
References: <20230906150857.32035-1-jmaselbas@zdiv.net>
 <393f8933-d264-e4a2-4497-39c8240796e7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <393f8933-d264-e4a2-4497-39c8240796e7@pengutronix.de>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_025754_975591_35E7AFE5 
X-CRM114-Status: GOOD (  17.17  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] decompressors: Update xz to include ARM64 BCJ decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 07, 2023 at 11:00:05AM +0200, Ahmad Fatoum wrote:
> On 06.09.23 17:08, Jules Maselbas wrote:
> > Update lib/xz/xz_dec_bcj.c and lib/xz/xz_private.h files from xz-embedded [1],
> > which include spelling fixes and the new ARM64 BCJ decoder which was recently
> > introduced into .xz file format version 1.1.0 (2022-12-11) [2].
> > 
> > [1] https://git.tukaani.org/?p=xz-embedded.git
> > [2] https://tukaani.org/xz/xz-file-format-1.1.0.txt
> > 
> > Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> > ---
> >  lib/Kconfig           |  4 ++++
> >  lib/decompress_unxz.c |  3 +++
> >  lib/xz/xz_dec_bcj.c   | 54 ++++++++++++++++++++++++++++++++++++++++---
> >  lib/xz/xz_private.h   |  3 +++
> >  4 files changed, 61 insertions(+), 3 deletions(-)
> > 
> > diff --git a/lib/Kconfig b/lib/Kconfig
> > index 758197b608..9291e5a8ff 100644
> > --- a/lib/Kconfig
> > +++ b/lib/Kconfig
> > @@ -42,6 +42,7 @@ config XZ_DECOMPRESS
> >  	select XZ_DEC_ARM
> >  	select XZ_DEC_ARMTHUMB
> >  	select XZ_DEC_SPARC
> > +	select XZ_DEC_ARM64
> 
> Hmm, maybe for PBL, we should only support the XZ BCJ filter that is chosen
> for barebox proper? If you are trying to get barebox binary size down,
> maybe you are inclined to check? :-)

indeed, i thought it was already the case. How would do that ? have two version
of the unxz binary object ? one for pbl and the other for barebox proper ?
Or maybe only select the relevent decoder ?

snip

> > diff --git a/lib/decompress_unxz.c b/lib/decompress_unxz.c
> > index a7e2d331ab..5c906932f8 100644
> > --- a/lib/decompress_unxz.c
> > +++ b/lib/decompress_unxz.c
> > @@ -132,6 +132,9 @@
> >  #endif
> >  #ifdef CONFIG_ARM
> >  #	define XZ_DEC_ARM
> > +#	ifdef CONFIG_CPU_64
> > +#		define XZ_DEC_ARM64
> > +#	endif
> >  #endif
I though this was used to _only_ have the decoder for the current architecture.




