Delivery-date: Wed, 09 Aug 2023 10:48:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTesA-00DYEp-6w
	for lore@lore.pengutronix.de; Wed, 09 Aug 2023 10:48:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTes8-0008CF-7B
	for lore@pengutronix.de; Wed, 09 Aug 2023 10:48:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vq9GlFKvmJCrqLdre46w6kBdbY7WO8wP2VPMCA+cRwQ=; b=gRUtVYmnvXvPvl8XN6A3S4Mk6C
	PjOIT01zCnA2Oy06ubqYBehGbKyzBCOLrLgCNH/GDyhNFE5A99pg5lFumNUZDdjolWZE00CuySJOz
	i8hOXKKJCMZbunnqYGH+eB+1GJc4f89uz02GphAgCAt90Vg86SqgkSnR7PF5fsMWnb+wVYWJyK0GP
	AlKRcBesK5601cR3EoE0GSfte1HcfTBBFS8kx2+nH6wZxLuTitjrqXrmmqlPQNNxSQNuw0J1AXc0C
	Fv2u7IrP5uo8CcQi3HrbZKscpggtPmkD6tLx7N0KHEi+5JUgLT8MCQjsORo0hFNqwG+o7YEz8mQhw
	yrqCIQrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTeqs-004Ocg-0f;
	Wed, 09 Aug 2023 08:47:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTeqp-004ObC-0U
	for barebox@lists.infradead.org;
	Wed, 09 Aug 2023 08:47:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qTeqm-00086e-1z; Wed, 09 Aug 2023 10:47:28 +0200
Message-ID: <81ff53e3-f249-4ada-28fb-14ee72679bcf@pengutronix.de>
Date: Wed, 9 Aug 2023 10:47:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marc Kleine-Budde <mkl@pengutronix.de>, barebox@lists.infradead.org
Cc: afa@pengutronix.de
References: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
 <20230809-phytec-som-imx8mm-v4-1-b9d4759582d8@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230809-phytec-som-imx8mm-v4-1-b9d4759582d8@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230809_014731_185240_AFF78C13 
X-CRM114-Status: GOOD (  21.21  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 1/3] i2c: add <pbl/eeprom.h> for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 09.08.23 09:26, Marc Kleine-Budde wrote:
> Add a small helper to read a single page of EEPROM data.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  include/pbl/eeprom.h | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
> new file mode 100644
> index 000000000000..df868b1a37fb
> --- /dev/null
> +++ b/include/pbl/eeprom.h
> @@ -0,0 +1,34 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __PBL_EEPROM_H_
> +#define __PBL_EEPROM_H_
> +
> +#include <common.h>
> +#include <pbl/i2c.h>
> +
> +static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
> +{
> +	u8 msgbuf[2];
> +	struct i2c_msg msg[] = {
> +		{
> +			.addr = client_addr,
> +			.buf = msgbuf,
> +		}, {
> +			.addr = client_addr,
> +			.flags = I2C_M_RD,
> +			.buf = buf,
> +			.len = count,
> +		},
> +	};
> +	int ret, i = 0;
> +
> +	if (addr & I2C_ADDR_16_BIT)
> +		msgbuf[i++] = addr >> 8;
> +	msgbuf[i++] = addr;
> +	msg[0].len = i;
> +
> +	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> +	if (ret != ARRAY_SIZE(msg))
> +		pr_err("Failed to read from eeprom@%x: %d\n", client_addr, ret);
> +}
> +
> +#endif
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



