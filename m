Delivery-date: Fri, 17 Jun 2022 10:36:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27TC-0050bF-2C
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 10:36:47 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o27TB-00011b-78
	for lore@pengutronix.de; Fri, 17 Jun 2022 10:36:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t/pOBYsEFo01Z8EXXcKUw/jgzREVyFRK0abjknOGEkw=; b=vKCj5cQ/mH3qMgrahamG3uitfJ
	ugKXRD4VPwBS+pF9zLAzEsw7NUUDTvMTg4bcwbeE1WHslCXC6QUKxytf6lqsTH0csEHGEwf/3UAI5
	OPqGguU8kG5ex2IK4xnDax7CQ1zpnuJs2f0jeF6i1JOnalJok101eJUlSChu/mNx6nzq5skGHc6Xg
	xpQ/HG/9JUvW9Cj2Svw3OjI6Zob5e6E/KpjVlsklWQavcMqDekw4E5y32WJK/yEkQ7hNwU/KqubZw
	ntAnpnJej12Do4Zye9FKeyGhnXOZuzRkHZLDDzQk7ys73TqMbSr6CmT6YCxPH6mFn9XSG6+FSAd0j
	KxgdSL1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27Rh-006Ltl-3Y; Fri, 17 Jun 2022 08:35:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27RX-006LqJ-I8
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:35:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o27RV-0000DA-0K; Fri, 17 Jun 2022 10:35:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o27RU-0000eL-Nh; Fri, 17 Jun 2022 10:35:00 +0200
Date: Fri, 17 Jun 2022 10:35:00 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617083500.GK1615@pengutronix.de>
References: <20220617081357.GJ1615@pengutronix.de>
 <20220617082414.323238-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220617082414.323238-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_013503_671969_E45A54AE 
X-CRM114-Status: GOOD (  32.18  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts: imx-usb-loader: simplify code flow for file
 size calculations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 17, 2022 at 10:24:14AM +0200, Uwe Kleine-König wrote:
> This change contains several changes that make the code flow easier to
> understand (in my eyes at least):
> 
>  - Rename max_length to firststage_len
>    In some cases the image is loaded in two stages: First the PBL which
>    is started after the PBL is loaded completely and then the whole
>    image. So the size of the first stage isn't about some maximum.
> 
>  - Drop unintuitive total_size variable
>    This variable used to be 0 in the one stage case and the filesize
>    otherwise. Just use firststage_len for the first stage and use the
>    filesize for the second stage (if needed).
> 
>  - Don't call the first stage size "fsize" in the debug output.
> 
>  - Add offset for second stage to debug output.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/imx/imx-usb-loader.c | 37 ++++++++++++++++--------------------
>  1 file changed, 16 insertions(+), 21 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index d8b284298920..4448b19b54bb 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1218,7 +1218,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
>  }
>  
>  static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
> -		unsigned cnt, unsigned *max_length, unsigned *plugin,
> +		unsigned cnt, size_t *firststage_len, unsigned *plugin,
>  		unsigned *header_addr)
>  {
>  	const unsigned char *file_end = file_start + cnt;
> @@ -1233,7 +1233,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
>  		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
>  		*plugin = 0;
>  		if (err >= 0)
> -			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
> +			*firststage_len = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
>  
>  		break;
>  	}
> @@ -1249,7 +1249,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
>  			return -1;
>  		}
>  
> -		*max_length = ((struct imx_boot_data *)bd)->size;
> +		*firststage_len = ((struct imx_boot_data *)bd)->size;
>  		*plugin = ((struct imx_boot_data *)bd)->plugin;
>  		((struct imx_boot_data *)bd)->plugin = 0;
>  
> @@ -1276,7 +1276,7 @@ static int get_payload_start(const unsigned char *p, uint32_t *ofs)
>  }
>  
>  static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
> -		unsigned *p_max_length, unsigned *p_plugin,
> +		size_t *p_firststage_len, unsigned *p_plugin,
>  		unsigned *p_header_addr)
>  {
>  	int ret;
> @@ -1291,7 +1291,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
>  		if (!is_header(p))
>  			continue;
>  
> -		ret = get_dl_start(p, buf, cnt, p_max_length, p_plugin, p_header_addr);
> +		ret = get_dl_start(p, buf, cnt, p_firststage_len, p_plugin, p_header_addr);
>  		if (ret < 0) {
>  			printf("!!get_dl_start returned %i\n", ret);
>  			return ret;
> @@ -1308,7 +1308,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
>  
>  		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
>  			header_cnt++;
> -			header_max = header_offset + *p_max_length + 0x400;
> +			header_max = header_offset + *p_firststage_len + 0x400;
>  			if (header_max > cnt - 32)
>  				header_max = cnt - 32;
>  			printf("header_max=%x\n", header_max);
> @@ -1334,18 +1334,17 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  	unsigned char *buf = NULL;
>  	unsigned char *image;
>  	unsigned char *verify_buffer = NULL;
> -	unsigned max_length;
> +	size_t firststage_len;
>  	unsigned plugin = 0;
>  	unsigned header_addr = 0;
> -	unsigned total_size = 0;
>  
>  	buf = read_file(curr->filename, &fsize);
>  	if (!buf)
>  		return -errno;
>  
> -	max_length = fsize;
> +	firststage_len = fsize;
>  
> -	ret = process_header(curr, buf, fsize, &max_length, &plugin, &header_addr);
> +	ret = process_header(curr, buf, fsize, &firststage_len, &plugin, &header_addr);
>  	if (ret < 0)
>  		goto cleanup;
>  
> @@ -1357,14 +1356,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  		goto cleanup;
>  	}
>  
> +	/* skip over the imx-image-part */
>  	image = buf + header_offset;
>  	fsize -= header_offset;
>  
> -	if (fsize > max_length) {
> -		total_size = fsize;
> -		fsize = max_length;
> -	}
> -
>  	type = FT_APP;
>  
>  	if (verify) {
> @@ -1384,10 +1379,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  		}
>  	}
>  
> -	printf("loading binary file(%s) to 0x%08x, fsize=%zu type=%d...\n",
> -			curr->filename, header_addr, fsize, type);
> +	printf("loading binary file(%s) to 0x%08x, firststage_len=%zu type=%d, hdroffset=%u...\n",
> +			curr->filename, header_addr, firststage_len, type, header_offset);
>  
> -	ret = load_file(image, fsize, header_addr, type, false);
> +	ret = load_file(image, firststage_len, header_addr, type, false);
>  	if (ret < 0)
>  		goto cleanup;
>  
> @@ -1425,7 +1420,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  			return ret;
>  	}
>  
> -	if (total_size) {
> +	if (firststage_len < fsize) {
>  		uint32_t ofs;
>  
>  		ret = get_payload_start(image, &ofs);
> @@ -1433,9 +1428,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  			printf("Cannot get offset of payload\n");
>  			goto cleanup;
>  		}
> -		printf("Loading full image\n");
> +		printf("Loading full image from offset %u\n", ofs);
>  		printf("Note: This needs board support on the other end\n");
> -		load_file(image + ofs, total_size - ofs, 0, 0, true);
> +		load_file(image + ofs, fsize - ofs, 0, 0, true);
>  	}
>  
>  	ret = 0;
> 
> base-commit: 339737fcf0a7c4be1d1984283619cb14aaee6aff
> -- 
> 2.36.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


