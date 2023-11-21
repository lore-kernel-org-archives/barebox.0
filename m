Delivery-date: Tue, 21 Nov 2023 09:30:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5M9l-002hBu-0f
	for lore@lore.pengutronix.de;
	Tue, 21 Nov 2023 09:30:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5M9l-0006bA-5C
	for lore@pengutronix.de; Tue, 21 Nov 2023 09:30:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DxVkyo8dako7UYWxOTbd89LPBiu4X0spVAaFGSPXd8g=; b=lzyewvveHP29zCBlbaWPs7y9IL
	hkVTLFBhnNvdmeaFgAfVOT3lkqn+jeA3Ry9JDsPq504V6RIQDQGCjqytmU5WNP5DRSdzf6lYjlITc
	BHyEVCf3BLe/rukg256aK9yy0zK7J63GUhoh6cUpzdXVJchX1oT9NZoCFh/af+JffKxfySbZ5SfnU
	CFLzjhPVzUdgk6Bl82FJr66jo6D3pdNRDs0uRkmY/qFt1evqLv2tv4sbQkYjAF4Fga64pQTzHdwbo
	5cJsdyi3jBAeViVY37MOAFr7LuSq3ZhgwcHjiEedcImKmlbiKF2kdy1/gmGbJY4KRoPnYR9pFB+Rz
	oVf9HuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5M8F-00G0P6-2B;
	Tue, 21 Nov 2023 08:29:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5M8C-00G0OR-1g
	for barebox@lists.infradead.org;
	Tue, 21 Nov 2023 08:29:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5M89-0006GV-HZ; Tue, 21 Nov 2023 09:29:13 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5M89-00AXQE-55; Tue, 21 Nov 2023 09:29:13 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5M89-0036YQ-2a; Tue, 21 Nov 2023 09:29:13 +0100
Date: Tue, 21 Nov 2023 09:29:13 +0100
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Knittel <bruno.knittel@bruker.com>
Message-ID: <20231121082913.GO3359458@pengutronix.de>
References: <20231115-arria10-fpga-reload-on-failure-v2-1-6a45f125c9c2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231115-arria10-fpga-reload-on-failure-v2-1-6a45f125c9c2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231121_002916_562196_55711526 
X-CRM114-Status: GOOD (  33.19  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: arria10: xload: retry FPGA configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 15, 2023 at 02:11:22PM +0100, Steffen Trumtrar wrote:
> From: Bruno Knittel <bruno.knittel@bruker.com>
> 
> The Intel documentation states that the FPGA configuration might fail.
> This has been observed on the Enclustra AA1+ board where up to 4 retries
> where required to configure the FPGA.
> 
> Debugging session showed that the data where correctly read from the
> eMMC but yet the configuration failed.
> 
> This commit introduces a retry loop on the FPGA configuration.
> Up to 10 retries (arbitrary) are attempted.
> As the hardware can't be used anyway without the FPGA loaded, this
> doesn't introduce any boot time problems. Taking longer is better than
> just hang()ing.
> 
> Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
> Changes since v1:
>     - split loop into inline function
> ---
>  arch/arm/mach-socfpga/arria10-xload.c | 49 ++++++++++++++++++++++++++---------
>  1 file changed, 37 insertions(+), 12 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
> index 9d54a1de58..db3cc209ee 100644
> --- a/arch/arm/mach-socfpga/arria10-xload.c
> +++ b/arch/arm/mach-socfpga/arria10-xload.c
> @@ -353,17 +353,9 @@ int arria10_prepare_mmc(int barebox_part, int rbf_part)
>  	return 0;
>  }
>  
> -int arria10_load_fpga(int offset, int bitstream_size)
> +static inline int __arria10_load_fpga(void *buf, uint32_t count, uint32_t size)
>  {
> -	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
>  	int ret;
> -	uint32_t count;
> -	uint32_t size = bitstream_size / SECTOR_SIZE;
> -
> -	if (offset)
> -		offset = offset / SECTOR_SIZE;
> -
> -	count = offset;
>  
>  	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
>  
> @@ -371,23 +363,56 @@ int arria10_load_fpga(int offset, int bitstream_size)
>  
>  	ret = a10_fpga_init(buf);
>  	if (ret)
> -		hang();
> +		return -EAGAIN;
>  
>  	while (count <= size) {
>  		ret = a10_fpga_write(buf, SZ_16K);
>  		if (ret == -ENOSPC)
> -			break;
> +			return -EAGAIN;
> +
>  		count += SZ_16K / SECTOR_SIZE;
>  		ret = arria10_read_blocks(buf, count, SZ_16K);
> +		// Reading failed, consider this a failed attempt to configure the FPGA and retry
> +		if (ret)
> +			return -EAGAIN;
>  	}
>  
>  	ret = a10_fpga_write_complete();
>  	if (ret)
> -		hang();
> +		return -EAGAIN;
>  
>  	return 0;
>  }
>  
> +int arria10_load_fpga(int offset, int bitstream_size)
> +{
> +	int ret;
> +	void *buf = (void *)0xffe00000 + SZ_256K - 256 - SZ_16K;
> +	uint32_t count;
> +	uint32_t size = bitstream_size / SECTOR_SIZE;
> +	uint32_t retryCount;
> +
> +	if (offset)
> +		offset = offset / SECTOR_SIZE;
> +
> +	/* Up to 4 retries have been seen on the Enclustra Mercury AA1+ board, as
> +	 * FPGA configuration is mandatory to be able to continue the boot, take
> +	 * some margin and try up to 10 times
> +	 */
> +	for (retryCount = 0; retryCount < 10; ++retryCount) {
> +		count = offset;
> +
> +		ret = __arria10_load_fpga(buf, count, size);
> +		if (!ret)
> +			return 0;
> +		else if (ret == -EAGAIN)
> +			continue;
> +	}
> +
> +	hang();
> +	return -EIO;
> +}
> +
>  void arria10_start_image(int offset)
>  {
>  	void *buf = (void *)0x0;
> 
> ---
> base-commit: bc5e49335067d0c6c6e97c082a0368fe9d86b725
> change-id: 20231115-arria10-fpga-reload-on-failure-ba64deafcc52
> 
> Best regards,
> -- 
> Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


