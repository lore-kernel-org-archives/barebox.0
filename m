Delivery-date: Thu, 23 Feb 2023 10:33:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7yg-00GeNG-BZ
	for lore@lore.pengutronix.de; Thu, 23 Feb 2023 10:33:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pV7yc-0002NY-2c
	for lore@pengutronix.de; Thu, 23 Feb 2023 10:33:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kYz9RZ4/3ZS+FMq6tCV6V1aIbbsrE0/UD9WtUssIfVw=; b=Auu04Rrr5oWsekuieboGQyLkzo
	Yn0fgsSnZuQlHtKHM71hgKz195rCZ1vgMZzRXvjIEEx14i/BZxWBvOFOnBxY3OlSFReLMv7i/wWUm
	5m+b7KTVt6W5l+Dy0XDVivXmJRzI60ysw06dhhBfGooXbvJmYEsD9vsDSTMOPWUTYwK8eUsrlxzq6
	jFcJXRHZYmPo0tOljU4K6LOj7L/bzJpy94AzQTtbD/S2zDFVKPwWyL2WtNy3S6UxA8UYWeSzEOfa7
	O2jNpyL6kaKiSfJxzB09QgW4Iy/rXWNdt85YbYv9VSn/7Wx2kBV5W26BthuVAxaOE3525pr/s+cYp
	6UuEUJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7xP-00Fif8-W7; Thu, 23 Feb 2023 09:32:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV7xL-00Fie9-G4
	for barebox@lists.infradead.org; Thu, 23 Feb 2023 09:32:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7xJ-00021V-Vq; Thu, 23 Feb 2023 10:32:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pV7xJ-0007f9-OV; Thu, 23 Feb 2023 10:32:01 +0100
Date: Thu, 23 Feb 2023 10:32:01 +0100
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, afa@pengutronix.de
Message-ID: <20230223093201.GE32097@pengutronix.de>
References: <20230222122320.1494205-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230222122320.1494205-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_013203_563138_6229BAAE 
X-CRM114-Status: GOOD (  19.07  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: make DRIVER_NET_DESIGNWARE_IMX8 select MFD_SYSCON
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 22, 2023 at 01:23:20PM +0100, Bastian Krause wrote:
> The driver includes mfd/syscon.h and uses
> syscon_regmap_lookup_by_phandle():
> 
>   eqos-imx8 30bf0000.ethernet@30bf0000.of: probe failed: Function not implemented
> 
> Select MFD_SYSCON to fix this.
> 
> Fixes: b6fb740819 ("net: eqos: add i.MX8MP support")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  drivers/net/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index a9fc073d57..25b46ccb11 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -111,6 +111,7 @@ config DRIVER_NET_DESIGNWARE_IMX8
>  	bool "Designware EQOS i.MX8 Ethernet driver"
>  	depends on HAS_DMA && COMMON_CLK && OFTREE && (ARCH_IMX8M || COMPILE_TEST)
>  	select DRIVER_NET_DESIGNWARE_EQOS
> +	select MFD_SYSCON
>  	help
>  	  This option enables support for the Designware EQOS MAC implemented on
>  	  the NXP i.MX8 SoCs.
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


