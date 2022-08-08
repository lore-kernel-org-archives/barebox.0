Delivery-date: Mon, 08 Aug 2022 13:22:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0q3-00G5of-4J
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 13:22:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL0q4-0001Dx-1y
	for lore@pengutronix.de; Mon, 08 Aug 2022 13:22:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pLLikebYA87Qv9Nz6Fj+lotqAR1us7x5whs3UZ3tB7Y=; b=LybvNzh3Jae/P4y09zD0SbvFdC
	+eCMHrwdg0gPVcE4otxmJNavtOxLR8YoBCYljcSHIMsUyatZWvDCJi+5jrohAVFoIttrzL/aXT3vt
	qC9tZCjNRmpH5OtAbEhZH9rek7njc2rosbRzTwGYesi+gohyA2FT7Qc9L+IKiIgP7AJrit7LnUp9K
	RMg+WBEei+1gb0MtEfdc9TK/RM9SF5qcnRkxfdrpX9DYsv1zbF6xZz3lBrN6bZZ4jdHw5HobzJ4m0
	D1RsF1xuOiFWvjn9tEd9agq5HgjzcCAvWB69M2hWRdq4YkKsKBrvWWT0u/mv60TSD05k0eqKvf7+L
	XgXE6G3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0os-00DBp3-BP; Mon, 08 Aug 2022 11:21:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0on-00DBnS-MV
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 11:21:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0om-00010J-F2; Mon, 08 Aug 2022 13:21:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL0om-0005QM-63; Mon, 08 Aug 2022 13:21:08 +0200
Date: Mon, 8 Aug 2022 13:21:08 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808112108.GG7333@pengutronix.de>
References: <20220808065556.453090-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808065556.453090-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_042109_753413_46C910D9 
X-CRM114-Status: GOOD (  19.84  )
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
Subject: Re: [PATCH] booti: add debug prints for kernel header parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 08:55:56AM +0200, Ahmad Fatoum wrote:
> This proved useful in a debugging session, so make them easily
> available with a #define DEBUG for future developers.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/booti.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/booti.c b/common/booti.c
> index dde1605fe1f1..302d7440abd7 100644
> --- a/common/booti.c
> +++ b/common/booti.c
> @@ -1,6 +1,8 @@
>  // SPDX-License-Identifier: GPL-2.0-only
>  // SPDX-FileCopyrightText: 2018 Sascha Hauer <s.hauer@pengutronix.de>
>  
> +#define pr_fmt(fmt) "booti: " fmt
> +
>  #include <common.h>
>  #include <memory.h>
>  #include <bootm.h>
> @@ -40,6 +42,11 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
>  	image_size = le64_to_cpup(kernel_header + 16);
>  
>  	kernel = get_kernel_address(data->os_address, text_offset);
> +
> +	print_hex_dump_bytes("header ", DUMP_PREFIX_OFFSET,
> +			     kernel_header, 80);
> +	pr_debug("Kernel to be loaded to %lx+%lx\n", kernel, image_size);
> +
>  	if (kernel == UIMAGE_INVALID_ADDRESS)
>  		return ERR_PTR(-ENOENT);
>  
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


