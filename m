Delivery-date: Tue, 12 Nov 2024 15:04:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tArV3-00123b-1r
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 15:04:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tArV2-0004Z9-Tv
	for lore@pengutronix.de; Tue, 12 Nov 2024 15:04:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oV5qLNQkZi1bxmyMVUWLK2Pz+3Jy1w05EdqtnufzFeQ=; b=hhFSc8rNblKtRR4/50Dd5UByOx
	m0z0ijB7EuVN14dbTygOai6l4Gedx+TeJPgVG2gHkdweSHv75bbOIY4gyqtLQdr+MvIbRCu7hWkSC
	oZ7tEG3+EtVAzrI4Ai2uvdc7D7PzV4jGvT+bBZGbRBfjlxHG6Tr81sR8bpSzgvcHgrb0IvH4YYpR7
	L18JMhSMX3QgnnjiaYDtXxdkUEli+ZgNdbe7KBN65Aa9XiOeVm+jzsRgqJ6ISf/dXJX5FX8QGZe9m
	ZtsB2ey+M8TXzUY6WiY8Ax9x91vJId6F5hCQVQawN5m598j5OtFWVl0zxc4PZQVf3KJqnHWhS0lBD
	xa6rLJvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tArUU-00000003gdx-24js;
	Tue, 12 Nov 2024 14:03:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArUR-00000003gcx-2jPE
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 14:03:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tArUN-0004LN-Dw; Tue, 12 Nov 2024 15:03:27 +0100
Message-ID: <9b217c79-1575-443c-a733-1aa9b0de53e8@pengutronix.de>
Date: Tue, 12 Nov 2024 15:03:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
 s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20241112125452.333653-1-abdelrahmanyossef12@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241112125452.333653-1-abdelrahmanyossef12@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_060331_725323_78D08526 
X-CRM114-Status: GOOD (  23.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] drivers: of: fix possible overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Abdelrahman,

Thanks for your patch.

On 12.11.24 13:54, Abdelrahman Youssef wrote:
> while parsing the fdt header, the name of the begining node marked by
> FDT_BEGIN_NODE that is part of the struct block moves out of the block
> that results in heap-overflow.
> 
> So this patch checks if the length of name (maxlen) + the offset of
> the struct block exceeds the size of the whole block.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  drivers/of/fdt.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 2c3ea31394..7dc8ee2529 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -210,6 +210,11 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			maxlen = (unsigned long)fdt + f.off_dt_struct +
>  				f.size_dt_struct - (unsigned long)name;
>  
> +			if (maxlen + f.off_dt_struct > f.size_dt_struct) {

This looks wrong:

 - f.off_dt_struct is the offset in bytes of the struct area relative to
   the start of the FDT

 - f.size_dt_struct is the size of the struct area, i.e. the first byte
   after the struct area and it does _not_ include the offset.

It doesn't make sense to subtract the size from the offset.

I have looked into it a little deeper now and I believe the root cause is
an integer overflow; if name _starts_ after the end of the struct area,
the computation for maxlen will result in a negative number and that
negative number would wrap around to a very big positive number.

We should change maxlen to be a (signed) int and return an error if
it becomes negative. Can you verify that fixes the issue and send a patch?

Cheers,
Ahmad

> +				ret = -ESPIPE;
> +				goto err;
> +			}
> +
>  			len = strnlen(name, maxlen + 1);
>  			if (len > maxlen) {
>  				ret = -ESPIPE;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


