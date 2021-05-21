Delivery-date: Fri, 21 May 2021 10:54:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk0v2-0001xr-EO
	for lore@lore.pengutronix.de; Fri, 21 May 2021 10:54:08 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lk0v1-0001I4-JI
	for lore@pengutronix.de; Fri, 21 May 2021 10:54:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fzvQ11WX+dzhXOwqw9TuBW9JCyc4Npk4Lo/B8a+H5Y0=; b=St88F7rk5OjL6xm8F5MKT9ztdH
	MelbfVq5vLUGJjcYfsWRk2AiF/HjHJ8DJwq4EsFhKoqggmEpCNYwQZNhR7Gxrl79r/f4OLqv8ZzV9
	xUyM/H6xc//AbQqUsFeny9RTjHMu8pKWLlZPuAPhvZVj5v8EKjy+PkJZ901eJEBcPn2mhYroVktnq
	gg2iwsgvLjnI+7or/jHkYiEu/5RxIJFk57iLIgVIn1bhQ1cF0QHjgZp+739PZSKNWHu6kHHU4K/ST
	03JMIjwQGJZtk+00EG3ZWFx8n3wksKTXRtfU13WoxuCSkJjqc11pej06uIZg+OnOG4lADBh8k82BV
	T9yHJoeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lk0ts-004Xyv-Nu; Fri, 21 May 2021 08:52:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lk0ti-004Xv8-S0
 for barebox@desiato.infradead.org; Fri, 21 May 2021 08:52:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=VxvMs4uK0JOFcQztIZ0vSPmLBBbtUqAX0KcXzesvd3g=; b=Yz2hnvFHTFRvU1FB2M6lfGobQe
 TcaYfEC/IOlxTRgRiEb5BBd4qHMXWLwAOCBpBWuCBf/Z/mQIK1h/ZGudxgwwd2OvK1OCMP8sv3YHX
 2AQj28nsfvTotSFUiwTOf2/KdMzFIJfuGEKh2J9qqFDeKkLLPSu+Cid5F1Lqth5BIm8rc5hPjlDG0
 I9MBlRZeDUz0vEUKLl1sdb8bmTglPPUBtIamR7xQWJhTISy5lQh6JDUpt/YbhIoPQ0PK4R1QoXCgW
 eEcyLW2+EVrIEuf8a5nHvLB5G80ue7E9e5oBO8zdglgs3ETNNB2mZqXH5ryc3I5GVTWvdmjXbcXan
 fXj8M4sw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lk0tf-00GxiS-Qg
 for barebox@lists.infradead.org; Fri, 21 May 2021 08:52:45 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lk0tb-00010H-Lv; Fri, 21 May 2021 10:52:39 +0200
To: Michael Olbrich <m.olbrich@pengutronix.de>, barebox@lists.infradead.org
References: <20210520154929.25131-1-m.olbrich@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3f21e0df-f6f1-acc5-4f7a-d85a117f3cf7@pengutronix.de>
Date: Fri, 21 May 2021 10:52:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210520154929.25131-1-m.olbrich@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210521_015243_893064_D98EF4BA 
X-CRM114-Status: GOOD (  20.03  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: spi-nor: Add support for gd25q16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)



On 20.05.21 17:49, Michael Olbrich wrote:
> The entry is imported from Linux v5.12.
> 
> It can befound on new versions of the Boundary Devices i.MX6 Quad
> Nitrogen6x boards.
> 
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/mtd/spi-nor/spi-nor.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
> index 383916e3f4b0..3ced84049d58 100644
> --- a/drivers/mtd/spi-nor/spi-nor.c
> +++ b/drivers/mtd/spi-nor/spi-nor.c
> @@ -666,6 +666,7 @@ static const struct spi_device_id spi_nor_ids[] = {
>  	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
>  
>  	/* GigaDevice */
> +	{ "gd25q16", INFO(0xc84015, 0, 64 * 1024,  32, SECT_4K) },
>  	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, SECT_4K) },
>  	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128, SECT_4K) },
>  	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256, SECT_4K) },
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

