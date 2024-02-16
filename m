Delivery-date: Sat, 17 Feb 2024 00:03:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb7Ek-0097br-11
	for lore@lore.pengutronix.de;
	Sat, 17 Feb 2024 00:03:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rb7Ej-0002Ru-Mu
	for lore@pengutronix.de; Sat, 17 Feb 2024 00:03:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3+ULkWNtR9R34+LQ7mPsHOB6SxiwnOD1+W+gW52jnMk=; b=n1VCpp66iJB2mFy2/wgWOAsSh8
	w5P4+JeSqvTZyShjmhw8UW+/awR+Sm0QwcmtQaJzW8WIKIWW8MFxHonFh4ctNHjDWFT5JverbD0BB
	izwYG7dT5dESf7A7WzSsWyJFqFZwI14xHvrEIPH5I/vbA2EEoZKd1UAl5pJ6H8m4rj2/+jgla0I8A
	Q90v4K5x0zrE+qtebv3iUhNn8E2EbnFxSDXVnDgiELqpHiB0MFBfhuW1rs925Q5WaQlLexEuG7+9+
	Kmy7Sa2PPXqI6RuVeB87h+UbRLL95NQ4oEI/B9G8+5tILOGgduwkglSO7Y2J7LMx3lJ7Z8PyhJhA7
	h8BMUj3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb7EC-0000000423G-2zfc;
	Fri, 16 Feb 2024 23:02:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb7E9-0000000422j-3lXE
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 23:02:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7E6-00023p-Q5; Sat, 17 Feb 2024 00:02:38 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7E5-0019jE-GK; Sat, 17 Feb 2024 00:02:37 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rb7E5-00BbYm-1N;
	Sat, 17 Feb 2024 00:02:37 +0100
Date: Sat, 17 Feb 2024 00:02:37 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240216230237.7fk6luetjyu7nwbo@pengutronix.de>
References: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240216220649.2328345-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_150241_961392_AB83C330 
X-CRM114-Status: GOOD (  27.69  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: platform: return -EPROBE_DEFER when ensuring
 probe with driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-02-16, Ahmad Fatoum wrote:
> -ENODEV is a bad choice for an error code for of_device_ensure_probed.
> 
> The function is either called from board code or from driver frameworks,
> which usually just propagate the error code with unintended
> consequences:
> 
>   - A board driver probe function returning -ENODEV is silently skipped
> 
>   - A driver framework function returning -ENODEV is often interpreted
>     to mean that an optional resource is not specified (e.g. in DT).
> 
> In both cases, the user isn't provided an error message and wrong
> behavior can crop up later. In my case, the XHCI driver would time out,
> because phy_get propagated of_device_ensure_probed's -ENODEV, which was
> understood to mean that no PHY is needed and not that the PHY is
> specified in the DT, but no driver was bound to it.
> 
> Instead of -ENODEV, let's thus return -EPROBE_DEFER. This can be
> propagated up to the driver core, which on a deep probe system (the only
> ones where of_device_ensure_probed is not a no-op) will print a fat red
> error message. We could achieve the same with some other error code, but

This big fat error should indicate that something went really wrong.

> -EPROBE_DEFER is what a non-deep-probe system would return when probes
> are deferred indefinitely, so symmetry in the deep probe case fits well.

Albeit I get your point, I'm not very happy to return this error code
here since the whole idea of deep-probe was to get rid of EPROBE_DEFER.

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 060fa3458bd2..664af49d268f 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -504,7 +504,7 @@ int of_device_ensure_probed(struct device_node *np)
>  	 * requirements are fulfilled if 'dev->driver' is not NULL.
>  	 */
>  	if (!dev->driver)
> -		return -ENODEV;
> +		return -EPROBE_DEFER;

What about a new error code, e.g. ENODRV which is only used once in this
function? Additional we can add an error message like:
pr_err("No driver found for %pO\n, np); since we know that the driver is
missing.

If you want to stick with -EPROBE_DEFER you need at least adapt the
above comment and the function doc.

Regards,
  Marco

>  
>  	return 0;
>  }
> -- 
> 2.39.2
> 
> 
> 


