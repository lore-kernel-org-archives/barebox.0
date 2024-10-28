Delivery-date: Mon, 28 Oct 2024 17:56:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5T2M-001wM5-1G
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:56:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5T2N-0001cD-1z
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:56:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8G3WtAGHUm8lk8hsyuZEauexVWEsad0yKm7oFqd57dc=; b=MzjuB9crWCLKrFcLa792liJmrT
	Eq7FixWjhmpgccHngkarGfa8NDSyofB1Pjn0OZL/Bin14dfldtnooRCbdxEJeX98PxQumtFZn5xz1
	S9JpANdeTc+tXfllVaTrq6dvzx+bZ16o+OfvQWfH6gVzbO6gFyhkW4eczeLPIf9weYYDvq/OqBiO7
	vLdVGOeekNyVuHyZ0qKWJ9N8hsxXHA1k4/iAnolAeeszIa52y/9cEZ0TpMjRLUMDgpdUGvTLUfWjF
	HertWJTbZiT/x7J6nwg8V0i1bFWvoaR840mnT72U1EWGkPBmnxOFH8Q0Ni3E0Fky1MGy+Qda+MFB9
	MXkaf2+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5T1s-0000000BaJ9-01am;
	Mon, 28 Oct 2024 16:55:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Spc-0000000BXpA-2uLP
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:43:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t5SpZ-0000dZ-Qp; Mon, 28 Oct 2024 17:43:01 +0100
Message-ID: <8d46da8b-f2db-4e61-ae3d-067244df8824@pengutronix.de>
Date: Mon, 28 Oct 2024 17:43:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20241028-feature-dryrun-global-v1-1-5529ac1e133e@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241028-feature-dryrun-global-v1-1-5529ac1e133e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_094304_764477_692463A8 
X-CRM114-Status: GOOD (  19.84  )
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
Subject: Re: [PATCH] bootm: make dryrun controllable via global variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

Thanks for your patch.

On 28.10.24 17:34, Stefan Kerkmann wrote:
> When the bootm code is not called directly by the bootm command it is
> useful to control the dryrun with a globalvar. This introduces
> global.bootm.dryrun for this purpose.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  common/bootm.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index b6ab358426..91e33b3f6b 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -42,6 +42,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
>  }
>  
>  static int bootm_appendroot;
> +static int bootm_dryrun;
>  static int bootm_earlycon;
>  static int bootm_provide_machine_id;
>  static int bootm_provide_hostname;
> @@ -64,6 +65,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
>  	data->provide_machine_id = bootm_provide_machine_id;
>  	data->provide_hostname = bootm_provide_hostname;
>  	data->verbose = bootm_verbosity;
> +	data->dryrun = bootm_dryrun;
>  }
>  
>  static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
> @@ -1032,6 +1034,7 @@ static int bootm_init(void)
>  	if (bootm_signed_images_are_forced())
>  		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
>  
> +	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);

Please add a BAREBOX_MAGICVAR(global.bootm.dryrun, "some descriptive text").

See the end of the file for examples.

Cheers,
Ahmad

>  	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
>  
>  	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
> 
> ---
> base-commit: 59658c877bcc605fe3ca36653b4f40f57856b81a
> change-id: 20241028-feature-dryrun-global-09e9222847df
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


