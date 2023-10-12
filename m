Delivery-date: Thu, 12 Oct 2023 16:19:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqwWx-005qRy-Se
	for lore@lore.pengutronix.de; Thu, 12 Oct 2023 16:19:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqwWw-0003BK-KL
	for lore@pengutronix.de; Thu, 12 Oct 2023 16:19:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yGYuXTOfpXUERn+w5CFMSmWzlfz72rSogaMUNokYfxY=; b=yRA9QKn0XbJE7SllHGML/REUDI
	gG5Yq7NC/0aTWqmdH4eAu8/mqKGKMtRIPQV9rem59jRkYePtWYxlCW6e7z7OwD63QLvGMxeQflSFo
	zpCRnir/UNkHytTUrNBSO3Prmm3+FSiW8ZPwcr4TEH2oMJU6tB7maAp+YieiKC7FJRxYZbSPnfOOi
	m07F/ege3SL91wS1/OYrl6qKUzWWJrmzAJiXogstIgqS0tY9t8rM/cDKXyrTyJLQ8WCCdCR61VLqU
	miGEFIxJ4mpDLHcBjbMPOewLipJEOwHfDe1agx9q/8w9zoJH1kZZja/oREQngIqa2kWgrTO/CYoa/
	m3PqHiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqwVe-001AJw-3B;
	Thu, 12 Oct 2023 14:17:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqwVa-001AJa-15
	for barebox@lists.infradead.org;
	Thu, 12 Oct 2023 14:17:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwVY-0002xE-SF; Thu, 12 Oct 2023 16:17:48 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwVY-001An7-AI; Thu, 12 Oct 2023 16:17:48 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qqwVY-00E7xj-7k; Thu, 12 Oct 2023 16:17:48 +0200
Date: Thu, 12 Oct 2023 16:17:48 +0200
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org, Bruno Knittel <bruno.knittel@bruker.com>
Message-ID: <20231012141748.GC3359458@pengutronix.de>
References: <20231011083813.1353200-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011083813.1353200-1-s.trumtrar@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231012_071750_390749_D26E4760 
X-CRM114-Status: GOOD (  29.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: arria10: xload: retry FPGA configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Oct 11, 2023 at 10:37:50AM +0200, Steffen Trumtrar wrote:
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
>  arch/arm/mach-socfpga/arria10-xload.c | 47 +++++++++++++++++----------
>  1 file changed, 30 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
> index 9d54a1de58..0e49452c17 100644
> --- a/arch/arm/mach-socfpga/arria10-xload.c
> +++ b/arch/arm/mach-socfpga/arria10-xload.c
> @@ -359,33 +359,46 @@ int arria10_load_fpga(int offset, int bitstream_size)
>  	int ret;
>  	uint32_t count;
>  	uint32_t size = bitstream_size / SECTOR_SIZE;
> +	uint32_t retryCount;
>  
>  	if (offset)
>  		offset = offset / SECTOR_SIZE;
>  
> -	count = offset;
> +	/* Up to 4 retires have been seen on the Enclustra Mercury AA1+ board, as FPGA configuration is mandatory

Respect. Most people retire only once ;)

> +	 * to be able to continue the boot, take some margin and try up to 10 times
> +	 */
> +	for (retryCount = 0; retryCount < 10; ++retryCount) {
> +		count = offset;
>  
> -	arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
> +		arria10_read_blocks(buf, count + bitstream.first_sec, SZ_16K);
>  
> -	count += SZ_16K / SECTOR_SIZE;
> +		count += SZ_16K / SECTOR_SIZE;
>  
> -	ret = a10_fpga_init(buf);
> -	if (ret)
> -		hang();
> +		ret = a10_fpga_init(buf);
> +		if (ret)
> +			continue;
>  
> -	while (count <= size) {
> -		ret = a10_fpga_write(buf, SZ_16K);
> -		if (ret == -ENOSPC)
> -			break;
> -		count += SZ_16K / SECTOR_SIZE;
> -		ret = arria10_read_blocks(buf, count, SZ_16K);
> -	}
> +		while (count <= size) {
> +			ret = a10_fpga_write(buf, SZ_16K);
> +			if (ret == -ENOSPC)
> +				continue;

You probably want to continue the outer for() loop, but this continues
the inner while() loop.

Generally I think both the patch and the resulting code would look nicer
when you do the retry loop in a separate function.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


