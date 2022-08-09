Delivery-date: Tue, 09 Aug 2022 11:41:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLjT-00HDnU-IU
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:41:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLjU-0007NY-2i
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:41:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DhVtS8fUGO7SCawKtnNXSGByQl9nexgb2Hd6r9dsiHE=; b=Yx/GuoNEWgChOa+vBHIJTPicSq
	FSnf+QmQ4a4ybF8qveYC3HpUwSCe/+y4OyKAN1MEdPpOOAiniH2ffYJ1ZNUmgbFnjvOK+r2W3Kxgw
	HCjcGzmdg8ec0adrZs3+8fK4CFweHQmm2oEP/d+TfHylKDu+GA27xpqUlFSWGywMtjR7jw4oEctHt
	mjh1eNkf8wcoAvavjUwR4d931TUh8WmXtMAYbfhus5Fc3DZjHugDCfUwtZ/LlCQCH8TLWTvm6xNv6
	C6b4fBwmkLmdfyFXW2i5JGsg48tdqqbyjkh1ECI65mzJQTXDT7yYh2l7sZjXd0qNe6Uhc3jK9+VNq
	dvw9+Kbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLiD-0035yL-Ma; Tue, 09 Aug 2022 09:39:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLi8-0035x8-3a
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:39:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLi6-00073Y-8Z; Tue, 09 Aug 2022 11:39:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLi5-0004IG-Vx; Tue, 09 Aug 2022 11:39:37 +0200
Date: Tue, 9 Aug 2022 11:39:37 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809093937.GO31528@pengutronix.de>
References: <20220809091946.3906847-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220809091946.3906847-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_023940_333113_1A8BAF73 
X-CRM114-Status: GOOD (  39.61  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] FIT: add first support for compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 11:19:46AM +0200, Ahmad Fatoum wrote:
> FIT image contents are often compressed, but we got by so far, because
> a compressed initramfs is usually meant to be decompressed by the kernel
> (and so has compression = "none") and arm32 kernels had their own
> decompresser embedded. On ARM64, bootloader is responsible for
> uncompressing kernel, so we should properly process the compression
> property we so far ignored.
> 
> The decompression isn't as efficient as one would hope for, because
> the FIT format only describes length of the compressed data. We thus
> have two options:
> 
>   - define an output size up-front, e.g. by guessing the uncompressed
>      buffer size for decompression or hardcoding it (e.g. U-Boot's
>      CONFIG_SYS_BOOTM_LEN).
> 
>   -  Uncompress to a file descriptor
> 
> We choose the second one to play it safe, but it comes with worse
> performance because of extra memory copies. Intention is to go with
> first option for the kernel image: We know how much size we can spare
> for the kernel image and can have bootm_load_os uncompress there
> directly without intermittent memory copies. This would involve slight
> change to the barebox decompresser API to align it with the kernel's,
> which allows to have it accept and observe an output buffer size.
> So far, we had the kernel PREBOOT API, which lacks such a parameter,
> but that's an optimization for another day.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - allocate new uncompressed-data property to reference buffer
>     instead of reusing struct property::value instead of
>     value_const
> ---

Much better, thanks. Applied.

Sascha

>  common/image-fit.c   | 31 ++++++++++++++++++++++++++++++-
>  drivers/of/base.c    |  4 ++--
>  include/of.h         |  8 ++++++++
>  include/uncompress.h |  6 ++++++
>  lib/uncompress.c     | 40 ++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 86 insertions(+), 3 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 507a857cadb4..82357731fa7a 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -21,6 +21,7 @@
>  #include <linux/err.h>
>  #include <stringlist.h>
>  #include <rsa.h>
> +#include <uncompress.h>
>  #include <image-fit.h>
>  
>  #define FDT_MAX_DEPTH 32
> @@ -559,6 +560,11 @@ int fit_get_image_address(struct fit_handle *handle, void *configuration,
>  	return ret;
>  }
>  
> +static void fit_uncompress_error_fn(char *x)
> +{
> +	pr_err("%s\n", x);
> +}
> +
>  /**
>   * fit_open_image - Open an image in a FIT image
>   * @handle: The FIT image handle
> @@ -581,7 +587,8 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  		   unsigned long *outsize)
>  {
>  	struct device_node *image;
> -	const char *unit = name, *type = NULL, *desc= "(no description)";
> +	const char *unit = name, *type = NULL, *compression = NULL,
> +	      *desc= "(no description)";
>  	const void *data;
>  	int data_len;
>  	int ret = 0;
> @@ -613,6 +620,28 @@ int fit_open_image(struct fit_handle *handle, void *configuration,
>  	if (ret < 0)
>  		return ret;
>  
> +	of_property_read_string(image, "compression", &compression);
> +	if (compression && strcmp(compression, "none") != 0) {
> +		void *uc_data;
> +
> +		if (!IS_ENABLED(CONFIG_UNCOMPRESS)) {
> +			pr_err("image has compression = \"%s\", but support not compiled in\n");
> +			return -ENOSYS;
> +		}
> +
> +		data_len = uncompress_buf_to_buf(data, data_len, &uc_data,
> +					    fit_uncompress_error_fn);
> +		if (data_len < 0) {
> +			pr_err("data couldn't be decompressed\n");
> +			return data_len;
> +		}
> +
> +		data = uc_data;
> +
> +		/* associate buffer with FIT, so it's not leaked */
> +		__of_new_property(image, "uncompressed-data", uc_data, data_len);
> +	}
> +
>  	*outdata = data;
>  	*outsize = data_len;
>  
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 2247b5a1a348..37c94d00bf2a 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2221,8 +2221,8 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
>  	return node;
>  }
>  
> -static struct property *__of_new_property(struct device_node *node, const char *name,
> -		void *data, int len)
> +struct property *__of_new_property(struct device_node *node, const char *name,
> +				   void *data, int len)
>  {
>  	struct property *prop;
>  
> diff --git a/include/of.h b/include/of.h
> index 4aadbb7edb49..25254456d014 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -136,6 +136,8 @@ extern struct property *of_new_property(struct device_node *node,
>  extern struct property *of_new_property_const(struct device_node *node,
>  					      const char *name,
>  					      const void *data, int len);
> +extern struct property *__of_new_property(struct device_node *node,
> +					  const char *name, void *data, int len);
>  extern void of_delete_property(struct property *pp);
>  
>  extern struct device_node *of_find_node_by_name(struct device_node *from,
> @@ -520,6 +522,12 @@ static inline struct property *of_new_property(struct device_node *node,
>  	return NULL;
>  }
>  
> +extern struct property *__of_new_property(struct device_node *node,
> +					  const char *name, void *data, int len)
> +{
> +	return NULL;
> +}
> +
>  static inline void of_delete_property(struct property *pp)
>  {
>  }
> diff --git a/include/uncompress.h b/include/uncompress.h
> index 4bdb03d4f5b6..72ba1dfda607 100644
> --- a/include/uncompress.h
> +++ b/include/uncompress.h
> @@ -15,6 +15,12 @@ int uncompress_fd_to_fd(int infd, int outfd,
>  int uncompress_fd_to_buf(int infd, void *output,
>  	   void(*error_fn)(char *x));
>  
> +int uncompress_buf_to_fd(const void *input, size_t input_len,
> +			 int outfd, void(*error_fn)(char *x));
> +
> +ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
> +			      void **buf, void(*error_fn)(char *x));
> +
>  void uncompress_err_stdout(char *);
>  
>  #endif /* __UNCOMPRESS_H */
> diff --git a/lib/uncompress.c b/lib/uncompress.c
> index 15eb3da098c8..1134d8c52801 100644
> --- a/lib/uncompress.c
> +++ b/lib/uncompress.c
> @@ -178,3 +178,43 @@ int uncompress_fd_to_buf(int infd, void *output,
>  
>  	return uncompress(NULL, 0, fill_fd, NULL, output, NULL, error_fn);
>  }
> +
> +int uncompress_buf_to_fd(const void *input, size_t input_len,
> +			 int outfd, void(*error_fn)(char *x))
> +{
> +	uncompress_outfd = outfd;
> +
> +	return uncompress((void *)input, input_len, NULL, flush_fd,
> +			  NULL, NULL, error_fn);
> +}
> +
> +ssize_t uncompress_buf_to_buf(const void *input, size_t input_len,
> +			      void **buf, void(*error_fn)(char *x))
> +{
> +	char *dstpath;
> +	size_t size;
> +	int outfd, ret;
> +
> +	dstpath = make_temp("data-uncompressed");
> +	if (!dstpath)
> +		return -ENOMEM;
> +
> +	outfd = open(dstpath, O_CREAT | O_WRONLY);
> +	if (outfd < 0) {
> +		ret = -ENODEV;
> +		goto free_temp;
> +	}
> +
> +	ret = uncompress_buf_to_fd(input, input_len, outfd, uncompress_err_stdout);
> +	if (ret)
> +		goto close_outfd;
> +
> +	*buf = read_file(dstpath, &size);
> +close_outfd:
> +	close(outfd);
> +	unlink(dstpath);
> +free_temp:
> +	free(dstpath);
> +
> +	return ret ?: size;
> +}
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


