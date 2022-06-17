Delivery-date: Fri, 17 Jun 2022 10:15:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o278U-004zPk-9U
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 10:15:23 +0200
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o278T-0005bc-OB
	for lore@pengutronix.de; Fri, 17 Jun 2022 10:15:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YKE/ZHkMd3zI3ZuYLsX2wyM9l78B1BuDfIfROhm8fEY=; b=gvxfTb2LkZL4EaDh2AIQgfT89f
	lJUPzC5JWfP4DLDOJAAxA5lTVvBWi8yLqldirmR0U2OLPJO0CBUAMuvutnAFj9cARSycAogfmgez1
	v255WiSWrnxuPIbOEZiyguXtGqZ+o/yvNi9eNOWY4y+r0bRzpY5hv0FtdERoSh4daVkY5U7MkeDEV
	Nj66oB+2sp7R4SyRFzW0BhrLis0nmnLwwM7MWAFnYUPhWz+fCsIGGCGq00sDfSW1JIGyxxcxkiLPb
	auFf40ZPg64500n5cKuEU59yCFMuGbmjPQLyRvIuA0ITuWjTkhiVrlokXwsuM9GGklPjrkVDwGSSW
	1ljnSmtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o277E-006FEn-J6; Fri, 17 Jun 2022 08:14:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2779-006FDw-HU
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 08:14:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o2777-0005Kc-O8; Fri, 17 Jun 2022 10:13:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o2777-0008NF-Eu; Fri, 17 Jun 2022 10:13:57 +0200
Date: Fri, 17 Jun 2022 10:13:57 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617081357.GJ1615@pengutronix.de>
References: <20220615123837.2747466-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220615123837.2747466-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_011359_623625_41345AFF 
X-CRM114-Status: GOOD (  33.30  )
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

On Wed, Jun 15, 2022 at 02:38:37PM +0200, Uwe Kleine-König wrote:
> This change contains several changes that make the code flow easier to
> understand (in my eyes at least):
> 
>  - Rename max_length to fststage_length
>    In some cases the image is loaded in two stages: First the PBL which
>    is started after the PBL is loaded completely and then the whole
>    image. So the size of the first stage isn't about some maximum.

When not reading this note I think it's not clear that "fst" is an
abbreviation for "first". Can you rename to "firststage_length"?
If you care about variable name length then you could maybe rather
drop the last three letters ;)

Sascha

> 
>  - Drop unintuitive total_size variable
>    This variable used to be 0 in the one stage case and the filesize
>    otherwise. Just use fststage_length for the first stage and use the
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
> 
> diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
> index 96d36fa0a85e..3676f87abb3a 100644
> --- a/scripts/imx/imx-usb-loader.c
> +++ b/scripts/imx/imx-usb-loader.c
> @@ -1213,7 +1213,7 @@ static int perform_dcd(unsigned char *p, const unsigned char *file_start,
>  }
>  
>  static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
> -		unsigned cnt, unsigned *max_length, unsigned *plugin,
> +		unsigned cnt, size_t *fststage_length, unsigned *plugin,
>  		unsigned *header_addr)
>  {
>  	const unsigned char *file_end = file_start + cnt;
> @@ -1228,7 +1228,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
>  		*header_addr = ohdr->dcd_ptr_ptr - offsetof(struct imx_flash_header, dcd);
>  		*plugin = 0;
>  		if (err >= 0)
> -			*max_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
> +			*fststage_length = dcd_end[0] | (dcd_end[1] << 8) | (dcd_end[2] << 16) | (dcd_end[3] << 24);
>  
>  		break;
>  	}
> @@ -1244,7 +1244,7 @@ static int get_dl_start(const unsigned char *p, const unsigned char *file_start,
>  			return -1;
>  		}
>  
> -		*max_length = ((struct imx_boot_data *)bd)->size;
> +		*fststage_length = ((struct imx_boot_data *)bd)->size;
>  		*plugin = ((struct imx_boot_data *)bd)->plugin;
>  		((struct imx_boot_data *)bd)->plugin = 0;
>  
> @@ -1271,7 +1271,7 @@ static int get_payload_start(const unsigned char *p, uint32_t *ofs)
>  }
>  
>  static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
> -		unsigned *p_max_length, unsigned *p_plugin,
> +		size_t *p_fststage_length, unsigned *p_plugin,
>  		unsigned *p_header_addr)
>  {
>  	int ret;
> @@ -1286,7 +1286,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
>  		if (!is_header(p))
>  			continue;
>  
> -		ret = get_dl_start(p, buf, cnt, p_max_length, p_plugin, p_header_addr);
> +		ret = get_dl_start(p, buf, cnt, p_fststage_length, p_plugin, p_header_addr);
>  		if (ret < 0) {
>  			printf("!!get_dl_start returned %i\n", ret);
>  			return ret;
> @@ -1303,7 +1303,7 @@ static int process_header(struct usb_work *curr, unsigned char *buf, int cnt,
>  
>  		if (*p_plugin && (!curr->plug) && (!header_cnt)) {
>  			header_cnt++;
> -			header_max = header_offset + *p_max_length + 0x400;
> +			header_max = header_offset + *p_fststage_length + 0x400;
>  			if (header_max > cnt - 32)
>  				header_max = cnt - 32;
>  			printf("header_max=%x\n", header_max);
> @@ -1329,18 +1329,17 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  	unsigned char *buf = NULL;
>  	unsigned char *image;
>  	unsigned char *verify_buffer = NULL;
> -	unsigned max_length;
> +	size_t fststage_length;
>  	unsigned plugin = 0;
>  	unsigned header_addr = 0;
> -	unsigned total_size = 0;
>  
>  	buf = read_file(curr->filename, &fsize);
>  	if (!buf)
>  		return -errno;
>  
> -	max_length = fsize;
> +	fststage_length = fsize;
>  
> -	ret = process_header(curr, buf, fsize, &max_length, &plugin, &header_addr);
> +	ret = process_header(curr, buf, fsize, &fststage_length, &plugin, &header_addr);
>  	if (ret < 0)
>  		goto cleanup;
>  
> @@ -1352,14 +1351,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
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
> @@ -1379,10 +1374,10 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  		}
>  	}
>  
> -	printf("loading binary file(%s) to 0x%08x, fsize=%zu type=%d...\n",
> -			curr->filename, header_addr, fsize, type);
> +	printf("loading binary file(%s) to 0x%08x, fststage_length=%zu type=%d, hdroffset=%u...\n",
> +			curr->filename, header_addr, fststage_length, type, header_offset);
>  
> -	ret = load_file(image, fsize, header_addr, type, false);
> +	ret = load_file(image, fststage_length, header_addr, type, false);
>  	if (ret < 0)
>  		goto cleanup;
>  
> @@ -1420,7 +1415,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
>  			return ret;
>  	}
>  
> -	if (total_size) {
> +	if (fststage_length < fsize) {
>  		uint32_t ofs;
>  
>  		ret = get_payload_start(image, &ofs);
> @@ -1428,9 +1423,9 @@ static int do_irom_download(struct usb_work *curr, int verify)
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
> base-commit: a91d44f25b0a279260d2c5710d7c8a7d7d0d1d78
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


