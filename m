Delivery-date: Wed, 03 Jul 2024 20:47:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP50a-001GEw-2K
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 20:47:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP50a-0004Bd-1l
	for lore@pengutronix.de; Wed, 03 Jul 2024 20:47:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bGkiZHhePO8P1EobesvC/H6w/8kGAgQoWbXOeGi04c8=; b=ytSANnEsNajKAjz9gyElh0wm5z
	B51feH5SWaQXmrphbBc8nZFnymYLovcpYvmUr6xqMzuzluVs9kwuT9obG3IB2NDSqnnbAdWvaswl8
	1VZFj7Wt9KWErE3z6bEEQC3O5Im2thJwl7QE5H6fsxOHqgDrRrW0X47lFZgP6A2bOxhGu+2EbP1ZF
	iuftQux+1WG32kff7mxbvGFAs2TC9qmqrgudIuXHU/0bH7NVOKYA+T0z8Xq2wgioaaYahiXyq6Ebs
	52hv5Yz+Dc6gxuWjWbqUyrnfUYGrG/DkzcRnNMQgZjkAFqViZZcjqt/nX2T5Ukx9IOBtrV8hAzkL/
	Sv70Om0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP505-0000000BBzc-1X2Y;
	Wed, 03 Jul 2024 18:46:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP502-0000000BByd-1fd6
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 18:46:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP500-00048V-N5; Wed, 03 Jul 2024 20:46:36 +0200
Message-ID: <bb196bde-0ebb-4906-9f8c-1a21af75b6cf@pengutronix.de>
Date: Wed, 3 Jul 2024 20:46:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
 <20240703-v2024-05-0-topic-fit-overlay-v3-10-c1fd766fd31d@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-10-c1fd766fd31d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_114638_474216_E8DAD82B 
X-CRM114-Status: GOOD (  21.20  )
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
Subject: Re: [PATCH v3 10/10] FIT: add support to cache opened fit images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 03.07.24 18:58, Marco Felsch wrote:
> Cache the FIT image fit_open() calls to avoid loading the same FIT image
> twice. This is very useful if the same FIT image is used to provide the
> base devicetree, kernel and initrd as well as devicetree overlays.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/image-fit.c  | 32 ++++++++++++++++++++++++++++++++
>  include/image-fit.h |  4 ++++
>  2 files changed, 36 insertions(+)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 4839d8dd33a4..a75bb79d1761 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -16,6 +16,7 @@
>  #include <fs.h>
>  #include <malloc.h>
>  #include <linux/ctype.h>
> +#include <linux/refcount.h>
>  #include <asm/byteorder.h>
>  #include <errno.h>
>  #include <linux/err.h>
> @@ -32,6 +33,8 @@
>  #define CHECK_LEVEL_SIG 2
>  #define CHECK_LEVEL_MAX 3
>  
> +static LIST_HEAD(open_fits);
> +
>  static uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
>  {
>  	dt += size;
> @@ -847,6 +850,18 @@ void *fit_open_configuration(struct fit_handle *handle, const char *name,
>  	return conf_node;
>  }
>  
> +static struct fit_handle *fit_get_handle(const char *filename)
> +{
> +	struct fit_handle *handle;
> +
> +	list_for_each_entry(handle, &open_fits, entry) {
> +		if (!strcmp(filename, handle->filename))

This wouldn't handle identical relative file names correctly, right?
You'll need to make the filename absolute, I think.

> +			return handle;
> +	}
> +
> +	return NULL;
> +}
> +
>  static int fit_do_open(struct fit_handle *handle)
>  {
>  	const char *desc = "(no description)";
> @@ -896,6 +911,8 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
>  	handle->size = size;
>  	handle->verify = verify;
>  
> +	refcount_set(&handle->users, 1);
> +
>  	ret = fit_do_open(handle);
>  	if (ret) {
>  		fit_close(handle);
> @@ -923,6 +940,12 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  	struct fit_handle *handle;
>  	int ret;
>  
> +	handle = fit_get_handle(filename);
> +	if (handle) {
> +		refcount_inc(&handle->users);
> +		return handle;
> +	}
> +
>  	handle = xzalloc(sizeof(struct fit_handle));
>  
>  	handle->verbose = verbose;
> @@ -939,6 +962,9 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  	handle->fit = handle->fit_alloc;
>  	handle->filename = xstrdup(filename);
>  
> +	refcount_set(&handle->users, 1);
> +	list_add(&handle->entry, &open_fits);
> +
>  	ret = fit_do_open(handle);
>  	if (ret) {
>  		fit_close(handle);
> @@ -950,9 +976,15 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  
>  void fit_close(struct fit_handle *handle)
>  {
> +	if (!refcount_dec_and_test(&handle->users))
> +		return;
> +
>  	if (handle->root)
>  		of_delete_node(handle->root);
>  
> +	if (handle->filename)
> +		list_del(&handle->entry);
> +
>  	free(handle->filename);
>  	free(handle->fit_alloc);
>  	free(handle);
> diff --git a/include/image-fit.h b/include/image-fit.h
> index 68f70f4365cb..f9791ff251c5 100644
> --- a/include/image-fit.h
> +++ b/include/image-fit.h
> @@ -7,6 +7,7 @@
>  #define __IMAGE_FIT_H__
>  
>  #include <linux/types.h>
> +#include <linux/refcount.h>
>  #include <bootm.h>
>  
>  struct fit_handle {
> @@ -15,6 +16,9 @@ struct fit_handle {
>  	size_t size;
>  	char *filename;
>  
> +	struct list_head entry;
> +	refcount_t users;
> +
>  	bool verbose;
>  	enum bootm_verify verify;
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



