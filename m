Delivery-date: Fri, 28 May 2021 09:08:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmWbN-0004E3-GM
	for lore@lore.pengutronix.de; Fri, 28 May 2021 09:08:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmWbM-0007xS-Ba
	for lore@pengutronix.de; Fri, 28 May 2021 09:08:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d+26DDX0Y5lO2HzicP9hFL+kRu134H9wfWXzhq24W+o=; b=eiatilPixls3KGuP2njgHWh5nK
	+JvN58yvvtwIcSrCxCxY6S0Cce2p2b96V3XS1Vw1xnnE4mz8PbVGdxf9O5Pez52POtwF+li9CVPIZ
	63+EJUmZYBbZBzNWCGrgjBOYxjA2ntqwHnPWdbYXkmQm7/PdSmhA7RtyowKOBtWIWOudS6rEO1YAQ
	VdVA2zunUyZLwPkTFN7z41arkCZYtqV5mS3LXnLGejO4v16Dpme4JdMNV7ArFc0eDbUOfuQy8t0D5
	0mNIBQTh9irklOfbGmbtTquGv8oxys3JRC80WE/cG82n8JFMdZg8pulfu/8T6F1xyrgikVy/9WlEN
	IJtviK0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmWZf-00CpgT-4s; Fri, 28 May 2021 07:06:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmWZY-00CpcY-Rr
 for barebox@lists.infradead.org; Fri, 28 May 2021 07:06:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lmWZU-0007pM-5s; Fri, 28 May 2021 09:06:16 +0200
To: Lucas Stach <l.stach@pengutronix.de>, barebox@lists.infradead.org
References: <20210526090216.4003977-1-l.stach@pengutronix.de>
 <20210526090216.4003977-2-l.stach@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <82f7ab09-4164-3ab2-4f94-455d084952d5@pengutronix.de>
Date: Fri, 28 May 2021 09:06:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210526090216.4003977-2-l.stach@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_000621_014843_BD18FD8E 
X-CRM114-Status: GOOD (  26.43  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] bootm: add support for booting compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 26.05.21 11:02, Lucas Stach wrote:
> ARM64 does not have a self extracting image format, but relies on the image
> being externally compressed with one of the standard compression algorithms.
> 
> Add support for decompressing the bootm OS image. It is added in common
> code as it may also be useful for other images/architectures.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

FWIW: Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de> # RISC-V 64-bit

> ---
> v2: Add proper error handling if nested bootm fails.
> ---
>  common/bootm.c | 93 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/common/bootm.c b/common/bootm.c
> index 092116beb94a..f5c0e5184b0a 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -12,6 +12,7 @@
>  #include <environment.h>
>  #include <linux/stat.h>
>  #include <magicvar.h>
> +#include <uncompress.h>
>  
>  static LIST_HEAD(handler_list);
>  
> @@ -808,6 +809,86 @@ err_out:
>  	return ret;
>  }
>  
> +static int do_bootm_compressed(struct image_data *img_data)
> +{
> +	struct bootm_data bootm_data = {
> +		.oftree_file = img_data->oftree_file,
> +		.initrd_file = img_data->initrd_file,
> +		.tee_file = img_data->tee_file,
> +		.verbose = img_data->verbose,
> +		.verify = img_data->verify,
> +		.force = img_data->force,
> +		.dryrun = img_data->dryrun,
> +		.initrd_address = img_data->initrd_address,
> +		.os_address = img_data->os_address,
> +		.os_entry = img_data->os_entry,
> +	};
> +	int from, to, ret;
> +	char *dstpath;
> +
> +	from = open(img_data->os_file, O_RDONLY);
> +	if (from < 0)
> +		return -ENODEV;
> +
> +	dstpath = make_temp("bootm-compressed");
> +	if (!dstpath) {
> +		ret = -ENOMEM;
> +		goto fail_from;
> +	}
> +
> +	to = open(dstpath, O_CREAT | O_WRONLY);
> +	if (to < 0) {
> +		ret = -ENODEV;
> +		goto fail_make_temp;
> +	}
> +
> +	ret = uncompress_fd_to_fd(from, to, uncompress_err_stdout);
> +	if (ret)
> +		goto fail_to;
> +
> +	bootm_data.os_file = dstpath;
> +	ret = bootm_boot(&bootm_data);
> +
> +fail_to:
> +	close(to);
> +	unlink(dstpath);
> +fail_make_temp:
> +	free(dstpath);
> +fail_from:
> +	close(from);
> +	return ret;
> +}
> +
> +static struct image_handler bzip2_bootm_handler = {
> +	.name = "BZIP2 compressed file",
> +	.bootm = do_bootm_compressed,
> +	.filetype = filetype_bzip2,
> +};
> +
> +static struct image_handler gzip_bootm_handler = {
> +	.name = "GZIP compressed file",
> +	.bootm = do_bootm_compressed,
> +	.filetype = filetype_gzip,
> +};
> +
> +static struct image_handler lzo_bootm_handler = {
> +	.name = "LZO compressed file",
> +	.bootm = do_bootm_compressed,
> +	.filetype = filetype_lzo_compressed,
> +};
> +
> +static struct image_handler lz4_bootm_handler = {
> +	.name = "LZ4 compressed file",
> +	.bootm = do_bootm_compressed,
> +	.filetype = filetype_lz4_compressed,
> +};
> +
> +static struct image_handler xz_bootm_handler = {
> +	.name = "XZ compressed file",
> +	.bootm = do_bootm_compressed,
> +	.filetype = filetype_xz_compressed,
> +};
> +
>  static int bootm_init(void)
>  {
>  	globalvar_add_simple("bootm.image", NULL);
> @@ -830,6 +911,18 @@ static int bootm_init(void)
>  	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
>  				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
>  
> +
> +	if (IS_ENABLED(CONFIG_BZLIB))
> +		register_image_handler(&bzip2_bootm_handler);
> +	if (IS_ENABLED(CONFIG_ZLIB))
> +		register_image_handler(&gzip_bootm_handler);
> +	if (IS_ENABLED(CONFIG_LZO_DECOMPRESS))
> +		register_image_handler(&lzo_bootm_handler);
> +	if (IS_ENABLED(CONFIG_LZ4_DECOMPRESS))
> +		register_image_handler(&lz4_bootm_handler);
> +	if (IS_ENABLED(CONFIG_XZ_DECOMPRESS))
> +		register_image_handler(&xz_bootm_handler);
> +
>  	return 0;
>  }
>  late_initcall(bootm_init);
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

