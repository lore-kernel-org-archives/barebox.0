Delivery-date: Thu, 18 Nov 2021 13:34:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mngcI-0003Nz-Cy
	for lore@lore.pengutronix.de; Thu, 18 Nov 2021 13:34:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mngcH-0006yO-FW
	for lore@pengutronix.de; Thu, 18 Nov 2021 13:34:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BBFbMsD0tYy8dTO+RgdMpZ5QgC+U+u4QWZdPre8YNxA=; b=bKSTRmlvyvMpQyH6n3UzmFp9kF
	OyZZB8KUihU8Oj7c3KdtZdiBZUTZKf+8GKCSOb54CQZ+yn162a3dJiUdwX3v6bZtdutFA8J3W1O5F
	m8GdYXg/D/9dO9DAOM8MhX6Uzpe4RK3s3MCSWP8R8MlDEWE4Ia38GZTqxVbXu3AQFIEZDbwf2I993
	I+2MKsRKZKMG47ONahEehJSfzL6RtiChOwrp+VJUqD5adB7r2pAeMrHqMKgDRPz0f+AkUxoUmC0DC
	lMyCQ/lg0l8b3Fe1YN7kVPe6Tp5VHFGU0MKhw7Sx5XhL2scMSJeBSEKY0xU4k48aLibKoJ6gX5t//
	tpnbCybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mngaZ-007kzf-2w; Thu, 18 Nov 2021 12:32:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mngaT-007kyQ-Si
 for barebox@lists.infradead.org; Thu, 18 Nov 2021 12:32:23 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mngaQ-0006nL-8N; Thu, 18 Nov 2021 13:32:18 +0100
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
References: <20211105074657.3914257-1-a.fatoum@pengutronix.de>
 <20211108200117.7d0df0b548e029ff580855b2@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c166fe6f-7265-cc58-5d68-1f3dd2b424a3@pengutronix.de>
Date: Thu, 18 Nov 2021 13:32:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211108200117.7d0df0b548e029ff580855b2@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_043221_966690_8C69CB3B 
X-CRM114-Status: GOOD (  26.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: add STM32 SPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 08.11.21 18:01, Antony Pavlov wrote:
> On Fri,  5 Nov 2021 08:46:57 +0100
> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
>> Tested on a STM32MP1 communicating with a ksz9563.
> 
> ...
> 
>> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
>> new file mode 100644
>> index 000000000000..0cb04a968c8a
>> --- /dev/null
>> +++ b/drivers/spi/stm32_spi.c
>> @@ -0,0 +1,590 @@
>> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
>> +/*
>> + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
>> + *
>> + * Driver for STMicroelectronics Serial peripheral interface (SPI)
>> + */
>> +
> 
> ...
> 
>> +/* STM32_SPI_CR2 bit fields */
>> +#define SPI_CR2_TSIZE		GENMASK(15, 0)
> 
> So SPI_CR2_TSIZE is (64K - 1)
> 
> ...
> 
>> +
>> +static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
>> +				  struct spi_transfer *t)
>> +{
>> +	struct device_d *dev = priv->master.dev;
>> +	u32 sr;
>> +	u32 ifcr = 0;
>> +	u32 mode;
>> +	int xfer_status = 0;
>> +
>> +	if (t->len <= SPI_CR2_TSIZE)
>> +		writel(t->len, priv->base + STM32_SPI_CR2);
>> +	else
>> +		return -EMSGSIZE;
> 
> So stm32_spi_transfer_one() can transfer no more than (64K - 1).
> At the other hand imd tends to read more than  (64K - 1) from SPI flash, e.g.
> 
>   barebox:/ imd /dev/m25p0
>   imd: error 90
> 
> Here is my solution for handling SPI flash by stm32 SPI driver (not tested on stm32):

Thanks for the input. I believe I have STM32 with a SPI flash, where
I should be able to test this. I'll report back once I come around to it.

Can I have your Signed-off-by for this patch here?

> 
> +#include <linux/spi/spi-mem.h>
> +
> +static int stm32_spi_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
> +{
> +	if (op->data.nbytes > SPI_CR2_TSIZE) {
> +		op->data.nbytes = SPI_CR2_TSIZE;
> +	}
> +
> +	return 0;
> +}
> +
> +static int stm32_spi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static const struct spi_controller_mem_ops stm32_spi_mem_ops = {
> +	.adjust_op_size = stm32_spi_adjust_op_size,
> +	.exec_op = stm32_spi_exec_op,
> +};
> +
> 
> ...
> 
> @@ static int stm32_spi_probe(struct device_d *dev)
> 
> ...
> 
> 	master->setup = stm32_spi_setup;
> 	master->transfer = stm32_spi_transfer;
> +	master->mem_ops = &stm32_spi_mem_ops;
> 	master->bus_num = -1;
> 	stm32_spi_dt_probe(priv);
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

