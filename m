Delivery-date: Wed, 06 Aug 2025 09:56:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujZ0c-007ZS1-0q
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 09:56:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujZ0b-0003f8-I3
	for lore@pengutronix.de; Wed, 06 Aug 2025 09:56:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/umoGGKgNp7pdiESfIvr9bRgD6Eg6GtHdJJH7KmNbTk=; b=pqikH/r017rxGjgfnpSiZbvTqU
	EbMcXSeenLfz8wGB+CUPPfS8PvMV7ZwkGmvjZGMl8U9qhLk/irc/Q/wBvaQBIJ4APp0o+n4qZ8/QK
	m/ABkGM2mwOCoSCZPZxGTyteZfsyj20x653Rmr58nF1FGmmbwCenhbqyKulgR5+NwbafvEbvPPiMh
	owkZCvkUphKo3GruoaGBWCCbX72jL0jvl5k006tcJhDKxJN3WaiaoIZ5YJ9UAliSDWOBjD1febr6Y
	8QkqaJtbPpCdYmLGJB7Z6/5QExHqYHSmMC0m5J6/8iC3/ToJdzSMa5VTZWxJ5ciA0CD8WIh0fs+5u
	ftTij6dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujZ06-0000000EZL7-02yG;
	Wed, 06 Aug 2025 07:55:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujYz7-0000000EZHN-1a3t
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 07:54:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujYz5-0003Wn-Ma; Wed, 06 Aug 2025 09:54:51 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujYz5-00CAls-1K;
	Wed, 06 Aug 2025 09:54:51 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujYz5-00CBCP-0w;
	Wed, 06 Aug 2025 09:54:51 +0200
Date: Wed, 6 Aug 2025 09:54:51 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <20250806075451.tp77okf7nzhcg63x@pengutronix.de>
References: <20250724135056.1252995-1-m.felsch@pengutronix.de>
 <20250724135056.1252995-2-m.felsch@pengutronix.de>
 <aJG88XTuJpuYX12B@pengutronix.de>
 <20250805200754.tpbu2pypgaz6gk2g@pengutronix.de>
 <aJLzTeaUdRxkN1dc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJLzTeaUdRxkN1dc@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_005453_415105_EC1EA2C5 
X-CRM114-Status: GOOD (  39.56  )
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
Subject: Re: [PATCH v2 2/2] keytoc: fix env provided keyspec handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-06, Sascha Hauer wrote:
> On Tue, Aug 05, 2025 at 10:07:54PM +0200, Marco Felsch wrote:
> > On 25-08-05, Sascha Hauer wrote:
> > > +Cc Basti
> > > 
> > > On Thu, Jul 24, 2025 at 03:50:56PM +0200, Marco Felsch wrote:
> > > > Currently the env provided keyspec is resolved during the gen_key() step
> > > > by making use of the try_resolve_env(). This is wrong because it will
> > > > set the complete <hint>:<key> keyspec string for the 'keyname' and 'path'.
> > > > 
> > > > To fix this the resolve step must happen during the main-loop as first step
> > > > because the main-loop is doing the 'keyname' and 'path' split already.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  scripts/keytoc.c | 13 +++++--------
> > > >  1 file changed, 5 insertions(+), 8 deletions(-)
> > > > 
> > > > diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> > > > index 617317d6607e..105fa4b5413d 100644
> > > > --- a/scripts/keytoc.c
> > > > +++ b/scripts/keytoc.c
> > > > @@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
> > > >  	char *tmp, *key_name_c;
> > > >  
> > > >  	/* key name handling */
> > > > -	keyname = try_resolve_env(keyname);
> > > > -	if (!keyname)
> > > > -		exit(1);
> > > > -
> > > >  	tmp = key_name_c = strdup(keyname);
> > > >  
> > > >  	while (*tmp) {
> > > > @@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
> > > >  	}
> > > >  
> > > >  	/* path/URI handling */
> > > > -	path = try_resolve_env(path);
> > > > -	if (!path)
> > > > -		exit(1);
> > > > -
> > > 
> > > This was introduced by Basti in 685cc602e0ad ("keytoc: allow __ENV__
> > > lookup for keyname hint") to support:
> > > 
> > > CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FIT_KEY_NAME_HINT:__ENV__FIT_KEY"
> > 
> > Right, albeit I don't see why there should be two separate environment
> > variables for specifying one keyspec entry.
> > 
> > > I believe this patch breaks this usecase.
> > 
> > Of course :-/ but at the moment the simple use-case:
> > 
> > __ENV__FITKEY -> FITKEY="hint:<key>"
> > 
> > is broken. IMHO having two separate ENV variables is rather counter
> > intuitive. I also found myself in the following situation:
> > 
> > __ENV__FITKEYS -> FITKEYS="hint:<key> hint-2:<key-2> <key-3>"
> > 
> > This is not supported as well. So we should really define and document
> > the ENV behavior.
> 
> Let's recap the different possibilities. Plain without __ENV__
> substitution we would have:
> 
>   CONFIG_CRYPTO_PUBLIC_KEYS="pkcs11:object=foo"
>   CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo"
>   CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo /foobar/baz.der"
>   CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"
> 
> With Bastis patch we also support:
> 
>   myhint="myhint"
>   myname="pkcs11:object=foo"
>   CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__myhint:__ENV__myname"
> 
> Now you want to support:
> 
>   mykeys="myhint:pkcs11:object=foo"
>   CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykeys"
> 
> This would be easy to do by adding the call to try_resolve_env() in the
> loop like you did. You could keep the calls to try_resolve_env() in
> gen_key() in place to still support Bastis usecase.

Sure, too easy that I didn't thought about keeping the code. Albeit I
still find the use-case of having it separate not really intuitive. The
integration could still have two variables <hint> and <key> which is
afterwards combined to <hintkey>.

Anyway, I will keep Bastis use-case :)

> The other thing you like to support is:
> 
>   mykeys="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"
>   CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykeys"
> 
> This is more complicated. Right now we assume one single key in each
> argv[] element and consequently call gen_key() for each element. With
> the above an argv[] element can expand to multiple keys and we would
> have to split this up first.
> 
> One way would be to do all __ENV__ substitutions upfront.
> 
> Not sure if it's worth the hassle though.

This is a use-case I would like to see implemented. Imagine the
following:

 * generic defconfig set CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FITKEYS"
 * platform-a: export FITKEYS="hint:keyspec"
 * platform-b: export FITKEYS="hint1:keyspec1 keyspec2 hint3:keyspec3"

This would make the integration easier since no adaption of the .config
is required. Without the support for the above, platform-b would need to
adapt the .config first:
 * platform-b: CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FITKEYS __ENV__FITKEY2 __ENV__FITKEY3"
 * platform-b: export FITKEYS="hint1:keyspec1"
 	       export FITKEYS2="keyspec2"
	       export FITKEYS3="hint3:keyspec3"

Regards,
  Marco


> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


