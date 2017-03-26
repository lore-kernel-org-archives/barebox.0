Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs344-0001NZ-Mh
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 07:58:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs33g-0003Xe-8V
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 09:57:52 +0200
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs33g-00041J-1A
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 09:57:52 +0200
Date: Sun, 26 Mar 2017 09:57:51 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170326075751.i2b7jpo2nscpqvew@pengutronix.de>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/13] bootm: move open to image_handler
To: barebox@lists.infradead.org

On Sun, Mar 26, 2017 at 04:44:52AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/bootm.c               |  2 +
>  arch/blackfin/lib/blackfin_linux.c |  1 +
>  arch/nios2/lib/bootm.c             |  1 +
>  arch/ppc/lib/ppclinux.c            |  1 +
>  common/bootm.c                     | 79 ++++++++++++--------------------------
>  common/image-fit.c                 | 14 +++++++
>  common/misc.c                      |  1 +
>  common/uimage.c                    | 32 +++++++++++++++
>  include/bootm.h                    |  1 +
>  include/image-fit.h                |  1 +
>  include/image.h                    |  2 +
>  11 files changed, 80 insertions(+), 55 deletions(-)
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 8068a53be..204344f87 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -217,6 +217,7 @@ static int do_bootm_linux(struct image_data *data)
>  
>  static struct image_handler uimage_handler = {
>  	.name = "ARM Linux uImage",
> +	.open = uimage_bootm_open,
>  	.bootm = do_bootm_linux,
>  	.filetype = filetype_uimage,
>  	.ih_os = IH_OS_LINUX,
> @@ -579,6 +580,7 @@ BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr wit
>  
>  static struct image_handler arm_fit_handler = {
>          .name = "FIT image",
> +	.open = fit_bootm_open,
>          .bootm = do_bootm_linux,
>          .filetype = filetype_oftree,
>  };
> diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
> index 5ebd284d1..27002eadb 100644
> --- a/arch/blackfin/lib/blackfin_linux.c
> +++ b/arch/blackfin/lib/blackfin_linux.c
> @@ -68,6 +68,7 @@ static int do_bootm_linux(struct image_data *idata)
>  
>  static struct image_handler handler = {
>  	.name = "Blackfin Linux",
> +	.open = uimage_bootm_open,
>  	.bootm = do_bootm_linux,
>  	.filetype = filetype_uimage,
>  	.ih_os = IH_OS_LINUX,
> diff --git a/arch/nios2/lib/bootm.c b/arch/nios2/lib/bootm.c
> index 34908bde3..f1b3c2624 100644
> --- a/arch/nios2/lib/bootm.c
> +++ b/arch/nios2/lib/bootm.c
> @@ -69,6 +69,7 @@ static int do_bootm_linux(struct image_data *idata)
>  
>  static struct image_handler handler = {
>  	.name = "NIOS2 Linux",
> +	.open = uimage_bootm_open,
>  	.bootm = do_bootm_linux,
>  	.filetype = filetype_uimage,
>  	.ih_os = IH_OS_LINUX,
> diff --git a/arch/ppc/lib/ppclinux.c b/arch/ppc/lib/ppclinux.c
> index 3fca6b272..c882938fa 100644
> --- a/arch/ppc/lib/ppclinux.c
> +++ b/arch/ppc/lib/ppclinux.c
> @@ -100,6 +100,7 @@ error:
>  
>  static struct image_handler handler = {
>  	.name = "PowerPC Linux",
> +	.open = uimage_bootm_open,
>  	.bootm = do_bootm_linux,
>  	.filetype = filetype_uimage,
>  	.ih_os = IH_OS_LINUX,
> diff --git a/common/bootm.c b/common/bootm.c
> index 81625d915..64c933b3c 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -34,7 +34,7 @@ int register_image_handler(struct image_handler *handler)
>  }
>  
>  static struct image_handler *bootm_find_handler(enum filetype filetype,
> -		struct image_data *data)
> +		struct image_data *data, int enforce_os)
>  {
>  	struct image_handler *handler;
>  
> @@ -42,9 +42,16 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
>  		if (filetype != filetype_uimage &&
>  				handler->filetype == filetype)
>  			return handler;
> -		if  (filetype == filetype_uimage &&
> -				handler->ih_os == data->os->header.ih_os)
> -			return handler;
> +		if (filetype == filetype_uimage) {
> +			/*
> +			 * we can take the first one as open is the same
> +			 * not matter the OS
> +			 */
> +			if (enforce_os && handler->ih_os == data->os->header.ih_os)
> +				return handler;
> +			else
> +				return handler;
> +		}
>  	}
>  
>  	return NULL;
> @@ -441,38 +448,6 @@ int bootm_get_os_size(struct image_data *data)
>  	return -EINVAL;
>  }
>  
> -static int bootm_open_os_uimage(struct image_data *data)
> -{
> -	int ret;
> -
> -	data->os = uimage_open(data->os_file);
> -	if (!data->os)
> -		return -EINVAL;
> -
> -	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
> -		ret = uimage_verify(data->os);
> -		if (ret) {
> -			printf("Checking data crc failed with %s\n",
> -					strerror(-ret));
> -			uimage_close(data->os);
> -			return ret;
> -		}
> -	}
> -
> -	uimage_print_contents(data->os);
> -
> -	if (data->os->header.ih_arch != IH_ARCH) {
> -		printf("Unsupported Architecture 0x%x\n",
> -		       data->os->header.ih_arch);
> -		return -EINVAL;
> -	}
> -
> -	if (data->os_address == UIMAGE_SOME_ADDRESS)
> -		data->os_address = data->os->header.ih_load;
> -
> -	return 0;
> -}
> -
>  static void bootm_print_info(struct image_data *data)
>  {
>  	if (data->os_res)
> @@ -548,6 +523,14 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		goto err_out;
>  	}
>  
> +	handler = bootm_find_handler(os_type, data, 0);
> +	if (!handler) {
> +		printf("no image handler found for image type %s\n",
> +			file_type_to_string(os_type));
> +		ret = -ENODEV;
> +		goto err_out;
> +	}

I get that the handler needs to be found here for the open callback, but
what's 'enforce_os' for?
We need a handler that can start the image later anyways, so that's the
use-case for this?

> +
>  	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
>  		data->verify = BOOTM_VERIFY_SIGNATURE;
>  
> @@ -565,25 +548,11 @@ int bootm_boot(struct bootm_data *bootm_data)
>  		}
>  	}
>  
> -	if (IS_ENABLED(CONFIG_FITIMAGE) && os_type == filetype_oftree) {
> -		struct fit_handle *fit;
> -
> -		fit = fit_open(data->os_file, data->os_part, data->verbose, data->verify);
> -		if (IS_ERR(fit)) {
> -			printf("Loading FIT image %s failed with: %s\n", data->os_file,
> -			       strerrorp(fit));
> -			ret = PTR_ERR(fit);
> -			goto err_out;
> -		}
> -
> -		data->os_fit = fit;
> -	}
> -
> -	if (os_type == filetype_uimage) {
> -		ret = bootm_open_os_uimage(data);
> +	if (handler->open) {
> +		ret = handler->open(data);
>  		if (ret) {
> -			printf("Loading OS image failed with: %s\n",
> -					strerror(-ret));
> +			printf("Loading OS image %s failed with: %s\n",
> +					handler->name, strerror(-ret));
>  			goto err_out;
>  		}
>  	}
> @@ -610,7 +579,7 @@ int bootm_boot(struct bootm_data *bootm_data)
>  	if (data->os_address == UIMAGE_SOME_ADDRESS)
>  		data->os_address = UIMAGE_INVALID_ADDRESS;
>  
> -	handler = bootm_find_handler(os_type, data);
> +	handler = bootm_find_handler(os_type, data, 1);
>  	if (!handler) {
>  		printf("no image handler found for image type %s\n",
>  			file_type_to_string(os_type));
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 6a01c614c..5c014d66b 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -583,6 +583,19 @@ struct fit_handle *fit_open(const char *filename, const char *config, bool verbo
>  	return ERR_PTR(ret);
>  }
>  
> +int fit_bootm_open(struct image_data *data)
> +{
> +	struct fit_handle *fit;
> +
> +	fit = fit_open(data->os_file, data->os_part, data->verbose, data->verify);
> +	if (IS_ERR(fit))
> +		return PTR_ERR(fit);
> +
> +	data->os_fit = fit;
> +
> +	return 0;
> +}
> +
>  void fit_close(struct fit_handle *handle)
>  {
>  	if (handle->root)
> @@ -604,6 +617,7 @@ static int do_bootm_sandbox_fit(struct image_data *data)
>  
>  static struct image_handler sandbox_fit_handler = {
>  	.name = "FIT image",
> +	.open = fit_bootm_open,
>  	.bootm = do_bootm_sandbox_fit,
>  	.filetype = filetype_oftree,
>  };
> diff --git a/common/misc.c b/common/misc.c
> index f0f0b808b..60acbd009 100644
> --- a/common/misc.c
> +++ b/common/misc.c
> @@ -101,6 +101,7 @@ const char *strerror(int errnum)
>  	case	EISNAM		: str = "Is a named type file"; break;
>  	case	EREMOTEIO	: str = "Remote I/O error"; break;
>  #endif
> +	case	ESECVIOLATION	: str = "Security Violation"; break;

ESECVIOLATION is introduced in the next patch, so this hunk should be in
that patch.

Regards,
Michael

>  	default:
>  		sprintf(errno_string, "error %d", errnum);
>  		return errno_string;
> diff --git a/common/uimage.c b/common/uimage.c
> index 28a25bba2..72c868882 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -527,3 +527,35 @@ out:
>  
>  	return buf;
>  }
> +
> +int uimage_bootm_open(struct image_data *data)
> +{
> +	int ret;
> +
> +	data->os = uimage_open(data->os_file);
> +	if (!data->os)
> +		return -EINVAL;
> +
> +	if (bootm_get_verify_mode() > BOOTM_VERIFY_NONE) {
> +		ret = uimage_verify(data->os);
> +		if (ret) {
> +			printf("Checking data crc failed with %s\n",
> +					strerror(-ret));
> +			uimage_close(data->os);
> +			return ret;
> +		}
> +	}
> +
> +	uimage_print_contents(data->os);
> +
> +	if (data->os->header.ih_arch != IH_ARCH) {
> +		printf("Unsupported Architecture 0x%x\n",
> +		       data->os->header.ih_arch);
> +		return -EINVAL;
> +	}
> +
> +	if (data->os_address == UIMAGE_SOME_ADDRESS)
> +		data->os_address = data->os->header.ih_load;
> +
> +	return 0;
> +}
> diff --git a/include/bootm.h b/include/bootm.h
> index 6e9777a9a..1c7a145c6 100644
> --- a/include/bootm.h
> +++ b/include/bootm.h
> @@ -92,6 +92,7 @@ struct image_handler {
>  
>  	enum filetype filetype;
>  	int (*bootm)(struct image_data *data);
> +	int (*open)(struct image_data *data);
>  };
>  
>  int register_image_handler(struct image_handler *handle);
> diff --git a/include/image-fit.h b/include/image-fit.h
> index c49f95826..e817ebfae 100644
> --- a/include/image-fit.h
> +++ b/include/image-fit.h
> @@ -38,6 +38,7 @@ struct fit_handle {
>  	unsigned long initrd_size;
>  };
>  
> +int fit_bootm_open(struct image_data *data);
>  struct fit_handle *fit_open(const char *filename, const char *config, bool verbose,
>  			    enum bootm_verify verify);
>  void fit_close(struct fit_handle *handle);
> diff --git a/include/image.h b/include/image.h
> index 3e75d49b8..9ed265658 100644
> --- a/include/image.h
> +++ b/include/image.h
> @@ -229,6 +229,8 @@ struct uimage_handle_data {
>  	ulong len;
>  };
>  
> +struct image_data;
> +int uimage_bootm_open(struct image_data *data);
>  struct uimage_handle *uimage_open(const char *filename);
>  void uimage_close(struct uimage_handle *handle);
>  int uimage_verify(struct uimage_handle *handle);
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
