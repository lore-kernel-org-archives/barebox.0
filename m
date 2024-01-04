Delivery-date: Thu, 04 Jan 2024 12:37:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLM27-003TW2-1s
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:37:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLM26-0000gL-GJ
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:37:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1z6h670atWnOzjqIZ9GSEBXSWRB9EVRf/uNJCOH3WPw=; b=cUFEXEFdbuzzjFMy2X2F+B2PYL
	KGxw7+1BR+Uoyx1X1sYjk1nkcY8kcbiYizPZdEgipzbAGkCBPI6FLJBHlCpTkgE1TY62cPCkXn8eo
	Jd4RP216wSqGeQU+Zbq7GqqOZ27eaxUE/Px3JyaIXF5VFMtvhRlkSrI66Rjp4jVtdjpYpACbbgJ/6
	BQFkjWGXxL6s0zAJ5G/d3NirtGHFeL2WYuPgSKufhCvgESvCnhaLWDb5jUvuRLnA1fCem/VCms3iC
	41BJAyKSkv2wcRPPzZRTH1AIWa28sFe4Ov/wGZe43RAx8nGvHO7En4oFAY7VvzD3Ot38TCj+iw0F5
	yRHqjYhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLM14-00DqHU-05;
	Thu, 04 Jan 2024 11:36:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLM10-00DqEZ-1v
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:36:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLM0z-0000Ut-3b; Thu, 04 Jan 2024 12:35:57 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLM0y-000Kpa-GO; Thu, 04 Jan 2024 12:35:56 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLM0y-00ACtD-E7; Thu, 04 Jan 2024 12:35:56 +0100
Date: Thu, 4 Jan 2024 12:35:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20240104113556.GS1318922@pengutronix.de>
References: <20240104010404.c88b208689aca142c3828bf8@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240104010404.c88b208689aca142c3828bf8@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_033558_642385_0FBD058F 
X-CRM114-Status: GOOD (  25.25  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC] uimagefs segmentation fault
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Antony,

On Thu, Jan 04, 2024 at 01:04:04AM +0300, Antony Pavlov wrote:
> Hi!
> 
> I have prepared a linux uImage file for testing my uImage-related patches.
> 
> barebox$ dumpimage -l ./defaultenv/defaultenv-2-base/uImage
> Image Name:   Linux-6.7.0-rc4-00003-ge185a416f
> Created:      Wed Jan  3 15:28:27 2024
> Image Type:   ARM Linux Kernel Image (uncompressed)
> Data Size:    6131616 Bytes = 5987.91 KiB = 5.85 MiB
> Load Address: 00000000
> Entry Point:  00000000
> 
> I tryed to mount my uImage under mainline master sandbox barebox:
> 
> barebox@Sandbox:/ mount -t uimagefs env/uImage /mnt/
> Segmentation fault
> 
> The problem is in the uimagefs_add_str(). if s == NULL then strlen() fails:
> 
> static int uimagefs_add_str(struct uimagefs_handle *priv, enum uimagefs_type type,
>                                 char *s)
> {
>         struct uimagefs_handle_data *d;
> 
>         d = xzalloc(sizeof(*d));
>         d->type = type;
>         d->name = xstrdup(uimagefs_type_to_str(type));
>         d->data = s;
>         d->size = strlen(s); <<<<<<<<<<<<<<<<<<<<<<<<<<< s == NULL!
> 
>         list_add_tail(&d->list, &priv->list);
> 
>         return 0;
> }
> 
> 
> It looks like my uImage lacks some attributes, e.g. "os".
> 
> So I can propose several solutions for the problem:
> 
> 1. don't call strlen(s) if s == NULL:
> 
> @@ -226,7 +226,7 @@ static int uimagefs_add_str(struct uimagefs_handle *priv, enum uimagefs_type typ
>         d->type = type;
>         d->name = xstrdup(uimagefs_type_to_str(type));
>         d->data = s;
> -       d->size = strlen(s);
> +       d->size = (s != NULL) ? strlen(s) : 0;
> 
>         list_add_tail(&d->list, &priv->list);
> 
> So we will have empty files (len == 0) for absent attributes.
> 
> 2. regard the s == NULL situation as error:
> 
> @@ -222,6 +222,9 @@ static int uimagefs_add_str(struct uimagefs_handle *priv, enum uimagefs_type typ
>  {
>         struct uimagefs_handle_data *d;
>  
> +       if (!s)
> +               return -ENODATA;
> +
>         d = xzalloc(sizeof(*d));
>         d->type = type;
>         d->name = xstrdup(uimagefs_type_to_str(type));
> 
> So we can't mount uImages without required attributes.

I don't see a point in refusing to mount uImages without these
properties, they might not be required and the user should decide
if they are needed or not.

I don't have any preference for 1. or 3. though, so unless anybody
else has a good reason for one or the other go and roll a dice ;)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


