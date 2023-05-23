Delivery-date: Tue, 23 May 2023 09:30:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MTw-00AV0Y-PZ
	for lore@lore.pengutronix.de; Tue, 23 May 2023 09:30:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1MTu-0004XU-2X
	for lore@pengutronix.de; Tue, 23 May 2023 09:30:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qgDfkdj6EZTQUNa6SJ6aRFznDIOZGlZkRxIwAmuOg2s=; b=hDZUodwVSaFX9HPzmVTM04sDg4
	uKLQmAQ3GFKuLYEWURp+Zo0tRRJns6x14Mqo/1/RPNbqybQU0XvtZZF7vzCBc8ZG5W3mhN494Ob4w
	TSck5mufLtAB0HKEaZsB+ppupst/sEBAHjT+hzH0DCxzaj60WIybrH6aC4lgSNyi/TjRVvoMoOZd5
	tmGzAUgyHgPaitI00e9DhQIqFG0J0gvGdzoGcW8yl4S2BO505sSJM34UXbPTIkDa/3WHI1Qqdk6R6
	6HXUaW+1GPRfinJHS4Ptv3mVWu1cRKkW82gZg2MG12wDinUmhPWG/ryqBUMu1ejrm0YNI+iRv1ehr
	5UtCuo7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MSj-009E1T-0u;
	Tue, 23 May 2023 07:29:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1MSd-009E0j-0b
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 07:29:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MSa-00046k-Gx; Tue, 23 May 2023 09:29:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1MSZ-0002fL-I6; Tue, 23 May 2023 09:29:31 +0200
Date: Tue, 23 May 2023 09:29:31 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Message-ID: <20230523072931.GH17518@pengutronix.de>
References: <20230519121028.2475832-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230519121028.2475832-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_002935_244635_F1C0DE80 
X-CRM114-Status: GOOD (  33.05  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3] barebox: Fix excessive loading of FIT images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 19, 2023 at 02:10:28PM +0200, Ahmad Fatoum wrote:
> From: Christian Melki <christian.melki@t2data.com>
> 
> Barebox doesn't use the FIT image size from the header
> when loading FIT images. It bluntly assumes that the FIT image
> is equal to the file size. Which would be true if the
> FIT image is a file. But if it's situated on a raw device,
> then barebox proceeds to load the entire contents of that
> raw device, only to conclude that it only needed parts of it.
> Fix it.
> 
> Cc: Daniel Brát <danek.brat@gmail.com>
> Signed-off-by: Christian Melki <christian.melki@t2data.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

Applied, thanks

Sascha

> v3 was here: https://lore.barebox.org/barebox/20220729205441.9512-1-danek.brat@gmail.com/
> v2 -> v3:
>  - restrict change to bootm_open_fit
>  - use cached data in struct image_data
> v1 -> v2:
>  - use fdt32_to_cpu to read the totalsize from header
> ---
>  common/bootm.c      | 9 ++++++++-
>  common/image-fit.c  | 7 ++++---
>  include/image-fit.h | 2 +-
>  3 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index fb1ed36a26dc..91a6e1688674 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -522,13 +522,20 @@ static int bootm_open_os_uimage(struct image_data *data)
>  static int bootm_open_fit(struct image_data *data)
>  {
>  	struct fit_handle *fit;
> +	struct fdt_header *header;
>  	static const char *kernel_img = "kernel";
> +	size_t flen, hlen;
>  	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_FITIMAGE))
>  		return 0;
>  
> -	fit = fit_open(data->os_file, data->verbose, data->verify);
> +	header = (struct fdt_header *)data->os_header;
> +	flen = bootm_get_os_size(data);
> +	hlen = fdt32_to_cpu(header->totalsize);
> +
> +	fit = fit_open(data->os_file, data->verbose, data->verify,
> +		       min(flen, hlen));
>  	if (IS_ERR(fit)) {
>  		pr_err("Loading FIT image %s failed with: %pe\n", data->os_file, fit);
>  		return PTR_ERR(fit);
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 3e6e7fbd6d12..9bea62bb34a0 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -827,6 +827,7 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
>   * @filename:	The filename of the FIT image
>   * @verbose:	If true, be more verbose
>   * @verify:	The verify mode
> + * @max_size:	maximum length to read from file
>   *
>   * This opens a FIT image found in @filename. The returned handle is used as
>   * context for the other FIT functions.
> @@ -834,7 +835,7 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
>   * Return: A handle to a FIT image or a ERR_PTR
>   */
>  struct fit_handle *fit_open(const char *filename, bool verbose,
> -			    enum bootm_verify verify)
> +			    enum bootm_verify verify, loff_t max_size)
>  {
>  	struct fit_handle *handle;
>  	int ret;
> @@ -845,8 +846,8 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  	handle->verify = verify;
>  
>  	ret = read_file_2(filename, &handle->size, &handle->fit_alloc,
> -			  FILESIZE_MAX);
> -	if (ret) {
> +			  max_size);
> +	if (ret && ret != -EFBIG) {
>  		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
>  		return ERR_PTR(ret);
>  	}
> diff --git a/include/image-fit.h b/include/image-fit.h
> index f21545988e16..0b8e94bf4635 100644
> --- a/include/image-fit.h
> +++ b/include/image-fit.h
> @@ -23,7 +23,7 @@ struct fit_handle {
>  };
>  
>  struct fit_handle *fit_open(const char *filename, bool verbose,
> -			    enum bootm_verify verify);
> +			    enum bootm_verify verify, loff_t max_size);
>  struct fit_handle *fit_open_buf(const void *buf, size_t len, bool verbose,
>  				enum bootm_verify verify);
>  void *fit_open_configuration(struct fit_handle *handle, const char *name);
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


