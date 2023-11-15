Delivery-date: Wed, 15 Nov 2023 14:15:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3FkC-00CYFE-38
	for lore@lore.pengutronix.de;
	Wed, 15 Nov 2023 14:15:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3FkD-0003id-07
	for lore@pengutronix.de; Wed, 15 Nov 2023 14:15:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9cba8l9z9KLPQ9So735kdVlFxrTjPCd+q1+5z1BFV8Q=; b=QepYtamAUPsaYYk5nva/zC8Jvq
	0bU6nn0FOiUic8qsXYKQLceADX8585TkqC50anTgwoYF+V07tiUAVujaUCrH4qzJRmwgupWwh1Dd7
	bLaBKO3t542Q+svuDzJnon3/4GfOM9hlKwAEzW4R+wN0x8K2l6mk0n/MulvsVXtU1oZwewFchBJEL
	cOx6AHePEUqLb4Si8LAq60RqwvBZk3bsa3F0V//F5l+/Wj7GHM2rK+j+ApSEDnYm+btsXRKvq8Abd
	5HzUGV7/3Zm4vZqqlw2MdOXQ74x9BHjfxw18PR6IoKkdPu83s+/+WCTQY1TxkgNhBDGN6zbtF9Qk8
	GEUWoItQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Fj1-000qZC-1q;
	Wed, 15 Nov 2023 13:14:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3Fiy-000qYi-2F
	for barebox@lists.infradead.org;
	Wed, 15 Nov 2023 13:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3Fix-0003Jj-F9; Wed, 15 Nov 2023 14:14:31 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r3Fix-009EZw-2o; Wed, 15 Nov 2023 14:14:31 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3Fix-002C2s-0g; Wed, 15 Nov 2023 14:14:31 +0100
Date: Wed, 15 Nov 2023 14:14:31 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231115131431.GC3359458@pengutronix.de>
References: <20231113090438.1890680-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113090438.1890680-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_051432_727868_3DE25957 
X-CRM114-Status: GOOD (  26.30  )
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
Subject: Re: [PATCH] ARM: i.MX8M: bootrom: fix load image size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 13, 2023 at 10:04:38AM +0100, Marco Felsch wrote:
> Without the proper aligned image size we may encounter host load errors
> like:
> 
> | found i.MX8MP USB device [1fc9:0146]
> | No dcd table in this ivt
> | dl_command err=-1, last_trans=-1
> | 4 in err=-4, last_trans=0  00 00 00 00
> 
> The reason for this is that we asked only for the required bytes while
> the host tries to send the complete image which may contain alignment
> bytes at the end.
> 
> Fix this by request always 4K aligned sizes.

As discussed in mumble: This fix is not correct. It works with HABv4
enabled images, but not on images without HAB support.

Sascha

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/mach-imx/romapi.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
> index 1b1800f1e000..b4c63e4d7274 100644
> --- a/arch/arm/mach-imx/romapi.c
> +++ b/arch/arm/mach-imx/romapi.c
> @@ -6,6 +6,7 @@
>  #include <linux/bitfield.h>
>  #include <soc/imx9/flash_header.h>
>  #include <asm/sections.h>
> +#include <linux/sizes.h>
>  #include <mach/imx/romapi.h>
>  #include <mach/imx/atf.h>
>  #include <mach/imx/imx8m-regs.h>
> @@ -50,6 +51,12 @@ static int imx_bootrom_query(struct rom_api *rom_api, uint32_t type, uint32_t *_
>  
>  static int imx_romapi_load_stream(struct rom_api *rom_api, void *adr, size_t size)
>  {
> +	/*
> +	 * The imx-image tool align the final image size to 4K so we need to
> +	 * take this into account.
> +	 */
> +	size = ALIGN(size, SZ_4K);
> +
>  	while (size) {
>  		size_t chunksize = min(size, (size_t)1024);
>  		int ret;
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


