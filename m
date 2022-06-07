Delivery-date: Tue, 07 Jun 2022 09:11:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTNH-0067Tx-Kz
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:11:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTNF-0002bG-Sp
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:11:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xiwZvz1TLNuLItyUU2S7au+OZXIg/sPdN9m1FZaQu+o=; b=4y6N+X9l5S4KnjrRmqY+YkK38O
	mfXronGebUbFiMeCvaXkLJpp5xZ4UmDFIpMSFPFjSnidoMdB2Gx3ihD0Pb7Xv/917PJJIy6+22Rqf
	orQ59jcJaha+WdInp8NmmsvYDGBAYdnF9kao1tOjwVRM5YyxAhHvQH22mKFV+6ytXac1MTomYU4Wq
	V/TJoiuHU5Au1bnmpIeAiW26Gx/YndGc6w98i6ca0e2OwM0c5pMWVu/V9QnQZOhMyhYDaJO6T5y2P
	yyXLIj4lXn6b/5/vN2RbxG54IKyGfdhs3eebf/OIzonwAFYALl85OgG0dolFE40qrA2hDv4zf2GBx
	YtsO4tsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTLy-005LKJ-Vd; Tue, 07 Jun 2022 07:10:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTLj-005LFy-G8
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:10:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTLh-0001xf-Ub; Tue, 07 Jun 2022 09:09:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTLh-00009J-Lk; Tue, 07 Jun 2022 09:09:57 +0200
Date: Tue, 7 Jun 2022 09:09:57 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220607070957.GL1615@pengutronix.de>
References: <20220603072612.1580380-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603072612.1580380-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_000959_642706_5F6D4588 
X-CRM114-Status: GOOD (  24.69  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64/RISC-V: booti: support global.bootm.image.loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 03, 2022 at 09:26:12AM +0200, Ahmad Fatoum wrote:
> So far $global.bootm.image.loadaddr was ignored. Fix this, so user code
> may explicitly decide placement if needed. barebox will still sanity
> check the address and align it if necessary, but won't go below it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/booti.c | 29 +++++++++++++++++++++++------
>  1 file changed, 23 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/booti.c b/common/booti.c
> index a2d63d8c3188..fbf0d8008443 100644
> --- a/common/booti.c
> +++ b/common/booti.c
> @@ -6,11 +6,30 @@
>  #include <bootm.h>
>  #include <linux/sizes.h>
>  
> +static unsigned long get_kernel_address(unsigned long os_address,
> +					unsigned long text_offset)
> +{
> +	resource_size_t start, end;
> +	int ret;
> +
> +	if (os_address == UIMAGE_SOME_ADDRESS) {
> +		ret = memory_bank_first_find_space(&start, &end);
> +		if (ret)
> +			return UIMAGE_INVALID_ADDRESS;
> +
> +		return ALIGN(start, SZ_2M) + text_offset;
> +	}
> +
> +	if (os_address >= text_offset && IS_ALIGNED(os_address - text_offset, SZ_2M))
> +		return os_address;
> +
> +	return ALIGN(os_address, SZ_2M) + text_offset;
> +}
> +
>  void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
>  {
>  	const void *kernel_header =
>  			data->os_fit ? data->fit_kernel : data->os_header;
> -	resource_size_t start, end;
>  	unsigned long text_offset, image_size, devicetree, kernel;
>  	unsigned long image_end;
>  	int ret;
> @@ -19,11 +38,9 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
>  	text_offset = le64_to_cpup(kernel_header + 8);
>  	image_size = le64_to_cpup(kernel_header + 16);
>  
> -	ret = memory_bank_first_find_space(&start, &end);
> -	if (ret)
> -		return ERR_PTR(ret);
> -
> -	kernel = ALIGN(start, SZ_2M) + text_offset;
> +	kernel = get_kernel_address(data->os_address, text_offset);
> +	if (kernel == UIMAGE_INVALID_ADDRESS)
> +		return ERR_PTR(-ENOENT);
>  
>  	ret = bootm_load_os(data, kernel);
>  	if (ret)
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

