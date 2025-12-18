Delivery-date: Thu, 18 Dec 2025 21:04:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWKEG-00Cx1T-0c
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 21:04:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWKEF-0004l7-GS
	for lore@pengutronix.de; Thu, 18 Dec 2025 21:04:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3SaNNMnUte3tFLnjIXBFD97Rydi9Qal3FbfmNYAuJGI=; b=j0EuF1j96CPN3b0G91iqb3raS3
	XByMDHSw7asA+XCG6MEqWTXFXuYZGqyJQpkxnxxj3RbxBXrIe6K7ExYWm+XvUAzeHHMGfL2v+WH8Y
	BFsOBrYNGCaD/eZXDdvTGHnkHlqc0IPje1AOzfL0tQ0FR7r+3MSLi+3ckeBztvCYAMMIdvrK/ALxs
	t7sdelHFT9OouKcvIXTrmSgRC2spud+jSOEcT8fCx6yDGGPM7wI2ZbF4E79oBECzYfMgx7yzS6ogj
	Zfj9TquUHh7/nvuYBpSgr1rLdlmEmOX8FswUiG3iXLaj4gyhBN//2ABB+qljhE28PBL1yN+lO7bXT
	pRYblE5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWKDl-000000098Fb-1AeR;
	Thu, 18 Dec 2025 20:03:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWKDi-000000098FD-2dAP
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 20:03:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWKDg-0004fJ-Fl; Thu, 18 Dec 2025 21:03:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWKDg-006L4n-0w;
	Thu, 18 Dec 2025 21:03:28 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vWKDg-00EeNp-0X;
	Thu, 18 Dec 2025 21:03:28 +0100
Date: Thu, 18 Dec 2025 21:03:28 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20251218200328.rrbdzbslik7ztdjf@pengutronix.de>
References: <20251218-v2025-11-0-topic-imx6-field-return-v1-0-3781143198d6@pengutronix.de>
 <20251218-v2025-11-0-topic-imx6-field-return-v1-4-3781143198d6@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-v2025-11-0-topic-imx6-field-return-v1-4-3781143198d6@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_120330_678321_6E5C35E3 
X-CRM114-Status: GOOD (  30.32  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] commands: hab: extend by field_return fuse burn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-12-18, Fabian Pflug wrote:
> Extend hab command with an additional parameter to burn the field return
> fuse, but only if it is unlocked via the kconfig option.
> Without the kconfig option, the extra argument makes no sense, as it
> would not be possible to access the FIELD_RETURN fuse.
> 
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/mach-imx/Kconfig |  6 +++++-
>  commands/hab.c            | 20 +++++++++++++++++---
>  2 files changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 5f50d1a823..5fea0bbbca 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -926,13 +926,17 @@ config HABV4_CSF_UNLOCK_UID
>            feature. This value must match the per device UNIQUE_ID fuses.
>  
>  	  The below example shows the expected format. The UNIQUE_ID is
> -	  queried by Linux via:
> +	  printed during boot by barebox:
> +	    i.MX___ unique ID: 7766554433221100
> +	  or it can be queried by Linux via:
>              - cat /sys/devices/soc0/serial_number
>  	      7766554433221100
>  
>  	  So this value have to be set:
>  	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
>  
> +	  Afterwards, the `hab -p -r` command can be used to burn the fuse.

This Kconfig update should be done in a separate patch or at least
mentioned within the commit message.

> +
>  config HABV4_IMG_CRT_PEM
>  	string "Path to IMG certificate"
>  	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
> diff --git a/commands/hab.c b/commands/hab.c
> index 8ae943a4c8..435c20f4d3 100644
> --- a/commands/hab.c
> +++ b/commands/hab.c
> @@ -16,9 +16,9 @@ static int do_hab(int argc, char *argv[])
>  	char *srkhashfile = NULL, *srkhash = NULL;
>  	unsigned flags = 0;
>  	u8 srk[SRK_HASH_SIZE];
> -	int lockdown = 0, info = 0;
> +	int lockdown = 0, info = 0, field_return = 0;
>  
> -	while ((opt = getopt(argc, argv, "s:fpx:li")) > 0) {
> +	while ((opt = getopt(argc, argv, "s:fpx:lir")) > 0) {
>  		switch (opt) {
>  		case 's':
>  			srkhashfile = optarg;
> @@ -38,12 +38,16 @@ static int do_hab(int argc, char *argv[])
>  		case 'i':
>  			info = 1;
>  			break;
> +		case 'r':
> +			field_return = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
>  	}
>  
> -	if (!info && !lockdown && !srkhashfile && !srkhash) {
> +	if (!info && !lockdown && !srkhashfile && !srkhash &&
> +	    !(IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN) && field_return)) {
		^
I would drop the CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN check here and
instead just check the: !field_return option...

>  		printf("Nothing to do\n");
>  		return COMMAND_ERROR_USAGE;
>  	}
> @@ -94,6 +98,13 @@ static int do_hab(int argc, char *argv[])
>  		printf("Device successfully locked down\n");
>  	}
>  
> +	if (IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN) && field_return) {

same here..

	if (field_return) {

> +		ret = imx_hab_field_return(flags & IMX_SRK_HASH_WRITE_PERMANENT);
> +		if (ret)
> +			return ret;

and instead check the return value here. If -EINVAL is returned, the
sticky bit is still locked because either the CSF SOC_UID is wrong or
the CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN wasn't enabled at all.
Therefore:

		if (ret) {
			if (ret == -EINVAL && IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN))
				printf("Field-return burn failed, check HABV4_CSF_UNLOCK_UID!\n");
			else if (ret == -EINVAL && !IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN))
				printf("Field-return burn failed because CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN=n\n");
			else
				printf("Field-return burn failed\n");

			return ret;
		}

> +		printf("Field return fuse successfully burnt\n");
> +	}
> +
>  	return 0;
>  }
>  
> @@ -105,6 +116,9 @@ BAREBOX_CMD_HELP_OPT ("-x <sha256>",  "Burn Super Root Key hash from hex string"
>  BAREBOX_CMD_HELP_OPT ("-i",  "Print HAB info")
>  BAREBOX_CMD_HELP_OPT ("-f",  "Force. Write even when a key is already written")
>  BAREBOX_CMD_HELP_OPT ("-l",  "Lockdown device. Dangerous! After executing only signed images can be booted")
> +#ifdef CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN

IMHO we shouldn't add conditional compilation here.

Regards,
  Marco


> +BAREBOX_CMD_HELP_OPT ("-r",  "Field Return. Dangerous! After executing signed images are disabled forever.")
> +#endif // CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN
>  BAREBOX_CMD_HELP_OPT ("-p",  "Permanent. Really burn fuses. Be careful!")
>  BAREBOX_CMD_HELP_END
>  
> 
> -- 
> 2.47.3
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


