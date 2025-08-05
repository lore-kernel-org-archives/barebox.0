Delivery-date: Tue, 05 Aug 2025 22:08:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujNxf-007P9z-1U
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 22:08:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujNxe-0002Vz-Rm
	for lore@pengutronix.de; Tue, 05 Aug 2025 22:08:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q9BxqoBQBwDzICUb8hnQt1n0PKQ9yd81j9K+yB0quck=; b=0WysAJsxxYdFouNXSZOJ2yVDD4
	EDbxnqfpp1phqOHzM3apwcM99UsLG0MX/j5QAC0ba+2wfbDbGM1pKV6pDYFuHV5ztAYS2HnysbEda
	AyCvzsjfIsqJxywiVVH7tKNMOE6gRb2edMaxSsXmST/3lRfUNGgYJ4myE7TS5XhqHJiGNnA/WD7gM
	JVLUGmU3dJLqQRBdm9VeJ1KGz/S+QCIK4NCOz1Y5VKXUwC1LcejqPhWIN4zJKHGWK005ipbflCS0S
	Btv6xy2m4UwHjHJFeoaqPkR0qAbxXmZNlS8PecGrqnZVcNb72osJgOaB23NEJKcUWS/jFrcHwWOxk
	WwndYppA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujNx2-0000000DjWZ-0XJM;
	Tue, 05 Aug 2025 20:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujNwz-0000000DjVW-1cs7
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 20:07:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujNww-0002Pp-Mo; Tue, 05 Aug 2025 22:07:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujNww-00C5u6-1g;
	Tue, 05 Aug 2025 22:07:54 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1ujNww-00AIcr-1I;
	Tue, 05 Aug 2025 22:07:54 +0200
Date: Tue, 5 Aug 2025 22:07:54 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <20250805200754.tpbu2pypgaz6gk2g@pengutronix.de>
References: <20250724135056.1252995-1-m.felsch@pengutronix.de>
 <20250724135056.1252995-2-m.felsch@pengutronix.de>
 <aJG88XTuJpuYX12B@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJG88XTuJpuYX12B@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_130757_427923_1120EBA3 
X-CRM114-Status: GOOD (  27.10  )
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

On 25-08-05, Sascha Hauer wrote:
> +Cc Basti
> 
> On Thu, Jul 24, 2025 at 03:50:56PM +0200, Marco Felsch wrote:
> > Currently the env provided keyspec is resolved during the gen_key() step
> > by making use of the try_resolve_env(). This is wrong because it will
> > set the complete <hint>:<key> keyspec string for the 'keyname' and 'path'.
> > 
> > To fix this the resolve step must happen during the main-loop as first step
> > because the main-loop is doing the 'keyname' and 'path' split already.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  scripts/keytoc.c | 13 +++++--------
> >  1 file changed, 5 insertions(+), 8 deletions(-)
> > 
> > diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> > index 617317d6607e..105fa4b5413d 100644
> > --- a/scripts/keytoc.c
> > +++ b/scripts/keytoc.c
> > @@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
> >  	char *tmp, *key_name_c;
> >  
> >  	/* key name handling */
> > -	keyname = try_resolve_env(keyname);
> > -	if (!keyname)
> > -		exit(1);
> > -
> >  	tmp = key_name_c = strdup(keyname);
> >  
> >  	while (*tmp) {
> > @@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
> >  	}
> >  
> >  	/* path/URI handling */
> > -	path = try_resolve_env(path);
> > -	if (!path)
> > -		exit(1);
> > -
> 
> This was introduced by Basti in 685cc602e0ad ("keytoc: allow __ENV__
> lookup for keyname hint") to support:
> 
> CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FIT_KEY_NAME_HINT:__ENV__FIT_KEY"

Right, albeit I don't see why there should be two separate environment
variables for specifying one keyspec entry.

> I believe this patch breaks this usecase.

Of course :-/ but at the moment the simple use-case:

__ENV__FITKEY -> FITKEY="hint:<key>"

is broken. IMHO having two separate ENV variables is rather counter
intuitive. I also found myself in the following situation:

__ENV__FITKEYS -> FITKEYS="hint:<key> hint-2:<key-2> <key-3>"

This is not supported as well. So we should really define and document
the ENV behavior.

Regards,
  Marco


> 
> Sascha
> 
> >  	if (!strncmp(path, "pkcs11:", 7)) {
> >  		ret = engine_get_pub_key(path, &key);
> >  		if (ret)
> > @@ -737,6 +729,11 @@ int main(int argc, char *argv[])
> >  		char *keyname = NULL;
> >  		char *path = NULL;
> >  
> > +		/* Check if the keyspec is provided by the ENV first */
> > +		keyspec = try_resolve_env(keyspec);
> > +		if (!keyspec)
> > +			exit(1);
> > +
> >  		if (!strncmp(keyspec, "pkcs11:", 7))
> >  			path = strdup(keyspec);
> >  		else
> > -- 
> > 2.39.5
> > 
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


