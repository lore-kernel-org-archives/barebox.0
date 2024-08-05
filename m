Delivery-date: Mon, 05 Aug 2024 14:45:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sax5a-006UYi-0f
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 14:45:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sax5Z-0003tg-Gt
	for lore@pengutronix.de; Mon, 05 Aug 2024 14:45:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DMgCOjRIO43GkxbNgqfMY4MpXydDOLQ4iVmww8+jCyo=; b=sRIr/hOf7UfcETnwjrJje1wdE0
	a01796DTVgk5PXUtFjt1YJzNs0m76BxEFURLdM5sDi33RWJb5v6mj9SWBcg85Plq9+Ph5yojJuq3S
	ivxC1ZDhfu6IGIJqzZenI5ERi6FR1kLBbtK1ievroh0EBW3MGp9xsdt6M47Rdgezy2tJbOg2y515f
	XnD5XYezDnyecbwcnar8lWHLeaav4oH2Biq+hUdZd4l2WbjJB5vsYiRfA1JH0KDtrE6XKZUc39ZyV
	YSz5ekJG9OyuMsZzkRfpniKkO/nldy+8/F/s1XIJY0j68UpB7QpKaWYom0u61Qx6ZVJAn/Weceaa4
	+huHRlCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sax4x-0000000FpgW-45bJ;
	Mon, 05 Aug 2024 12:44:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sax4k-0000000Fper-1LtX
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 12:44:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sax4i-0003nz-45; Mon, 05 Aug 2024 14:44:32 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sax4h-004iKu-NB; Mon, 05 Aug 2024 14:44:31 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sax4h-00357v-20;
	Mon, 05 Aug 2024 14:44:31 +0200
Date: Mon, 5 Aug 2024 14:44:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZrDJLzCw4VOOBAwc@pengutronix.de>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-18-s.hauer@pengutronix.de>
 <3fe60919-c7f4-40cf-8bb5-d4b1d375e116@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3fe60919-c7f4-40cf-8bb5-d4b1d375e116@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_054434_393144_9B7B2AFF 
X-CRM114-Status: GOOD (  33.35  )
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
Subject: Re: [PATCH v2 17/19] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Aug 05, 2024 at 01:57:36PM +0200, Ahmad Fatoum wrote:
> On 01.08.24 07:57, Sascha Hauer wrote:
> > This adds ECDSA signature verification support. The code is based on the
> > Linux code as of Linux-6.10. The Linux code expects the key to be in
> > ASN.1 encoded format. We don't need this in barebox as directly compile
> > the x and y key values into the binary, so this is left out.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  crypto/Kconfig                    |  20 ++++
> >  crypto/Makefile                   |  19 ++++
> >  crypto/ecdsa.c                    | 169 ++++++++++++++++++++++++++++++
> >  include/asm-generic/barebox.lds.h |   7 ++
> >  include/ecdsa.h                   |  21 ++++
> >  5 files changed, 236 insertions(+)
> >  create mode 100644 crypto/ecdsa.c
> >  create mode 100644 include/ecdsa.h
> > 
> > diff --git a/crypto/Kconfig b/crypto/Kconfig
> > index e953ef5e15..eeacd9ffb7 100644
> > --- a/crypto/Kconfig
> > +++ b/crypto/Kconfig
> > @@ -156,4 +156,24 @@ config JWT
> >  config CRYPTO_ECC
> >  	bool
> >  
> > +config CRYPTO_ECDSA
> > +	bool "ECDSA support"
> > +	select CRYPTO_ECC
> > +
> > +config CRYPTO_ECDSA_BUILTIN_KEYS
> > +	bool
> > +	default y if CRYPTO_ECDSA_KEY != ""
> > +	select KEYTOC
> > +
> > +config CRYPTO_ECDSA_KEY
> > +	depends on CRYPTO_ECDSA
> > +	string "ECDSA key to compile in"
> > +	help
> > +	  This option should be a filename of a PEM-formatted file containing
> > +	  X.509 certificates to be included into barebox. If the string starts
> > +	  with "pkcs11:" it is interpreted as a PKCS#11 URI rather than a file.
> > +
> > +	  This avoids the mkimage dependency of CONFIG_BOOTM_FITIMAGE_PUBKEY
> > +	  at the cost of an openssl build-time dependency.
> 
> Why can't this option take multiple space-separated paths?

The code added for ECDSA is mostly a copy from the existing RSA code.

It's less than ideal. What I'd really like to have is a single list of
keys which can include both RSA and ECDSA keys instead of maintaining
multiple lists. Likewise for the Kconfig options, it would be better to
have a CRYPTO_PUBLIC_KEYS option which holds multiple RSA and/or
ECDSA keys. Unfortunately my time budget for this task is over, so I
think we'll have to stick with this until the next cleanup round.

> > +#define _ECDSA_H
> > +
> > +struct ecdsa_public_key {
> > +	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
> > +	const void *x;		/* x coordinate of public key */
> > +	const void *y;		/* y coordinate of public key */
> 
> Why void and not a specific type?

No specific reason, it's copied from U-Boot. One reason might be that
keytoc prints the values as array of uint32_t whereas the values in
barebox are interpreted as array of uint64_t. Using void * avoids casts
and covers some interesting endianess problems when the barebox
endianess differs from the endianess of the build machine.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


