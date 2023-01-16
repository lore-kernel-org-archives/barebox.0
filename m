Delivery-date: Mon, 16 Jan 2023 13:43:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOpV-00DZUU-PM
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 13:43:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOpT-0004YS-R2
	for lore@pengutronix.de; Mon, 16 Jan 2023 13:43:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PqAjHklORtYvvvhVfUxaJuW/qRZrPLbrCktTUZwFxHc=; b=EhurjtJ2rXDEVKAhX/H3/sOhVq
	JhaWAmSWzLxyv7w5QeOjx13HlPtI/uKQ7Fe9i0THHTq4VYtvPj4OFiS79Pzqm2W1vj/nTHjnbYfmx
	XZ4cAp/EHJubKWLm19KQe+jxkyVB7paYtqWIC8GCl6fSceLWzxIckLXrrqsUDLGlp5fB6Eq57kkrY
	xEWnpT/2qnH1uuga0fxnyQPm7xTjKePkXFYpByFkHXiS03buOQhl2Lnd3Vv9oMPHOtMjUl3N+Rj6X
	SOgGVB7wbfOeAY8VoIYhfv4gw6rgKzcxIbzIWWNTIuyB8CtmwyJiEbONqk5xhDhsuTrgv/QyNTerD
	m/K/NdCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOoJ-00A8OJ-Ct; Mon, 16 Jan 2023 12:41:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOoE-00A8NJ-Ip
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 12:41:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOoD-0004Iz-78; Mon, 16 Jan 2023 13:41:53 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOoD-0004mr-05; Mon, 16 Jan 2023 13:41:53 +0100
Date: Mon, 16 Jan 2023 13:41:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230116124152.GD24755@pengutronix.de>
References: <20230113140909.31769-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230113140909.31769-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_044154_637446_4258B353 
X-CRM114-Status: GOOD (  23.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: e1000: read EEPROM through EERD register on 8257x
 adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 13, 2023 at 05:09:09PM +0300, Denis Orlov wrote:
> For some reason, we would only use EERD if Flash is used as non-volatile
> memory. However, looking at e1000e driver sources from Linux this is how
> they are reading NVM on those cards for both EEPROM and Flash.
> 
> This fixes issues with reading EEPROM in driver on QEMU emulated 82574
> PCIe card.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/net/e1000/eeprom.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/e1000/eeprom.c b/drivers/net/e1000/eeprom.c
> index 27143bd6d0..c90faf3a58 100644
> --- a/drivers/net/e1000/eeprom.c
> +++ b/drivers/net/e1000/eeprom.c
> @@ -495,6 +495,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
>  	case e1000_82571:
>  	case e1000_82572:
>  		e1000_eeprom_uses_spi(eeprom, eecd);
> +		eeprom->read = e1000_read_eeprom_eerd;
>  		break;
>  
>  	case e1000_82573:
> @@ -502,7 +503,6 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
>  		if (e1000_is_onboard_nvm_eeprom(hw)) {
>  			e1000_eeprom_uses_spi(eeprom, eecd);
>  		} else {
> -			eeprom->read = e1000_read_eeprom_eerd;
>  			eeprom->type = e1000_eeprom_flash;
>  			eeprom->word_size = 2048;
>  
> @@ -513,6 +513,7 @@ int32_t e1000_init_eeprom_params(struct e1000_hw *hw)
>  			eecd &= ~E1000_EECD_AUPDEN;
>  			e1000_write_reg(hw, E1000_EECD, eecd);
>  		}
> +		eeprom->read = e1000_read_eeprom_eerd;
>  		break;
>  
>  	case e1000_80003es2lan:
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


