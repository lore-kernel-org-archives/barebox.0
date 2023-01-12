Delivery-date: Thu, 12 Jan 2023 15:57:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz1N-009ryD-7m
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 15:57:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFz1L-0003N7-Af
	for lore@pengutronix.de; Thu, 12 Jan 2023 15:57:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/x9Kj83tb/p76chdelVgW1sZkHF7tBmIpUVvivf9eNY=; b=GMIYrpu6WM5ur7uwzZ62U12XD8
	VlC9dPEAc1DpFVmPzTX9UbIhDJrCaokt06LPBZL7mdF3yH7ZarKRN25iAjcedZDzo9qP8XqeZPICU
	T9jn2LeHsOWrGEOo1TlO0FJa99wI2HH2MlIS+xE0nye+8yavRJvugoHMUanI2ntnCxLHEuQ1cHhcf
	yBETA7Qhn1jxY1oJCUD1c3zPOLhZNgEG9MM4aqhM2eW46DV9Bhyqh3nLR5cqvL8wugVLU79HZ0ykN
	xdQwoVaibSCdPcO3lVZwHq+v3+XbDhXTvhEYGXTLViLCgw/f3FrifyxvHEVP+6YfmRU+UW6A7zmj7
	hnWpBNAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFz03-00FUPT-0d; Thu, 12 Jan 2023 14:56:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFyzl-00FULT-2Y
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 14:55:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyzj-00032t-MF; Thu, 12 Jan 2023 15:55:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFyzj-0003Tf-E7; Thu, 12 Jan 2023 15:55:55 +0100
Date: Thu, 12 Jan 2023 15:55:55 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230112145555.GW24755@pengutronix.de>
References: <20230111152836.1548942-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111152836.1548942-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_065557_270533_A356EC72 
X-CRM114-Status: GOOD (  27.58  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: i.MX8M: bootrom-cmd: clean up pointer casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 04:28:36PM +0100, Ahmad Fatoum wrote:
> At first glance:
> 
> 	const u32 *rom_log_addr;
> 	kstrtoul(optarg, 0, (ulong *)&rom_log_addr) with
> 
> looks like it would conflate u32/ulong. While the code is fine,
> it is better to just use the correct types and forego the case.
> 
> While at it, let's guard against the ROM log pointer being NULL
> as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - new patch
> ---
>  arch/arm/mach-imx/bootrom-cmd.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/bootrom-cmd.c b/arch/arm/mach-imx/bootrom-cmd.c
> index 0238d09b169f..63197e02ae2c 100644
> --- a/arch/arm/mach-imx/bootrom-cmd.c
> +++ b/arch/arm/mach-imx/bootrom-cmd.c
> @@ -51,6 +51,9 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  {
>  	int i;
>  
> +	if (!rom_log)
> +		return -ENODATA;
> +
>  	for (i = 0; i < 128; i++) {
>  		u8 event_id = FIELD_GET(ROM_EVENT_FORMAT_V1_ID, rom_log[i]);
>  		u8 event_id_idx = FIELD_GET(ROM_EVENT_FORMAT_V1_ID_IDX, rom_log[i]);
> @@ -178,18 +181,19 @@ static int imx8m_bootrom_decode_log(const u32 *rom_log)
>  
>  static int do_bootrom(int argc, char *argv[])
>  {
> -	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
> -	const u32 *rom_log_addr = scratch->bootrom_log;
> +	union {
> +		const u32 *ptr;
> +		ulong addr;
> +	} rom_log = { NULL };
>  	bool log = false;
>  	int ret, opt;
>  
>  	while((opt = getopt(argc, argv, "la:")) > 0) {
>  		switch(opt) {
>  		case 'a':
> -			ret = kstrtoul(optarg, 0, (ulong *)&rom_log_addr);
> +			ret = kstrtoul(optarg, 0, &rom_log.addr);
>  			if (ret)
>  				return ret;
> -			rom_log_addr = (const u32 *)rom_log_addr;
>  		case 'l':
>  			log = true;
>  			break;
> @@ -198,8 +202,13 @@ static int do_bootrom(int argc, char *argv[])
>  		}
>  	}
>  
> +	if (!rom_log.addr) {
> +		const struct imx_scratch_space *scratch = arm_mem_scratch_get();
> +		rom_log.ptr = scratch->bootrom_log;
> +	}
> +
>  	if (log)
> -		return imx8m_bootrom_decode_log(rom_log_addr);
> +		return imx8m_bootrom_decode_log(rom_log.ptr);
>  
>  	return COMMAND_ERROR_USAGE;
>  }
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


