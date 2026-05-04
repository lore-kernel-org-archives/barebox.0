Delivery-date: Mon, 04 May 2026 13:36:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJrb8-000sR3-1u
	for lore@lore.pengutronix.de;
	Mon, 04 May 2026 13:36:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJrb7-0006rl-53
	for lore@pengutronix.de; Mon, 04 May 2026 13:36:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iGaHNPzF/0SbkFbyvZusn3ZGR4VJA1w1m/m5iaB5wbc=; b=SZ6F6dOyyjNjLGgcTUTWRl961A
	VfnsMhqI5HKLIZzU56390hZ9j5VmmtvuTtnbE3QAzNYVALDajKb8BcrdyuHORxiF5ylFT/uVQwPhH
	lMQZFkS2BcyzKOZ8k9aQNf/eRzioX3QD/fp7lUAY20a+0Irk8WCRKJKVcudObYiV5PR3vooKDlVaM
	XOJHAvRtU6mvhPBeUrJIhnTgXIx7JEupwPMqVcUx+LJ11n5Q5F6WX1/tL1kDH4X0tQLGXtGxN+u4c
	ixPs2EnHYIdDLkRqz1tsJ1kePLTY/dii2c4FGHQbBwC5aCI/fTfgNRLuHBNMyTNUjHX7CFIWR2BBt
	SmJJ5rbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJraO-0000000D3kG-0pt4;
	Mon, 04 May 2026 11:35:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJraK-0000000D3j3-0flH
	for barebox@lists.infradead.org;
	Mon, 04 May 2026 11:35:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1wJraG-0006bq-Lo; Mon, 04 May 2026 13:35:32 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1wJraF-000P57-1t;
	Mon, 04 May 2026 13:35:32 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1wJraF-0000000GbtC-3u3y;
	Mon, 04 May 2026 13:35:31 +0200
Date: Mon, 4 May 2026 13:35:31 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <rx3wbvvlr3x5iaaojqzqi34cpjrxbweo6y5ijkgiruqoq344ty@lpxohuiqqvwr>
References: <20260428-env-autoprobe-v1-0-9cdedfa0752e@pengutronix.de>
 <20260428-env-autoprobe-v1-3-9cdedfa0752e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428-env-autoprobe-v1-3-9cdedfa0752e@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_043536_235522_281027D5 
X-CRM114-Status: GOOD (  34.31  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 26-04-28, Sascha Hauer wrote:
> Add an explicit Kconfig option to allow searching the environment storage path
> based on the barebox environment partition GUID.
> 
> So far this depended on CONFIG_INSECURE being set. First of all loading the
> barebox environment from storage is always insecure as the barebox environment
> doesn't have any security measures. The difference that comes with loading
> the environment from an explicitly specified storage device and autoprobing
> it from the available block devices is that with the former an attacker would
> need access to the internal storage whereas with the latter barebox could
> be tricked into loading an environment from an external SD card.
> 
> Whether or not this is acceptable depends on the case, so ask the user for it.
> 
> Real security can only be provided by not loading an environment from storage
> at all, but that can be controlled at compile time by disabling CONFIG_ENV_HANDLING
> or at runtime by security policies.

TBH I actually don't see why this option can't follow the
CONFIG_INSECURE.

Since ENV handling is enabled you do pull the HAS_INSECURE_DEFAULTS=y.
As you written above env handling is always insecure as of now.

So it seems that you want to get rid of the CONFIG_INSECURE=y in your
setup. The only users of this CONFIG switch are global_env_autoprobe and
lib/random.c. Therefore my question, that I don't see why we can't stick
with the CONFIG_INSECURE switch.

Regards,
  Marco


> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/Kconfig       | 14 ++++++++++++++
>  common/environment.c |  2 +-
>  2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index fd422714d5..f74f06b4ad 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -987,6 +987,20 @@ config ENV_HANDLING
>  	  A safe use of the mutable environment may be possible if board code only
>  	  mounts it after verifying a JSON Web Token that enables a debug mode.
>  
> +config ENV_HANDLING_AUTOPROBE
> +	depends on ENV_HANDLING
> +	bool "Autoprobe for environment devices"
> +	default y
> +	help
> +	  There are two ways for specifying where the barebox environment is. The first one
> +	  specifies the path explicitly in the device tree or board code. The other one is
> +	  to automatically search it on block devices which is enabled with this option.
> +	  Here a partition with the barebox environment GUID is searched. If this option
> +	  is enabled and no environment is chosen by device tree or board code then a block
> +	  device containing a partition with the barebox environment GUID is used for the
> +	  environment. A block device barebox has booted from is preferred over other block
> +	  devices.
> +
>  config DEFAULT_ENVIRONMENT
>  	select CRC32
>  	bool
> diff --git a/common/environment.c b/common/environment.c
> index f883a520c6..a3281feca2 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -53,7 +53,7 @@ struct action_data {
>  
>  #define TMPDIR "/.defaultenv"
>  
> -static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
> +static int global_env_autoprobe = IS_ENABLED(CONFIG_ENV_HANDLING_AUTOPROBE);
>  static char *default_environment_path;
>  
>  void default_environment_path_set(const char *path)
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


