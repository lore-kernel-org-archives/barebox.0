Delivery-date: Thu, 14 Jul 2022 10:48:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBuVt-007O0B-Hf
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:48:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBuVr-0006ez-4N
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:47:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r14WZHcu7rPH2/HGwOJDpBfMfAsSqEsMufKzFltQUNI=; b=ziyTHL4fZxt/qjxUMcUhsjEZGH
	SXLbqEsecDS8kduMAq2grBvieVwiyaAzmGqsGluTpPH2hNbKodeqfP2mntWqKEPBuOWYehmNFmvxw
	DZKO3wF6rYzMCipl5mPUosrOrpwaYvl/La0cy+o8OeISZLnil4ip4WoWcaJPmWbxDkJM+zE6dT9F+
	vRvkns2/ug10yjAj6sL6L/ROf4062Mzvtw7qaqOJL/o9TR4XSWL8aLpzGSf+7wQ9Nvnnq7KWD6N12
	YgmfzUYIffTcFmGuBg7yFhCdoNQOxmp73E6ywZwnVE9mFlseYO4uoYXGHxjek6OlYkdKCFtpgnJkU
	wxPpnzUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuUb-00CUIT-Kz; Thu, 14 Jul 2022 08:46:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBuUW-00CUGL-Ro
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:46:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBuUV-0006Xr-9l; Thu, 14 Jul 2022 10:46:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBuUV-0005Pw-0s; Thu, 14 Jul 2022 10:46:35 +0200
Date: Thu, 14 Jul 2022 10:46:34 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714084634.GK23482@pengutronix.de>
References: <20220714081108.101094-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220714081108.101094-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_014636_918352_55718D13 
X-CRM114-Status: GOOD (  24.83  )
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
Subject: Re: [PATCH 1/2] ARM: imx/bbu-external-nand: Rename offset ->
 nand_offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 14, 2022 at 10:11:07AM +0200, Uwe Kleine-König wrote:
> The next commit introduces a new offset variable for image. To be better
> able to differentiate the two, pick a better name for the already
> existing one. There is no functional change.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx-bbu-external-nand.c | 26 +++++++++++------------
>  1 file changed, 13 insertions(+), 13 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx-bbu-external-nand.c b/arch/arm/mach-imx/imx-bbu-external-nand.c
> index 392497e43423..4d3493f9e1e0 100644
> --- a/arch/arm/mach-imx/imx-bbu-external-nand.c
> +++ b/arch/arm/mach-imx/imx-bbu-external-nand.c
> @@ -29,7 +29,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  	int size_available, size_need;
>  	int ret;
>  	uint32_t num_bb = 0, bbt = 0;
> -	loff_t offset = 0;
> +	loff_t nand_offset = 0;
>  	int block = 0, len, now, blocksize;
>  	void *image = NULL;
>  
> @@ -61,27 +61,27 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  	 * Collect bad blocks and construct BBT
>  	 */
>  	while (size_need > 0) {
> -		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
> +		ret = ioctl(fd, MEMGETBADBLOCK, &nand_offset);
>  		if (ret < 0)
>  			goto out;
>  
>  		if (ret) {
> -			if (!offset) {
> +			if (!nand_offset) {
>  				printf("1st block is bad. This is not supported\n");
>  				ret = -EINVAL;
>  				goto out;
>  			}
>  
> -			debug("bad block at 0x%08llx\n", offset);
> +			debug("bad block at 0x%08llx\n", nand_offset);
>  			num_bb++;
>  			bbt |= (1 << block);
> -			offset += blocksize;
> +			nand_offset += blocksize;
>  			block++;
>  			continue;
>  		}
>  		size_need -= blocksize;
>  		size_available -= blocksize;
> -		offset += blocksize;
> +		nand_offset += blocksize;
>  		block++;
>  
>  		if (size_available < 0) {
> @@ -124,7 +124,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  	}
>  
>  	len = data->len;
> -	offset = 0;
> +	nand_offset = 0;
>  
>  	/* last chance before erasing the flash */
>  	ret = bbu_confirm(data);
> @@ -137,13 +137,13 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  	while (len > 0) {
>  		now = min(len, blocksize);
>  
> -		ret = ioctl(fd, MEMGETBADBLOCK, &offset);
> +		ret = ioctl(fd, MEMGETBADBLOCK, &nand_offset);
>  		if (ret < 0)
>  			goto out;
>  
>  		if (ret) {
> -			offset += blocksize;
> -			if (lseek(fd, offset, SEEK_SET) != offset) {
> +			nand_offset += blocksize;
> +			if (lseek(fd, nand_offset, SEEK_SET) != nand_offset) {
>  				ret = -errno;
>  				goto out;
>  			}
> @@ -151,9 +151,9 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  			continue;
>  		}
>  
> -		debug("writing %d bytes at 0x%08llx\n", now, offset);
> +		debug("writing %d bytes at 0x%08llx\n", now, nand_offset);
>  
> -		ret = erase(fd, blocksize, offset);
> +		ret = erase(fd, blocksize, nand_offset);
>  		if (ret)
>  			goto out;
>  
> @@ -163,7 +163,7 @@ static int imx_bbu_external_nand_update(struct bbu_handler *handler, struct bbu_
>  
>  		len -= now;
>  		image += now;
> -		offset += now;
> +		nand_offset += now;
>  	}
>  
>  	ret = 0;
> 
> base-commit: 298727bc7931fe878fd72a1fa6f35c18bd7c593c
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


