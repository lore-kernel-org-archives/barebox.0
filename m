Delivery-date: Mon, 08 Nov 2021 18:03:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk834-0003I2-6g
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 18:03:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mk833-0003NX-6F
	for lore@pengutronix.de; Mon, 08 Nov 2021 18:03:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sriLgf+KM7k+5wxJyqC1CxencQBmaHKDyYcCyn52U+Y=; b=jXJxhirt39PRbf
	Is9iHMFfERLUV6SkZ1yUqFGHe1vuvwAj+cgxDzcD0vuqYrOyNdfj6SSzKaHTCFI9JDk3ox9Qfj+Xf
	MtQux4awebRmplbZcS5GKJTX+a9JId2u2oYVqIzUg2qgkcUKG/8bSuwDuFYCqtZ7h329NRp4L4gKd
	WU0gjjKe9fcBFz2xNd6hIMaAnuFlBZ6KwmqsOp9ll7h7bAW9ORN1UAeKFGlpY1fI+LVEnYmr5JKEZ
	Cw0sIAuBaFVddygoeXjztNfOoguCc1SBDm7hQGjNpicsfuySUR0pb/Ve4VguTm/nj5J6QgU00j5to
	ZfcoCyc7Y2sU4WBRW0dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk81P-00H1Pv-TM; Mon, 08 Nov 2021 17:01:28 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk81L-00H1OW-0s
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 17:01:24 +0000
Received: by mail-lf1-x12e.google.com with SMTP id z19so14763762lfd.8
 for <barebox@lists.infradead.org>; Mon, 08 Nov 2021 09:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FVuTTOBhT0VBw7x6qhnY5eqdDYaVKVv4EgC0TPHujb4=;
 b=RIdvSgvlyG/rFWemgB7p0Af0UaxoG4cuvknBZKaRbyjzTvEqolNOAk0zAJtbAHNx9T
 EdZiQAe1p0WzqLoEm75MP40nXJO3kZOYm9t7D3ivLJRBRScnvsqnNqSEk3ukT3gQ+0zn
 ok2u0wtEZrDfLRbUO6fGltoQopwJwlRtiaVCt1+D564HVahHsOX7aUPdIJeKA98eO8a+
 lv/xEZdJ1nxVrw3qVRXZpUYRVhNzlQIqo98Z1iLvLgdVHKTEXS2cHeSA5LJHHaljY6E0
 CO4RAuj3ZYMv37kjEfYR5QvN+dZBmQHb+uMTPO2mN/mWe4u8pIyK6v7WA7sVRSfmVR6U
 wxsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FVuTTOBhT0VBw7x6qhnY5eqdDYaVKVv4EgC0TPHujb4=;
 b=rnCxQUBFBGBaTl1SHHGTf8r4j+a08MAHSHaoTgp/pcKDhLlxJf4LP5kTxWP0V7Sgsz
 IDykde/zupNBZgbxXUNseWUyT8tWV9vT+OFAcvP1QoL/XQTN+sYg+KXiRtptDjIuQNFP
 0jdHJyai+jSx5li9XsB+t3AgBuBqnVKB3AVribqDURMZ83xk6bjRxkyChCOXEX0zVD2K
 bCy+5fcVx03BsFoIWDF5zg2tEPB1HXh5S67lmTUkzAWJ7++FkImJQLWv/yWPjmcRNzaX
 f04hLy3MJHRev7N/UMOu3DatQEIlV6Uavu8puP1G8m/NOavtrSewo8tuz8jSb5I9SYv7
 +clA==
X-Gm-Message-State: AOAM533r7iAiGzpnotpi4/RCkmfTq9FlZIoLPWH84dLCYWW31nAhKYP1
 FL2jMvvwiisJypJsAMygtnbShdrxhDs=
X-Google-Smtp-Source: ABdhPJwEaGRi9CauIXiXfNT0h7sk+8TB+cIhJ1WhoxD/Fum6504rKplFDdV2w/ruNWxWHWuCiq+XJw==
X-Received: by 2002:ac2:490f:: with SMTP id n15mr647026lfi.275.1636390879411; 
 Mon, 08 Nov 2021 09:01:19 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id f9sm600121lfv.44.2021.11.08.09.01.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 08 Nov 2021 09:01:18 -0800 (PST)
Date: Mon, 8 Nov 2021 20:01:17 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20211108200117.7d0df0b548e029ff580855b2@gmail.com>
In-Reply-To: <20211105074657.3914257-1-a.fatoum@pengutronix.de>
References: <20211105074657.3914257-1-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_090123_102421_ADDD5B8E 
X-CRM114-Status: GOOD (  18.25  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: add STM32 SPI controller driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri,  5 Nov 2021 08:46:57 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Tested on a STM32MP1 communicating with a ksz9563.

...

> diff --git a/drivers/spi/stm32_spi.c b/drivers/spi/stm32_spi.c
> new file mode 100644
> index 000000000000..0cb04a968c8a
> --- /dev/null
> +++ b/drivers/spi/stm32_spi.c
> @@ -0,0 +1,590 @@
> +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> +/*
> + * Copyright (C) 2019, STMicroelectronics - All Rights Reserved
> + *
> + * Driver for STMicroelectronics Serial peripheral interface (SPI)
> + */
> +

...

> +/* STM32_SPI_CR2 bit fields */
> +#define SPI_CR2_TSIZE		GENMASK(15, 0)

So SPI_CR2_TSIZE is (64K - 1)

...

> +
> +static int stm32_spi_transfer_one(struct stm32_spi_priv *priv,
> +				  struct spi_transfer *t)
> +{
> +	struct device_d *dev =3D priv->master.dev;
> +	u32 sr;
> +	u32 ifcr =3D 0;
> +	u32 mode;
> +	int xfer_status =3D 0;
> +
> +	if (t->len <=3D SPI_CR2_TSIZE)
> +		writel(t->len, priv->base + STM32_SPI_CR2);
> +	else
> +		return -EMSGSIZE;

So stm32_spi_transfer_one() can transfer no more than (64K - 1).
At the other hand imd tends to read more than  (64K - 1) from SPI flash, e.=
g.

  barebox:/ imd /dev/m25p0
  imd: error 90

Here is my solution for handling SPI flash by stm32 SPI driver (not tested =
on stm32):

+#include <linux/spi/spi-mem.h>
+
+static int stm32_spi_adjust_op_size(struct spi_mem *mem, struct spi_mem_op=
 *op)
+{
+	if (op->data.nbytes > SPI_CR2_TSIZE) {
+		op->data.nbytes =3D SPI_CR2_TSIZE;
+	}
+
+	return 0;
+}
+
+static int stm32_spi_exec_op(struct spi_mem *mem, const struct spi_mem_op =
*op)
+{
+	return -ENOTSUPP;
+}
+
+static const struct spi_controller_mem_ops stm32_spi_mem_ops =3D {
+	.adjust_op_size =3D stm32_spi_adjust_op_size,
+	.exec_op =3D stm32_spi_exec_op,
+};
+

...

@@ static int stm32_spi_probe(struct device_d *dev)

...

	master->setup =3D stm32_spi_setup;
	master->transfer =3D stm32_spi_transfer;
+	master->mem_ops =3D &stm32_spi_mem_ops;
	master->bus_num =3D -1;
	stm32_spi_dt_probe(priv);

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

