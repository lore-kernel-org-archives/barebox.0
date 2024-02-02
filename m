Delivery-date: Fri, 02 Feb 2024 16:55:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvt8-0003az-11
	for lore@lore.pengutronix.de;
	Fri, 02 Feb 2024 16:55:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVvt9-0007gD-0g
	for lore@pengutronix.de; Fri, 02 Feb 2024 16:55:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nmz8aV+N3XGi144FmP9I+XDnuUdtp73yZODfEcL/WIM=; b=lBCUaVw8D9HXTXpycCxOpf/OfE
	vo66byOQQys5wUZZIO7NKPRZBCuNjKeM8ARFbxdeKvN5ffk4+7ygkDrxSST8PFTPqgiUVhWGaXFg5
	xxh0Jo7b6WrMiH+YegBDBA+iW+OqdRWaLFMfbauC0Vbxwq+GWoGO1G6j+SUlMZCvvyV3rl/qfdc+c
	1kZYZPyBYFhEZfaFAAoPqOdg+wpQzWvAGa9IR3MmzPvUYFN6vl5CmTdNto/IonXYkRhudMfyRberv
	CI+fF5uvAvSaxZzs5yAq4Bype4R2MF4GDPEAk1B4+aLiof61y/2il/6KzczWvBztKzC3oJpmyT91L
	q7dtmBRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvsi-0000000C7wo-22ad;
	Fri, 02 Feb 2024 15:55:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVvsf-0000000C7vW-2ia3
	for barebox@lists.infradead.org;
	Fri, 02 Feb 2024 15:55:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVvsc-0007dI-9p; Fri, 02 Feb 2024 16:55:02 +0100
Message-ID: <a0a28cdb-bba0-411d-b102-a67ba57e31d4@pengutronix.de>
Date: Fri, 2 Feb 2024 16:55:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240202153113.245488-1-s.hauer@pengutronix.de>
 <20240202153113.245488-5-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240202153113.245488-5-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240202_075505_747778_899EF660 
X-CRM114-Status: GOOD (  19.16  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] pbl: eeprom: return error from eeprom_read()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 02.02.24 16:31, Sascha Hauer wrote:
> Reading from an I2C EEPROM can clearly produce errors, so return
> an error code instead of void.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/pbl/eeprom.h | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/include/pbl/eeprom.h b/include/pbl/eeprom.h
> index df868b1a37..7812402290 100644
> --- a/include/pbl/eeprom.h
> +++ b/include/pbl/eeprom.h
> @@ -5,7 +5,7 @@
>  #include <common.h>
>  #include <pbl/i2c.h>
>  
> -static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
> +static inline int eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, void *buf, u16 count)
>  {
>  	u8 msgbuf[2];
>  	struct i2c_msg msg[] = {
> @@ -27,8 +27,13 @@ static inline void eeprom_read(struct pbl_i2c *i2c, u16 client_addr, u32 addr, v
>  	msg[0].len = i;
>  
>  	ret = pbl_i2c_xfer(i2c, msg, ARRAY_SIZE(msg));
> +	if (ret < 0)
> +		return ret;
> +
>  	if (ret != ARRAY_SIZE(msg))
> -		pr_err("Failed to read from eeprom@%x: %d\n", client_addr, ret);
> +		return -EIO;

as there is likely nothing useful that can be done this early,
I'd prefer you leave the error message be.

Cheers,
Ahmad

> +
> +	return 0;
>  }
>  
>  #endif

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



