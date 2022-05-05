Delivery-date: Thu, 05 May 2022 09:49:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWFC-002TJH-TN
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:49:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWFB-0005GX-DT
	for lore@pengutronix.de; Thu, 05 May 2022 09:49:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ds/w9T9OjN6P94IQwkPolAmBgiJ5Ay/ImmZfDacoQ94=; b=KoyoJqx1NggdjB
	+SF2fWJ6B9uhuzRlrNgF7gl5MIhbC4tZuoy7uzy9uo0da/SFbJTwP/B8yMreGUrlXfV6kcvKHtzDH
	Rt3xrp7faRWXhNEILkz1IvROGeCzzqD3A/ZHjHWugStpPsJAhcIaYPwgjKRa5KiOFSYRJA/etYRl3
	aYvCzhqOLuOGUS78oeIovrEAROUgzEqjWMaIPF52ZyeZWEGBrSTjw/fRc6DcrQXR3SQRFMX2pbQFB
	dodq6kH1PGollYp08OoNsm4oqASCI2Yqb8HqVS+aMV1rEa/3qigj8pUPoRV2oZZf8BYnZLjeaFjnN
	wGQ6dbHyqRO+VRlDBXYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWDv-00ETr1-7K; Thu, 05 May 2022 07:48:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWDp-00EToh-On
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:48:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWDm-00059K-2a; Thu, 05 May 2022 09:48:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWDl-0000cm-Hw; Thu, 05 May 2022 09:48:21 +0200
Date: Thu, 5 May 2022 09:48:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220505074821.GI4012@pengutronix.de>
References: <20220504092553.27961-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220504092553.27961-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:09 up 35 days, 20:16, 82 users,  load average: 0.10, 0.14, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_004825_856358_831CB41B 
X-CRM114-Status: GOOD (  28.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 01/16] ata: ahci: use abstract read/write functions
 uniformly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 04, 2022 at 12:25:38PM +0300, Denis Orlov wrote:
> Currently those are used in some routines side by side with underlying
> functions with no apparent reason for it. Make their usage uniform, this
> cleans up code a bit and allows to remove unneeded variables.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>
> ---
>  drivers/ata/ahci.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)

Applied all, thanks

Sascha

> 
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 3c0b0a5450..ad9e2f950f 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -172,7 +172,7 @@ static int ahci_io(struct ahci_port *ahci_port, u8 *fis, int fis_len, void *rbuf
>  	ahci_port_write_f(ahci_port, PORT_CMD_ISSUE, 1);
>  
>  	ret = wait_on_timeout(WAIT_DATAIO,
> -			(readl(ahci_port->port_mmio + PORT_CMD_ISSUE) & 0x1) == 0);
> +			(ahci_port_read(ahci_port, PORT_CMD_ISSUE) & 0x1) == 0);
>  	if (ret)
>  		return -ETIMEDOUT;
>  
> @@ -274,12 +274,9 @@ static int ahci_write(struct ata_port *ata, const void *buf, sector_t block,
>  
>  static int ahci_init_port(struct ahci_port *ahci_port)
>  {
> -	void __iomem *port_mmio;
>  	u32 val, cmd;
>  	int ret;
>  
> -	port_mmio = ahci_port->port_mmio;
> -
>  	/* make sure port is not active */
>  	val = ahci_port_read(ahci_port, PORT_CMD);
>  	if (val & (PORT_CMD_LIST_ON | PORT_CMD_FIS_ON | PORT_CMD_FIS_RX | PORT_CMD_START)) {
> @@ -375,16 +372,16 @@ static int ahci_init_port(struct ahci_port *ahci_port)
>  	ahci_port_info(ahci_port, "Spinning up device...\n");
>  
>  	ret = wait_on_timeout(WAIT_SPINUP,
> -			((readl(port_mmio + PORT_TFDATA) &
> +			((ahci_port_read(ahci_port, PORT_TFDATA) &
>  			 (ATA_STATUS_BUSY | ATA_STATUS_DRQ)) == 0)
> -			|| ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1));
> +			|| ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1));
>  	if (ret) {
>  		ahci_port_info(ahci_port, "timeout.\n");
>  		ret = -ENODEV;
>  		goto err_init;
>  	}
>  
> -	if ((readl(port_mmio + PORT_SCR_STAT) & 0xf) == 1) {
> +	if ((ahci_port_read(ahci_port, PORT_SCR_STAT) & 0xf) == 1) {
>  		ahci_port_info(ahci_port, "down.\n");
>  		ret = -ENODEV;
>  		goto err_init;
> @@ -570,7 +567,6 @@ static int ahci_detect(struct device_d *dev)
>  
>  int ahci_add_host(struct ahci_device *ahci)
>  {
> -	u8 *mmio = (u8 *)ahci->mmio_base;
>  	u32 tmp, cap_save;
>  	int i, ret;
>  
> @@ -584,7 +580,7 @@ int ahci_add_host(struct ahci_device *ahci)
>  
>  	ahci_debug(ahci, "ahci_host_init: start\n");
>  
> -	cap_save = readl(mmio + HOST_CAP);
> +	cap_save = ahci_ioread(ahci, HOST_CAP);
>  	cap_save &= ((1 << 28) | (1 << 17));
>  	cap_save |= (1 << 27);  /* Staggered Spin-up. Not needed. */
>  
> @@ -597,7 +593,7 @@ int ahci_add_host(struct ahci_device *ahci)
>  	 * reset must complete within 1 second, or
>  	 * the hardware should be considered fried.
>  	 */
> -	ret = wait_on_timeout(SECOND, (readl(mmio + HOST_CTL) & HOST_RESET) == 0);
> +	ret = wait_on_timeout(SECOND, (ahci_ioread(ahci, HOST_CTL) & HOST_RESET) == 0);
>  	if (ret) {
>  		ahci_debug(ahci,"controller reset failed (0x%x)\n", tmp);
>  		return -ENODEV;
> @@ -620,7 +616,7 @@ int ahci_add_host(struct ahci_device *ahci)
>  		ahci_port->num = i;
>  		ahci_port->ahci = ahci;
>  		ahci_port->ata.dev = ahci->dev;
> -		ahci_port->port_mmio = ahci_port_base(mmio, i);
> +		ahci_port->port_mmio = ahci_port_base(ahci->mmio_base, i);
>  		ahci_port->ata.ops = &ahci_ops;
>  		ata_port_register(&ahci_port->ata);
>  	}
> -- 
> 2.20.1
> 
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

