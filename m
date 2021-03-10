Delivery-date: Wed, 10 Mar 2021 16:00:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lK0KE-0001bc-6I
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 16:00:38 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lK0KD-0006FH-6l
	for lore@pengutronix.de; Wed, 10 Mar 2021 16:00:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dcEMs132kKSCUBr3lcLUaocdJfZwhGf4MyB9Rd0AAis=; b=q2dkHk68ukPaVANqhnX2libxi
	SKOcAc2b7LJZzQCq3K/UEIpNvKhOK6C/0m55AwQ9DfO0tXSyDflHRWUeulDzAOdjFlEoOQplIF+xS
	8OJbW1b0zNkxkxSCqeDLIDTDkyxSzR91XhUAc8PRV6NpO8Pa2/3YmctwMaDelYaLjBuFoFY02CJzS
	1Evqk4VZ4zrPIucRzr6Ms3AC0KtKFtxHs08GKXj8nMQwtxduICWjBLk9ZfitH9t620Yqu2d0TeWL4
	SNFUxGAfVRF7st3KClmM23VJIM1N3hnVNmrcT2wUqL1LjFtraXZo7s52DvCP2617JIEcbcUgpAf0v
	bLxmsFCUw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lK0J8-00746R-Da; Wed, 10 Mar 2021 14:59:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lK0J3-00745M-Cf
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 14:59:27 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lK0J2-000678-QW; Wed, 10 Mar 2021 15:59:24 +0100
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
 <20210310132829.7662-12-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c3fe9b5c-6f21-aace-89af-c8da48c2a061@pengutronix.de>
Date: Wed, 10 Mar 2021 15:59:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210310132829.7662-12-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_145925_560440_6CF21636 
X-CRM114-Status: GOOD (  31.27  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/17] firmware: Load from global search path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 10.03.21 14:28, Sascha Hauer wrote:
> We have a global firmware search path, so use it. This removes the
> path argument from of_firmware_load_overlay(). blspec already extends
> the global firmware search path, so the path is not needed there.
> The of_overlay command has an option for specifying the search path,
> this is simply ignored from now on in favour for the global search path.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/of_overlay.c    | 13 +++++--------
>  common/blspec.c          | 11 +----------
>  drivers/of/of_firmware.c | 25 ++++---------------------
>  include/of.h             |  4 ++--
>  4 files changed, 12 insertions(+), 41 deletions(-)
> 
> diff --git a/commands/of_overlay.c b/commands/of_overlay.c
> index 9a4c008efc..9b1cc6e8c7 100644
> --- a/commands/of_overlay.c
> +++ b/commands/of_overlay.c
> @@ -16,13 +16,12 @@ static int do_of_overlay(int argc, char *argv[])
>  	int opt, ret;
>  	struct fdt_header *fdt;
>  	struct device_node *overlay;
> -	const char *search_path = NULL;
>  	size_t size;
>  
>  	while ((opt = getopt(argc, argv, "S:")) > 0) {
>  		switch (opt) {
>  		case 'S':
> -			search_path = optarg;
> +			/* Ignore for compatibility */

If you really want to maintain compatibility, why don't do a setenv?
Keeping the flag, but ignoring the argument sounds very surprising.

>  			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
> @@ -43,11 +42,9 @@ static int do_of_overlay(int argc, char *argv[])
>  	if (IS_ERR(overlay))
>  		return PTR_ERR(overlay);
>  
> -	if (search_path) {
> -		ret = of_firmware_load_overlay(overlay, search_path);
> -		if (ret)
> -			goto err;
> -	}
> +	ret = of_firmware_load_overlay(overlay);
> +	if (ret)
> +		goto err;
>  
>  	ret = of_register_overlay(overlay);
>  	if (ret) {
> @@ -64,7 +61,7 @@ err:
>  
>  BAREBOX_CMD_HELP_START(of_overlay)
>  BAREBOX_CMD_HELP_TEXT("Options:")
> -BAREBOX_CMD_HELP_OPT("-S path", "load firmware using this search path")
> +BAREBOX_CMD_HELP_OPT("-S path", "ignored")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(of_overlay)
> diff --git a/common/blspec.c b/common/blspec.c
> index 14e3238c0f..d771176a45 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -39,7 +39,6 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
>  	struct fdt_header *fdt;
>  	struct device_node *overlay;
>  	char *path;
> -	char *firmware_path;
>  	size_t size;
>  
>  	path = basprintf("%s/%s", abspath, file);
> @@ -64,15 +63,7 @@ static int blspec_apply_oftree_overlay(char *file, const char *abspath,
>  		goto out;
>  	}
>  
> -	/*
> -	 * Unfortunately the device tree overlay contains only the filename of
> -	 * the firmware and relies on the firmware search paths to find the
> -	 * actual file. Use /lib/firmware in the Linux root directory and hope
> -	 * for the best.
> -	 */
> -	firmware_path = basprintf("%s/%s", abspath, "/lib/firmware");
> -	ret = of_firmware_load_overlay(overlay, firmware_path);
> -	free(firmware_path);
> +	ret = of_firmware_load_overlay(overlay);
>  	if (ret) {
>  		pr_warn("failed to load firmware: skip overlay \"%s\"\n", path);
>  		of_delete_node(overlay);
> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
> index 096f84572e..12ce1d95d0 100644
> --- a/drivers/of/of_firmware.c
> +++ b/drivers/of/of_firmware.c
> @@ -6,10 +6,6 @@
>  #include <firmware.h>
>  #include <of.h>
>  
> -struct overlay_info {
> -	const char *firmware_path;
> -};
> -
>  static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
>  {
>  	struct device_node *mgr_node;
> @@ -26,12 +22,9 @@ static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
>  }
>  
>  static int load_firmware(struct device_node *target,
> -			 struct device_node *fragment, void *data)
> +			 struct device_node *fragment, void *unused)
>  {
> -	struct overlay_info *info = data;
>  	const char *firmware_name;
> -	const char *firmware_path = info->firmware_path;
> -	char *firmware;
>  	int err;
>  	struct firmware_mgr *mgr;
>  
> @@ -50,22 +43,13 @@ static int load_firmware(struct device_node *target,
>  	if (!mgr)
>  		return -EINVAL;
>  
> -	firmware = basprintf("%s/%s", firmware_path, firmware_name);
> -	if (!firmware)
> -		return -ENOMEM;
> -
> -	err = firmwaremgr_load_file(mgr, firmware);
> -
> -	free(firmware);
> +	err = firmwaremgr_load_file(mgr, firmware_name);
>  
>  	return err;
>  }
>  
> -int of_firmware_load_overlay(struct device_node *overlay, const char *path)
> +int of_firmware_load_overlay(struct device_node *overlay)
>  {
> -	struct overlay_info info = {
> -		.firmware_path = path,
> -	};
>  	int err;
>  	struct device_node *root;
>  	struct device_node *resolved;
> @@ -81,8 +65,7 @@ int of_firmware_load_overlay(struct device_node *overlay, const char *path)
>  	 */
>  	ovl = resolved ? resolved : overlay;
>  
> -	err = of_process_overlay(root, ovl,
> -				 load_firmware, &info);
> +	err = of_process_overlay(root, ovl, load_firmware, NULL);
>  
>  	if (resolved)
>  		of_delete_node(resolved);
> diff --git a/include/of.h b/include/of.h
> index e43e225338..56291b9801 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1033,7 +1033,7 @@ int of_process_overlay(struct device_node *root,
>  				   struct device_node *overlay, void *data),
>  		    void *data);
>  
> -int of_firmware_load_overlay(struct device_node *overlay, const char *path);
> +int of_firmware_load_overlay(struct device_node *overlay);
>  #else
>  static inline struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay)
> @@ -1067,7 +1067,7 @@ static inline int of_process_overlay(struct device_node *root,
>  	return -ENOSYS;
>  }
>  
> -static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
> +static inline int of_firmware_load_overlay(struct device_node *overlay)
>  {
>  	return -ENOSYS;
>  }
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

