Delivery-date: Thu, 07 Apr 2022 14:25:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncRCD-00AQmJ-OK
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 14:25:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncRCA-0005HU-67
	for lore@pengutronix.de; Thu, 07 Apr 2022 14:25:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hM5UuPk8PmBdRZvOhJ4Wcr/VF7XtSZMWp3s0QZWZVA=; b=eYPzoXxeuejRhc
	J6mqJi2hGDPEFaH5+aDMtt1i8JdD81F+q4bzboC9oWM3uxFcIWjQSRK1yXnL3t+MEeUhPaoTNjxlM
	qMkBXLdyMCs7csyFGHh1Fla4mFx5WHX7Mn1V26UdcLOfZjP2fV7O1aWgbv8yf26PGi51/bV5gPavJ
	fhEXfkfPoVDC9TuVCWnPkKqUvRyhafC06uEPqFeqZzJoAI7XasuepEdrHRSaI81fwkfPgll2Hr12h
	Vh9Schp5KbQxlSeh/gmZ7cJtWJ7ahJGYeS9qkEHBe08wWuC3Iys46Klcpu32sTSn6SqHo+mWKeOvV
	aIEXDh8iCfe4pijkPaRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncRAy-00Bpkp-Nm; Thu, 07 Apr 2022 12:23:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncRAq-00BphE-PM
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 12:23:45 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1ncRAp-00057b-HX; Thu, 07 Apr 2022 14:23:39 +0200
Message-ID: <25b1e394-918a-56ec-8931-496c1fafe1b4@pengutronix.de>
Date: Thu, 7 Apr 2022 14:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20220407090246.953707-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220407090246.953707-1-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_052340_909729_15E8A977 
X-CRM114-Status: GOOD (  19.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] net: designware: eqos: fix receive issue with
 external switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.04.22 11:02, Oleksij Rempel wrote:
> Do not drop packets with error status (CRC error, receive error, watchdog
> timeout, or overflow) otherwise we wont be able to receive packets from
> a switch with enabled tagging.
> 
> In case we have switch with tagging enabled, ingress packets will be
> modified by the switch. Most probably this will affect CRC calculation,
> so all incoming packets are dropped.
> 
> Setting FEP and FUP is recommended programming model described in
> STM32MP157 reference manual. See "64.9.2 MTL initialization":
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/designware_eqos.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
> index 8d2a21c220..1f97d84880 100644
> --- a/drivers/net/designware_eqos.c
> +++ b/drivers/net/designware_eqos.c
> @@ -112,6 +112,8 @@ struct eqos_mtl_regs {
>  #define EQOS_MTL_RXQ0_OPERATION_MODE_RFA_MASK		0x3f
>  #define EQOS_MTL_RXQ0_OPERATION_MODE_EHFC		BIT(7)
>  #define EQOS_MTL_RXQ0_OPERATION_MODE_RSF		BIT(5)
> +#define EQOS_MTL_RXQ0_OPERATION_MODE_FEP		BIT(4)
> +#define EQOS_MTL_RXQ0_OPERATION_MODE_FUP		BIT(3)
>  
>  #define EQOS_MTL_RXQ0_DEBUG_PRXQ_SHIFT			16
>  #define EQOS_MTL_RXQ0_DEBUG_PRXQ_MASK			0x7fff
> @@ -433,7 +435,9 @@ static int eqos_start(struct eth_device *edev)
>  
>  	/* Enable Store and Forward mode for RX, since no jumbo frame */
>  	setbits_le32(&eqos->mtl_regs->rxq0_operation_mode,
> -		     EQOS_MTL_RXQ0_OPERATION_MODE_RSF);
> +		     EQOS_MTL_RXQ0_OPERATION_MODE_RSF |
> +		     EQOS_MTL_RXQ0_OPERATION_MODE_FEP |
> +		     EQOS_MTL_RXQ0_OPERATION_MODE_FUP);
>  
>  	/* Transmit/Receive queue fifo size; use all RAM for 1 queue */
>  	val = readl(&eqos->mac_regs->hw_feature1);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

