Delivery-date: Fri, 08 May 2026 17:00:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMh2-002Oix-08
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 17:00:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMgw-0005ZA-1c
	for lore@pengutronix.de; Fri, 08 May 2026 17:00:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q+jVNnc9IZuzh+jfDLwtx3Yq7/4hERYgZUGHUdo5l0I=; b=GZRbmlV3P9m4Q4DsrHbgpsujjR
	6REJXKsKE/4r8oLxON44QTckbrTY9g+6rTwzojPV0t+rZOi2oTyywyvMWSr/D4cVgRexcuL9+gUi8
	r/KidxrH/ng4O5XTgwo7j/TV0WaJLDMNNGmL0tJKep3b2/xxvyx/LQ/Zw28vw5ERZv+YT0fS29EZb
	nPzRezu+y+murrgptva+pdHv1aMTsPMeTiUsLfPc31f7A52lYxcFcKrqat8777a2ImkSE1eh15bos
	ZPOF2YvH/S6TTj4iamHxrUOl3JS1GJjqASGxnAOLfSs9HowWwVQ5PN4Z3bjbbsenYXtTJNMS0D6+k
	4xDdsRtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMf5-00000006kNk-0qZf;
	Fri, 08 May 2026 14:58:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMf1-00000006kMp-3NKt
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 14:58:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wLMey-00045D-Rp; Fri, 08 May 2026 16:58:36 +0200
Message-ID: <ae635f59-857f-454b-8b36-472ae3779e03@pengutronix.de>
Date: Fri, 8 May 2026 16:58:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260508105855.3772602-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260508105855.3772602-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_075839_852685_4172702C 
X-CRM114-Status: GOOD (  36.95  )
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
Subject: Re: [PATCH v2] environment: add explicit option to allow searching
 for environment devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 5/8/26 12:58 PM, Sascha Hauer wrote:
> Add an explicit Kconfig option to allow searching the environment storage
> path based on the barebox environment partition GUID.
> 
> So far this depended on CONFIG_INSECURE being set, but that's not the whole
> picture. Loading an unsigned environment is inherently insecure, allowing
> to find the partition by partition UUID just adds one point to the top:
> With it we potentially allow loading the environment from external storage
> devices like SD card slots that could be plugged without opening a device.
> 
> So instead of implying that partition UUID is insecure, or no partition UUID
> is secure, just add a specific option to let the user decide on this option.
> 
> The new Kconfig option defaults to the setting of CONFIG_INSECURE. This makes
> sure that users which previously had CONFIG_INSECURE disabled the new option
> doesn't leak in unnoticed on a barebox update. Also it preserves the behaviour
> of in-tree defconfigs which all have CONFIG_INSECURE enabled.
> 
> This also removes the globalvar global.env.autoprobe. It turned out that this
> option doesn't work: The content of that variable is evaluated before the
> default environment is loaded, so we never actually had a chance to set it
> from the environment.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>


> ---
>  .../migration-guides/migration-master.rst          |  7 +++++++
>  common/Kconfig                                     | 14 ++++++++++++++
>  common/environment.c                               | 14 +-------------
>  3 files changed, 22 insertions(+), 13 deletions(-)
> 
> Changes since v1:
> - Change reasoning for the patch
> - remove non functional global.env.autoprobe
> - add note to migration guide
> 
> diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
> index 026dbe8588..b5435f4e0c 100644
> --- a/Documentation/migration-guides/migration-master.rst
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -1,2 +1,9 @@
>  :orphan:
>  
> +Removal of global.env.autoprobe
> +===============================
> +
> +The global.env.autoprobe variable introduced with v2025.02.0 is removed and
> +now replaced with CONFIG_ENV_HANDLING_AUTOPROBE. It has never worked. If you
> +want to load a barebox environment based on its partition UUID enable
> +CONFIG_ENV_HANDLING_AUTOPROBE.
> \ No newline at end of file
> diff --git a/common/Kconfig b/common/Kconfig
> index cd002865f7..6c190c6c5e 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -979,6 +979,20 @@ config ENV_HANDLING
>  	  A safe use of the mutable environment may be possible if board code only
>  	  mounts it after verifying a JSON Web Token that enables a debug mode.
>  
> +config ENV_HANDLING_AUTOPROBE
> +	depends on ENV_HANDLING
> +	bool "Autoprobe for environment devices"
> +	default CONFIG_INSECURE
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
> index ec14d0629a..9d3607a70e 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -53,7 +53,6 @@ struct action_data {
>  
>  #define TMPDIR "/.defaultenv"
>  
> -static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
>  static char *default_environment_path;
>  
>  void default_environment_path_set(const char *path)
> @@ -83,7 +82,7 @@ static struct cdev *default_environment_path_search(void)
>  	struct cdev *env_cdev = NULL;
>  	struct block_device *blk;
>  
> -	if (!IS_ENABLED(CONFIG_BLOCK) || !global_env_autoprobe)
> +	if (!IS_ENABLED(CONFIG_BLOCK) || !IS_ENABLED(CONFIG_ENV_HANDLING_AUTOPROBE))
>  		return NULL;
>  
>  	boot_node = bootsource_of_node_get(NULL);
> @@ -544,14 +543,3 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
>  
>  	return ret;
>  }
> -
> -#ifdef __BAREBOX__
> -static int register_env_vars(void)
> -{
> -	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
> -	return 0;
> -}
> -postcore_initcall(register_env_vars);
> -BAREBOX_MAGICVAR(global.env.autoprobe,
> -                 "Automatically probe known block devices for environment");
> -#endif

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



