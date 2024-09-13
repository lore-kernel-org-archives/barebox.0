Delivery-date: Fri, 13 Sep 2024 09:06:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp0Nq-0042Cl-37
	for lore@lore.pengutronix.de;
	Fri, 13 Sep 2024 09:06:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sp0Np-0005Oh-QP
	for lore@pengutronix.de; Fri, 13 Sep 2024 09:06:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/5nGPsY+NH3TCLYGagxFeXuybGn7Q1KkUoxw5NMbvk=; b=qlozo+XUJ7qZRzZh+riNLKKhNe
	UhoUO7yydXDhTUImORSelNr9IVvYB7N+IFvcgPSZKpFLVsGxdi0HseLeim/bi64g5rS/m/CMCuiz0
	zJiSq/qxehcBPD54ahhLTZYMlpHZ9xDz+85rE8eGbjWnlbyNrJH89hap84Zg64exZH4p6R/065/+j
	W12TGCgiWvvyeI+KbX4/1LD8LAT12izxmhhFelxnIPbD9mC6HleFSdkK1DUlq16RwMmXEn9Ra+eOG
	TqLJn9aqWWI1VNKkeYiAL05OlY65R4MS+VllKMOtdl/vfwRXRjEIOetL/tnkXCGTUaffcTvOzw7zU
	yTMj7Jbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0NM-0000000F7O1-0uCr;
	Fri, 13 Sep 2024 07:05:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp0NJ-0000000F7NL-1oQi
	for barebox@lists.infradead.org;
	Fri, 13 Sep 2024 07:05:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sp0NF-00054P-W6; Fri, 13 Sep 2024 09:05:46 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sp0NF-007ZBI-JO; Fri, 13 Sep 2024 09:05:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sp0NF-005ezQ-1R;
	Fri, 13 Sep 2024 09:05:45 +0200
Date: Fri, 13 Sep 2024 09:05:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZuPkSftbPOJQP4TG@pengutronix.de>
References: <20240906104028.2187872-1-s.hauer@pengutronix.de>
 <20240906104028.2187872-8-s.hauer@pengutronix.de>
 <f1f058a9-c2a9-4113-a1f2-920452686194@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f1f058a9-c2a9-4113-a1f2-920452686194@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_000549_493989_A7A59E95 
X-CRM114-Status: GOOD (  25.14  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 07/15] crypto: rsa: include key name hint into
 CONFIG_CRYPTO_RSA_KEY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 11, 2024 at 10:27:42AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 06.09.24 12:40, Sascha Hauer wrote:
> > Set the key name hint in CONFIG_CRYPTO_RSA_KEY. CONFIG_CRYPTO_RSA_KEY
> > now has the form:
> > 
> > <key_name_hint>:<filename/uri>
> > 
> > This is done in preparation to make CONFIG_CRYPTO_RSA_KEY a list of
> > keys.
> 
> IIUC, existing users that do make oldconfig will:
> 
>   - either lose the key hint and need to add it back or just live with
>     an iteration of the list
> 
>   - have pkcs11:$uri URIs which will be interpreted as key hint and
>     result on some error message that the URI is not a valid path.

When a URI starts with "pkcs11:" then keytoc will take this as a pkcs11
URI, it won't interpret it as a key name hint. In other words, "pkcs11"
is not a valid key name hint. You will get an error in this case.

> > diff --git a/crypto/Makefile b/crypto/Makefile
> > index d7a06a721d..f3e49ab7ba 100644
> > --- a/crypto/Makefile
> > +++ b/crypto/Makefile
> > @@ -29,10 +29,9 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
> >  
> >  CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
> >  
> > -ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
> > -RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
> > -endif
> > +RSA_DEP := $(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY))
> > +RSA_DEP := $(shell echo $(RSA_DEP) | sed -e "s/[[:alnum:]]*://g")

There still is a bug here though. The dependencies are wrong for pkcs11
URIs which have a key name hint, i.e. something like "hint:pkcs:foo". In
this case RSA_DEP contains 'foo' and we get:

make[2]: *** No rule to make target 'foo', needed by 'crypto/public-keys.h'.  Stop.

We can remove the dependencies altogether and just keep the FORCE. The
dependencies were introduced to avoid unnecessary rebuilds. However, the
public_keys cmd will only produce output when it actually changes, so
no rebuilds will occur even without the dependencies.

> >  
> >  $(obj)/rsa-keys.h: $(RSA_DEP) FORCE
> > -	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY_NAME_HINT):$(CONFIG_CRYPTO_RSA_KEY))
> > +	$(call cmd,public_keys,$(CONFIG_CRYPTO_RSA_KEY))
> >  endif

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


