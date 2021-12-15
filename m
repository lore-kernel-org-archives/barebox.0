Delivery-date: Wed, 15 Dec 2021 12:19:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxSKF-007FUN-56
	for lore@lore.pengutronix.de; Wed, 15 Dec 2021 12:19:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mxSKD-0006Iq-9s
	for lore@pengutronix.de; Wed, 15 Dec 2021 12:19:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dM1sC4nOZC9Q+dGb7AEbgMBLALr3qXdnN40TPa0Xkyo=; b=kEHrZlDhIHiHwGgBKcu6J9UH1X
	fPE2jBMrzZ75Otb0xft4ot90L6qbY9sI3BKR8Cp4O0PHApO1iM6WMaGCOGXB7VBrFiYHELE/dlpRj
	oGVjSHPrlloU6TnGQuSdOYFKyBEvsnGdmSq+CCTic5CO9u2RdcQ82pXgvV+2QjK+Xdfe2F/mzr+Dn
	Nl0qxeFMKpPsC3aro7N786A3ixKykuP6iG+UTrX1/jkXrfKv1rF4+l6pnMxgQS1GcMIt82pX8d059
	pv7lrb/PvPKi1JHTYfmD+DKh7Y+c/sM70VqtKkIYD/KxbR0kzsBfh2+gW21ZM2HL93FaY++rgyAmc
	Ot2Q8ydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxSIg-000UQn-Sx; Wed, 15 Dec 2021 11:18:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxS59-000Nkl-Tn
 for barebox@lists.infradead.org; Wed, 15 Dec 2021 11:04:25 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mxS58-00044b-JJ; Wed, 15 Dec 2021 12:04:22 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20211213210905.3399551-1-s.hauer@pengutronix.de>
 <20211213210905.3399551-14-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4ad49b60-83ab-6e2f-9cb2-9c5f15642a1d@pengutronix.de>
Date: Wed, 15 Dec 2021 12:04:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211213210905.3399551-14-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_030424_024145_48029384 
X-CRM114-Status: GOOD (  20.24  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 13/25] efi-stdio: Implement efi_console_putc() using
 efi_console_puts()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 13.12.21 22:08, Sascha Hauer wrote:
> The current efi_console_putc() implementation bypasses the special
> character handling. Fix that by using efi_console_puts() for the
> implemenation of efi_console_putc().

Not saying that it matters much in practice, but this breaks xmodem,
doesn't it?

> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/serial/efi-stdio.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
> index d99eca9d5e..d512cc3e01 100644
> --- a/drivers/serial/efi-stdio.c
> +++ b/drivers/serial/efi-stdio.c
> @@ -160,17 +160,6 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
>  	return xlate_keypress(&kd.key);
>  }
>  
> -static void efi_console_putc(struct console_device *cdev, char c)
> -{
> -	uint16_t str[2] = {};
> -	struct efi_console_priv *priv = to_efi(cdev);
> -	struct efi_simple_text_output_protocol *con_out = priv->out;
> -
> -	str[0] = c;
> -
> -	con_out->output_string(con_out, str);
> -}
> -
>  static void clear_to_eol(struct efi_console_priv *priv)
>  {
>  	int pos = priv->out->mode->cursor_column;
> @@ -352,6 +341,11 @@ static int efi_console_puts(struct console_device *cdev, const char *s,
>  	return nbytes;
>  }
>  
> +static void efi_console_putc(struct console_device *cdev, char c)
> +{
> +	efi_console_puts(cdev, &c, 1);
> +}
> +
>  static int efi_console_tstc(struct console_device *cdev)
>  {
>  	struct efi_console_priv *priv = to_efi(cdev);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

