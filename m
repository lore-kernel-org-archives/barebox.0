Delivery-date: Thu, 14 Mar 2024 07:16:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkeOd-005gKn-00
	for lore@lore.pengutronix.de;
	Thu, 14 Mar 2024 07:16:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkeOc-000404-De
	for lore@pengutronix.de; Thu, 14 Mar 2024 07:16:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:Cc:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cDkvB9P65wzm8y6vW9/5uJc2N5Ibhsk6TE3aL8VGnKc=; b=DE9lbaOQEYCq6+NDB81KwQkK5p
	ayKpfyzPhKYMhcXbj7xIiz+OSVst5L6smZwQI0PAYD0TxZ/GgADxAGRF3496lIne5ovMjODN3/meX
	AbbptpKRJzWCrR0Km5sn3CrWRQ5E26Nrb+PrhK7yufsbGLkJqAQTSPCI/1itYDsWQsA+Zlxd1csf7
	oh1Ri/gEwVVzQIBUO/PxvgL/omM/3C9Dgw1SqR7GbiWF3wQHoI9L28HyWOKJuGYr1pS2pZUTVVlUw
	skfxCSo6L/CPWgF7yCho001NQ1BdJFadsIDdLmiE/fWOVh4V7Kqd9ixVef/Vg2Wo1fnswReVGroj8
	aNh59w7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkeN7-0000000DCJb-1Zgm;
	Thu, 14 Mar 2024 06:15:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkeN3-0000000DCIj-0H0i
	for barebox@lists.infradead.org;
	Thu, 14 Mar 2024 06:15:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkeMz-0003KL-5g; Thu, 14 Mar 2024 07:15:13 +0100
Message-ID: <d899c758-8527-4c3b-854c-4014e8fdbc2f@pengutronix.de>
Date: Thu, 14 Mar 2024 07:15:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
 <20240313194547.3725723-4-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?UTF-8?Q?Leonard_G=C3=B6hrs?= <lgo@pengutronix.de>
In-Reply-To: <20240313194547.3725723-4-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_231517_244178_E27698AF 
X-CRM114-Status: GOOD (  17.93  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/4] bootm: add global.bootm.provide_hostname option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

Cc += Leonard

On 13.03.24 20:45, Marco Felsch wrote:
> +		if (!barebox_hostname_is_valid(hostname)) {
> +			pr_err("Provided hostname is not compatible to systemd hostname requirements\n");
> +			ret = -EINVAL;
> +			goto err_out;
> +		}
> +
> +		hostname_bootarg = basprintf("systemd.hostname=%s", hostname);

Linux >= v6.0 supports a hostname= parameter and there's a discussion to decide what
the semantics should be and if it should differ to systemd.hostname=:
https://github.com/systemd/systemd/pull/25158

I am not fully sure, whether we should go with hostname or systemd.hostname= here.
@Leonard, what do you think?

Cheers,
Ahmad


> -static bool barebox_hostname_is_valid(const char *s)
> +bool barebox_hostname_is_valid(const char *s)
>  {
>  	unsigned int n_dots = 0;
>  	const char *p;
> diff --git a/include/bootm.h b/include/bootm.h
> index ee2b574521db..c69da85cdda1 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -34,6 +34,11 @@ struct bootm_data {
>  	 * value of global.machine_id to Kernel.
>  	 */
>  	bool provide_machine_id;
> +	/*
> +	 * provide_hostname - if true, try to add systemd.hostname= with value
> +	 * of global.hostname to Kernel.
> +	 */
> +	bool provide_hostname;
>  	unsigned long initrd_address;
>  	unsigned long os_address;
>  	unsigned long os_entry;
> diff --git a/include/common.h b/include/common.h
> index b7b4d9e35094..d7b5261bc921 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -127,6 +127,7 @@ void barebox_set_model(const char *);
>  const char *barebox_get_hostname(void);
>  void barebox_set_hostname(const char *);
>  void barebox_set_hostname_no_overwrite(const char *);
> +bool barebox_hostname_is_valid(const char *s);
>  
>  const char *barebox_get_serial_number(void);
>  void barebox_set_serial_number(const char *);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



