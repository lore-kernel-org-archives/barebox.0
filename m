Delivery-date: Wed, 06 Aug 2025 08:17:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXSm-007Y7n-18
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 08:17:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXSl-0003Od-Lb
	for lore@pengutronix.de; Wed, 06 Aug 2025 08:17:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9qNPhGLK+RvSuvsMYbGQXdByQ7a8WNLISiNt8N898U=; b=ec32iEHbDP2VBlmATofkgH9ftB
	2RKOQmJgwkl/SQcx9CZoO2xJiET1CZzsOUbRuz8Y2BpxwxP0olZh5w9Be+Gcxrk+g47hijAr2xpo7
	AVfG/rhvmhTTbNipV8s09ihbSd50eR4gcaMHm+Iu4Uule5YUdHZIg058cBw5B4EK8/PjAi5x0j2H1
	Ustk6SE0IzTzw6lJ6kTOeyyQosYLOA76gGwe64fn6oITn6eVMjv9mwevpu3ciTG/smL1MkKiINf0c
	yh8oSoU7cGc3MXft5LUtsVLg0AXccBagvXYaTjN7SXqyuZgaJZZ9S6HJULQig/s98NtmBkNnWp7gd
	HwRmySEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXSE-0000000EOUQ-2PvV;
	Wed, 06 Aug 2025 06:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXSA-0000000EOSE-3WUY
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 06:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXS9-0003JH-HW; Wed, 06 Aug 2025 08:16:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXS9-00CAE2-19;
	Wed, 06 Aug 2025 08:16:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXS9-00C9wo-0r;
	Wed, 06 Aug 2025 08:16:45 +0200
Date: Wed, 6 Aug 2025 08:16:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <aJLzTeaUdRxkN1dc@pengutronix.de>
References: <20250724135056.1252995-1-m.felsch@pengutronix.de>
 <20250724135056.1252995-2-m.felsch@pengutronix.de>
 <aJG88XTuJpuYX12B@pengutronix.de>
 <20250805200754.tpbu2pypgaz6gk2g@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250805200754.tpbu2pypgaz6gk2g@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_231646_880548_E8A7873D 
X-CRM114-Status: GOOD (  32.93  )
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

On Tue, Aug 05, 2025 at 10:07:54PM +0200, Marco Felsch wrote:
> On 25-08-05, Sascha Hauer wrote:
> > +Cc Basti
> > 
> > On Thu, Jul 24, 2025 at 03:50:56PM +0200, Marco Felsch wrote:
> > > Currently the env provided keyspec is resolved during the gen_key() step
> > > by making use of the try_resolve_env(). This is wrong because it will
> > > set the complete <hint>:<key> keyspec string for the 'keyname' and 'path'.
> > > 
> > > To fix this the resolve step must happen during the main-loop as first step
> > > because the main-loop is doing the 'keyname' and 'path' split already.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  scripts/keytoc.c | 13 +++++--------
> > >  1 file changed, 5 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> > > index 617317d6607e..105fa4b5413d 100644
> > > --- a/scripts/keytoc.c
> > > +++ b/scripts/keytoc.c
> > > @@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
> > >  	char *tmp, *key_name_c;
> > >  
> > >  	/* key name handling */
> > > -	keyname = try_resolve_env(keyname);
> > > -	if (!keyname)
> > > -		exit(1);
> > > -
> > >  	tmp = key_name_c = strdup(keyname);
> > >  
> > >  	while (*tmp) {
> > > @@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
> > >  	}
> > >  
> > >  	/* path/URI handling */
> > > -	path = try_resolve_env(path);
> > > -	if (!path)
> > > -		exit(1);
> > > -
> > 
> > This was introduced by Basti in 685cc602e0ad ("keytoc: allow __ENV__
> > lookup for keyname hint") to support:
> > 
> > CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FIT_KEY_NAME_HINT:__ENV__FIT_KEY"
> 
> Right, albeit I don't see why there should be two separate environment
> variables for specifying one keyspec entry.
> 
> > I believe this patch breaks this usecase.
> 
> Of course :-/ but at the moment the simple use-case:
> 
> __ENV__FITKEY -> FITKEY="hint:<key>"
> 
> is broken. IMHO having two separate ENV variables is rather counter
> intuitive. I also found myself in the following situation:
> 
> __ENV__FITKEYS -> FITKEYS="hint:<key> hint-2:<key-2> <key-3>"
> 
> This is not supported as well. So we should really define and document
> the ENV behavior.

Let's recap the different possibilities. Plain without __ENV__
substitution we would have:

  CONFIG_CRYPTO_PUBLIC_KEYS="pkcs11:object=foo"
  CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo"
  CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo /foobar/baz.der"
  CONFIG_CRYPTO_PUBLIC_KEYS="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"

With Bastis patch we also support:

  myhint="myhint"
  myname="pkcs11:object=foo"
  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__myhint:__ENV__myname"

Now you want to support:

  mykeys="myhint:pkcs11:object=foo"
  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykeys"

This would be easy to do by adding the call to try_resolve_env() in the
loop like you did. You could keep the calls to try_resolve_env() in
gen_key() in place to still support Bastis usecase.

The other thing you like to support is:

  mykeys="myhint:pkcs11:object=foo myotherhint:/foobar/baz.der"
  CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykeys"

This is more complicated. Right now we assume one single key in each
argv[] element and consequently call gen_key() for each element. With
the above an argv[] element can expand to multiple keys and we would
have to split this up first.

One way would be to do all __ENV__ substitutions upfront.

Not sure if it's worth the hassle though.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


