Delivery-date: Fri, 22 Nov 2024 11:28:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEQuB-004z6l-2P
	for lore@lore.pengutronix.de;
	Fri, 22 Nov 2024 11:28:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tEQuB-0005qW-5w
	for lore@pengutronix.de; Fri, 22 Nov 2024 11:28:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qOCalI1z/x8bNdwfH3UWTrVhXk9hiJbMbY1BG5g/1Yg=; b=c2bzgEW4soK+EFWx3MbbwNgSfj
	KZNgwjsrMuMW21QAXwao9r2e86H+DQfFJ6glHkqme2ZT4V+ZW1eZgnTpTks+C657lDrOPwODfHyGh
	/F3+7+Im0eVfIJwaucNHyD9JF/QbAxKeh6lJtgSuSR7qWUhf0AkBbHbi8MdeQB6ZVxskMHslu/hzU
	MEStWrFNeiTJ7717SG9dNS6eyxx/XqCIqbYCttHiBktvCkSERKhkWBS3NO6iRxDgj1FgQ0TixCZEh
	XKaQSwUxowEPwQi7NS+HH9OSPfS/nXIGnSv+i0x+x5FclZiR7ZVp6741qJ4rM54eVu2A7XrwlLavd
	duxDjQIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEQth-00000002Fcg-2KPM;
	Fri, 22 Nov 2024 10:28:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEQtf-00000002Fbb-0ka4
	for barebox@lists.infradead.org;
	Fri, 22 Nov 2024 10:28:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1tEQtc-0005gT-BY; Fri, 22 Nov 2024 11:28:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tEQtc-0023ay-0Y;
	Fri, 22 Nov 2024 11:28:16 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1tEQtc-008zhi-0H;
	Fri, 22 Nov 2024 11:28:16 +0100
Date: Fri, 22 Nov 2024 11:28:16 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20241122102816.vyy7qqcd7zs7w5cz@pengutronix.de>
References: <20241122095326.2877232-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241122095326.2877232-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_022819_219775_91CB5C03 
X-CRM114-Status: GOOD (  19.03  )
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
Subject: Re: [PATCH master] usb: typec: fix freeing uninitialized memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 24-11-22, Ahmad Fatoum wrote:
> When the code was first added, a kzalloc was allocating the memory for
> the struct device. This has been recently changed to malloc as a
> shifting of the header caused the function to be no longer defined.
> 
> malloc() doesn't zero the memory though, leading to a potential freeing
> of uninitialized memory in dev_set_name.
> 
> Fix this by using calloc() instead. Reintroducing kzalloc() would be
> fine too, but calloc() saves some space, because it guarantees a smaller
> alignment.
> 
> Fixes: d9fa8b26b60c ("usb: typec: fix compile test with CONFIG_SANDBOX")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/typec/class.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/typec/class.c b/drivers/usb/typec/class.c
> index 495ac794622f..9f9b4d6ca8f3 100644
> --- a/drivers/usb/typec/class.c
> +++ b/drivers/usb/typec/class.c
> @@ -142,7 +142,7 @@ struct typec_port *typec_register_port(struct device *parent,
>  	const char *alias;
>  	int ret;
>  
> -	port = malloc(sizeof(*port));
> +	port = calloc(sizeof(*port), 1);

Albeit it is a nit and result is the same, the nmemb is the first
argument of calloc().

Regards,
  Marco

>  	if (!port)
>  		return ERR_PTR(-ENOMEM);
>  
> -- 
> 2.39.5
> 
> 
> 


