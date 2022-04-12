Delivery-date: Tue, 12 Apr 2022 10:57:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neCKk-00H0NW-32
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:57:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neCKh-0004Ts-GC
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fGji4b+dsj4rZI0fyaCazrHCh5iWNQeM1xiyjKXMvjA=; b=kO1WfnZX7BlNDx8lNMTuEw2fCd
	SvSnajdg1YoHKuRY0ECq5qDFknKwDYfynOhppFZLcowa9n8JkrwJ07lJuT82Y8t7PcshH85XQaQmS
	LBroBQ6e7M3QsaM0Ms8yzjSmYpByKkH5/ajnG/zolWE0jiU+zBKCve5yxgXkxoYEpPeisdmb5n0t7
	3oQN/357zUwMELArRawM0VG6FfRlpBy0ROi11qTKbmteU9MDwLswMdA82V/SfMIx5NDlQTI2KGDC1
	KgvLBrOjif74SKROQkXyjSb7XgklblaUJVAQHeVVW6lKTUv8BVdugSbFbcf97TrdhtHemnFqp6y0L
	85dEjWqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCJW-00CiOd-Fa; Tue, 12 Apr 2022 08:55:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCJR-00CiN3-8x
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 08:55:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neCJQ-00047o-1s; Tue, 12 Apr 2022 10:55:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neCJP-0002yx-PZ; Tue, 12 Apr 2022 10:55:47 +0200
Date: Tue, 12 Apr 2022 10:55:47 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412085547.GA4012@pengutronix.de>
References: <20220407090246.953707-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407090246.953707-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:55:38 up 12 days, 21:25, 65 users,  load average: 0.32, 0.16, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_015549_349640_2DADDAAC 
X-CRM114-Status: GOOD (  26.32  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 1/2] net: designware: eqos: fix receive issue with
 external switch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:02:45AM +0200, Oleksij Rempel wrote:
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
> ---
>  drivers/net/designware_eqos.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

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

