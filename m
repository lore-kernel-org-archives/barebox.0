Delivery-date: Tue, 06 Jun 2023 13:23:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6UmN-00Cz6J-Sf
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 13:23:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6UmL-0008SY-HJ
	for lore@pengutronix.de; Tue, 06 Jun 2023 13:23:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GEbL79KwMBMRcNnu36k5D1faSjjfBK71bTlIspJMeOQ=; b=QzQeugPTXcdjPu0lv4LuuaUG63
	aT/Q9OvKVdX386jebAAwUEfJd3H/om72jsx9gMXy/yFXJvKxBkR6ojftQpgCrJffAGySlyrYIKvxv
	bEycE/5zF7UhjCvpt0K45FqFO4EHcd6m4XA4vhA804S0C8KrgdChnvAfNplIaC+8bkt90N+Vu+fOv
	HxC8w7HdZtkfC8l8T7SM1+pSDUe3MIHalatqCt87jDI+8sTk6cpzAtBHCKBeQbG+Q7x78We6D1FOW
	Z4jDDLtPocKu6ho/238vaZTqF9oHmFHyCYkEcN2mrZ1ykbZSYdYbz5oc+LwGcblsmK1GTzv5mrZ2d
	WTUa1LLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Ul8-001Qb4-1U;
	Tue, 06 Jun 2023 11:21:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Ul5-001QZF-0r
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 11:21:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6Ul2-0008JM-WA; Tue, 06 Jun 2023 13:21:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q6Ul2-0000j2-P2; Tue, 06 Jun 2023 13:21:48 +0200
Date: Tue, 6 Jun 2023 13:21:48 +0200
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230606112148.GE18491@pengutronix.de>
References: <20230606-phytec-som-imx8mm-v1-0-b9c2bf70b766@pengutronix.de>
 <20230606-phytec-som-imx8mm-v1-1-b9c2bf70b766@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230606-phytec-som-imx8mm-v1-1-b9c2bf70b766@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_042151_301001_AA7DA77D 
X-CRM114-Status: GOOD (  23.41  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] i2c: add <pbl/eeprom.h> for PBL use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 06, 2023 at 12:50:02PM +0200, Marc Kleine-Budde wrote:
> Add a small helper to read a single page of EEPROM data.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  include/pbl/eeprom.h | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
> new file mode 100644
> index 000000000000..b713cf154c99
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
> +	msg->len = i;

I wasn't aware that an array can be accessed as a pointer. I would
prefer msg[0].len = i here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


