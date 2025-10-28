Delivery-date: Tue, 28 Oct 2025 13:56:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDjFl-00Cgmj-1m
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 13:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDjFk-00072S-Ve
	for lore@pengutronix.de; Tue, 28 Oct 2025 13:56:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wHuGTX0bpEjeRAXKGdoUfBrWDWnOcakqxA4523cKtmQ=; b=2bxyu+j4al9JnEVM9Z4HBQkIwR
	bSUHgIAoHKSZd+4Uv1Hg6RV5ylwspQ7heZme8CBRtYJnq4Xokkzv5ihS1ndq/3G1fq88QT1JEp9GY
	fsWsfpJWtNfJ1dYztMUTT9ntNmd8yCIL4YJ/DpEHOtD62CH5JrnJQ2R7QLrtFDFH2DUJ7E1UOkVt3
	2zAiKmnYtpvzaX3dCCCdA6p2aLYSlQzSG6m3LEQtfHimprdyHZtLyFxLNqznaKmOu7/xkPkVmk43t
	kSaBGV3SdnYh0Wux/8txEle/kraiBm9C4St66KISEtA+Uu1AKTuPBGJPJkm7ImmgaBadqBJdnxJk8
	tAF0S2cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjFK-0000000FyT0-0BnQ;
	Tue, 28 Oct 2025 12:56:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDjFI-0000000FySV-29Ir
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 12:56:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDjFG-0006x1-Rs; Tue, 28 Oct 2025 13:56:14 +0100
Message-ID: <2f1a2a5a-1c70-4bdc-a84f-8e76761deca8@pengutronix.de>
Date: Tue, 28 Oct 2025 13:56:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
References: <20251028121820.1242298-1-f.pflug@pengutronix.de>
 <20251028121820.1242298-3-f.pflug@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251028121820.1242298-3-f.pflug@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_055616_555475_4D0A4933 
X-CRM114-Status: GOOD (  22.56  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] startup: mount ps only on policy FS_EXTERNAL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 10/28/25 1:18 PM, Fabian Pflug wrote:
> Without the SCONFIG_FS_EXTERNAL, the bus of the driver for pstore will
> not load, resulting in a missing driver for pstore and an error during
> bootup.
> Only mount the /pstore if FS_EXTERNAL is allowed by the security policy.
> > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  common/startup.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/common/startup.c b/common/startup.c
> index ea5436afa6..f16a99f7e4 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -55,6 +55,19 @@ extern exitcall_t __barebox_exitcalls_start[], __barebox_exitcalls_end[];
>  enum system_states barebox_system_state;
>  
>  #if defined CONFIG_FS_RAMFS && defined CONFIG_FS_DEVFS
> +static struct sconfig_notifier_block sconfig_notifier;
> +static void u_mount_pstore(struct sconfig_notifier_block *nb,
> +			   enum security_config_option opt, bool allowed)
> +{
> +	if (allowed) {
> +		mkdir("/pstore", 0);

I think we should create the directory unconditionally without paying
respect to whether we can mount or not.

> +		mount("none", "pstore", "/pstore", NULL);
> +	} else {
> +		umount("/pstore");

The harm is already done when loosening security mode, so I don't think
we want to start unmounting things.

As mentioned, I'd prefer replacing SCONFIG_FS_EXTERNAL altogether with a
whitelist of mounts, so common code calls:

  allow_mount("none", "ramfs", "/", NULL);
  allow_mount("none", "devfs", "/dev", NULL);

and board code can call:

  allow_mount("non", "pstore", "/pstore", NULL);

and we won't need any special handling here. Waiting to see what Sascha
thinks.

Cheers,
Ahmad

> +		rmdir("/pstore");
> +	}
> +}
> +
>  static int mount_root(void)
>  {
>  	mount("none", "ramfs", "/", NULL);
> @@ -69,8 +82,13 @@ static int mount_root(void)
>  	}
>  
>  	if (IS_ENABLED(CONFIG_FS_PSTORE)) {
> -		mkdir("/pstore", 0);
> -		mount("none", "pstore", "/pstore", NULL);
> +		if (IS_ALLOWED(SCONFIG_FS_EXTERNAL)) {
> +			mkdir("/pstore", 0);
> +			mount("none", "pstore", "/pstore", NULL);
> +		}
> +		sconfig_register_handler_filtered(&sconfig_notifier,
> +						  u_mount_pstore,
> +						  SCONFIG_FS_EXTERNAL);
>  	}
>  
>  	if (IS_ENABLED(CONFIG_9P_FS))

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



