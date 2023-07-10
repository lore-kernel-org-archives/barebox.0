Delivery-date: Mon, 10 Jul 2023 12:54:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIoXe-005dEY-GU
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 12:54:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIoXa-00087w-Q8
	for lore@pengutronix.de; Mon, 10 Jul 2023 12:54:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sQmPAXD+pydWn8bHSerdyigcUM+KbIT1RlNgBxKyhMM=; b=3uELIWx0w1ZzosMH1bG5aTZ7g3
	dMvKW1VEiyrihGTz63iqXQnVSJmV7zJmPT2VVjoPltJzzPurHaUINMawhXvfHVJd23G87VvV6JnTX
	I9ToQEKrvn48ZUx+eSjnDJPdDsEauZ3ha+ZUw7kyzW8UdIm3/PL9wPm/JkWn0pZvLR0+Sayi7vhQL
	0xmOfohWeukFvGOwS9pz1GzahyFSrcLBANwhDZ38rRoJ1uhhr5r99D+d2QzR5ytlGDFs14vdpao4V
	5OIuhOCZJv+t6h9yp2StRSTQ1oRCoKRcFP7apMFgBlxVoFp8n6ZjCf5fYTK5YjTKQ0qrMvv82v+ti
	xtzcF3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoWO-00BOJj-2N;
	Mon, 10 Jul 2023 10:53:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIoWJ-00BOID-27
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 10:53:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qIoWI-00080n-AB; Mon, 10 Jul 2023 12:53:30 +0200
Message-ID: <8839814f-de7c-a70b-8573-55dd2c38c766@pengutronix.de>
Date: Mon, 10 Jul 2023 12:53:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-3-m.felsch@pengutronix.de>
 <1054cc32-fedd-1c5e-7e74-80cce77c6e72@pengutronix.de>
 <20230710104931.aykuig7y2ctykky5@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710104931.aykuig7y2ctykky5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_035332_013369_1EA00910 
X-CRM114-Status: GOOD (  24.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/7] net: phy: sync phy_{write,read,modify}_mmd_indirect
 with linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 10.07.23 12:49, Marco Felsch wrote:
> On 23-07-10, Ahmad Fatoum wrote:
>> On 10.07.23 08:36, Marco Felsch wrote:
>>> Sync the barebox phy_{write,read,modify}_mmd_indirect API with the Linux
>>> phy_{write,read,modify}_mmd API to make it easier and less error prone
>>> to port phy drivers. This also fixes the r8169 driver since this driver
>>> did not adapt the parameters while porting from Linux.
>>>
>>> The sync also aligns the function parameter `prtad` as well as the
>>> function documentation.
>>
>> This breaks out of tree board code in a subtle and annoying manner.
> 
> Do we really need to care about out all-of-tree drivers/boards? If so,
> we need to ensure to not break any public function.

Out-of-tree drivers not too much probably, but out-of-tree boards
are unfortunately the norm. Breaking the build can be justified,
but silent breaking by swapping arguments is not nice.

>> We are in luck that the kernel function has a different name than
>> the barebox function, so I'd rather suggest:
>>
>>  - Add phy_read_mmd/phy_write_mmd functions with same argument
>>    order as Linux
>>  - Switch all users in barebox to the new functions
>>  - Mark the old _indirect function deprecated with a suggestion
>>    to use phy_read_mmd/phy_write_mmd and swap address arguments.
> 
> I was think about such approach, then I checked that the Linux API does
> handle C45 as well, so we would need least at least $some minimal
> support like:
> 
> if (c45)
> 	pr_err("C45 phys are not supported yet\n");
> 	return -EINVAL;

Sounds good IMO. Maybe return -ENOSYS instead.

> 
> and therefore I stuck with the _indirect functions.
> 
> Regards,
>   Marco
> 
>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>  arch/arm/boards/datamodul-edm-qmx6/board.c   |  6 +--
>>>  arch/arm/boards/embest-marsboard/board.c     |  6 +--
>>>  arch/arm/boards/terasic-de0-nano-soc/board.c |  6 +--
>>>  arch/arm/boards/terasic-de10-nano/board.c    |  6 +--
>>>  arch/arm/boards/tqma6x/board.c               |  6 +--
>>>  drivers/net/phy/at803x.c                     |  4 +-
>>>  drivers/net/phy/dp83867.c                    | 40 +++++++-------
>>>  drivers/net/phy/micrel.c                     | 24 ++++-----
>>>  drivers/net/phy/phy.c                        | 57 ++++++++++----------
>>>  include/linux/phy.h                          | 10 ++--
>>>  10 files changed, 83 insertions(+), 82 deletions(-)
>>>
>>> diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
>>> index 366b64d35a..0dc71f2aca 100644
>>> --- a/arch/arm/boards/datamodul-edm-qmx6/board.c
>>> +++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
>>> @@ -49,9 +49,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>>>  	 * min rx data delay, max rx/tx clock delay,
>>>  	 * min rx/tx control delay
>>>  	 */
>>> -	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x03ff);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 4, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 5, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 8, 0x03ff);
>>>  
>>>  	return 0;
>>>  }
>>> diff --git a/arch/arm/boards/embest-marsboard/board.c b/arch/arm/boards/embest-marsboard/board.c
>>> index 7274595e2a..e70fefec5e 100644
>>> --- a/arch/arm/boards/embest-marsboard/board.c
>>> +++ b/arch/arm/boards/embest-marsboard/board.c
>>> @@ -20,13 +20,13 @@ static int ar8035_phy_fixup(struct phy_device *dev)
>>>  	/* Ar803x phy SmartEEE feature cause link status generates glitch,
>>>  	 * which cause ethernet link down/up issue, so disable SmartEEE
>>>  	 */
>>> -	val = phy_read_mmd_indirect(dev, 0x805d, MDIO_MMD_PCS);
>>> +	val = phy_read_mmd_indirect(dev, MDIO_MMD_PCS, 0x805d);
>>>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>>>  
>>> -	val = phy_read_mmd_indirect(dev, 0x4003, MDIO_MMD_PCS);
>>> +	val = phy_read_mmd_indirect(dev, MDIO_MMD_PCS, 0x4003);
>>>  	phy_write(dev, MII_MMD_DATA, val & ~(1 << 8));
>>>  
>>> -	val = phy_read_mmd_indirect(dev, 0x4007, MDIO_MMD_PCS);
>>> +	val = phy_read_mmd_indirect(dev, MDIO_MMD_PCS, 0x4007);
>>>  	val &= 0xffe3;
>>>  	val |= 0x18;
>>>  	phy_write(dev, MII_MMD_DATA, val);
>>> diff --git a/arch/arm/boards/terasic-de0-nano-soc/board.c b/arch/arm/boards/terasic-de0-nano-soc/board.c
>>> index 832160c595..fa83498f46 100644
>>> --- a/arch/arm/boards/terasic-de0-nano-soc/board.c
>>> +++ b/arch/arm/boards/terasic-de0-nano-soc/board.c
>>> @@ -19,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>>>  	 * min rx data delay, max rx/tx clock delay,
>>>  	 * min rx/tx control delay
>>>  	 */
>>> -	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 4, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 5, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 8, 0x003ff);
>>>  	return 0;
>>>  }
>>>  
>>> diff --git a/arch/arm/boards/terasic-de10-nano/board.c b/arch/arm/boards/terasic-de10-nano/board.c
>>> index e47d9ac841..7ceb691f71 100644
>>> --- a/arch/arm/boards/terasic-de10-nano/board.c
>>> +++ b/arch/arm/boards/terasic-de10-nano/board.c
>>> @@ -19,9 +19,9 @@ static int phy_fixup(struct phy_device *dev)
>>>  	 * min rx data delay, max rx/tx clock delay,
>>>  	 * min rx/tx control delay
>>>  	 */
>>> -	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 4, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 5, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 8, 0x003ff);
>>>  	return 0;
>>>  }
>>>  
>>> diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
>>> index 8a91ad652a..3fd2e1db2c 100644
>>> --- a/arch/arm/boards/tqma6x/board.c
>>> +++ b/arch/arm/boards/tqma6x/board.c
>>> @@ -47,9 +47,9 @@ static int ksz9031rn_phy_fixup(struct phy_device *dev)
>>>  	 * min rx data delay, max rx/tx clock delay,
>>>  	 * min rx/tx control delay
>>>  	 */
>>> -	phy_write_mmd_indirect(dev, 4, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 5, MDIO_MMD_WIS, 0);
>>> -	phy_write_mmd_indirect(dev, 8, MDIO_MMD_WIS, 0x003ff);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 4, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 5, 0);
>>> +	phy_write_mmd_indirect(dev, MDIO_MMD_WIS, 8, 0x003ff);
>>>  
>>>  	return 0;
>>>  }
>>> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
>>> index 18182bffc2..41010c58ad 100644
>>> --- a/drivers/net/phy/at803x.c
>>> +++ b/drivers/net/phy/at803x.c
>>> @@ -229,14 +229,14 @@ static int at803x_clk_out_config(struct phy_device *phydev)
>>>  	if (!priv->clk_25m_mask)
>>>  		return 0;
>>>  
>>> -	val = phy_read_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN);
>>> +	val = phy_read_mmd_indirect(phydev, MDIO_MMD_AN, AT803X_MMD7_CLK25M);
>>>  	if (val < 0)
>>>  		return val;
>>>  
>>>  	val &= ~priv->clk_25m_mask;
>>>  	val |= priv->clk_25m_reg;
>>>  
>>> -	phy_write_mmd_indirect(phydev, AT803X_MMD7_CLK25M, MDIO_MMD_AN, val);
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_AN, AT803X_MMD7_CLK25M, val);
>>>  
>>>  	return 0;
>>>  }
>>> diff --git a/drivers/net/phy/dp83867.c b/drivers/net/phy/dp83867.c
>>> index d8109172df..85fe5107da 100644
>>> --- a/drivers/net/phy/dp83867.c
>>> +++ b/drivers/net/phy/dp83867.c
>>> @@ -154,14 +154,14 @@ static int dp83867_config_port_mirroring(struct phy_device *phydev)
>>>  	struct dp83867_private *dp83867 = phydev->priv;
>>>  	u16 val;
>>>  
>>> -	val = phy_read_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR);
>>> +	val = phy_read_mmd_indirect(phydev, DP83867_DEVADDR, DP83867_CFG4);
>>>  
>>>  	if (dp83867->port_mirroring == DP83867_PORT_MIRROING_EN)
>>>  		val |= DP83867_CFG4_PORT_MIRROR_EN;
>>>  	else
>>>  		val &= ~DP83867_CFG4_PORT_MIRROR_EN;
>>>  
>>> -	phy_write_mmd_indirect(phydev, DP83867_CFG4, DP83867_DEVADDR, val);
>>> +	phy_write_mmd_indirect(phydev, DP83867_DEVADDR, DP83867_CFG4, val);
>>>  
>>>  	return 0;
>>>  }
>>> @@ -256,11 +256,11 @@ static int dp83867_config_init(struct phy_device *phydev)
>>>  	phy_write(phydev, DP83867_CTRL, val | DP83867_SW_RESTART);
>>>  
>>>  	if (dp83867->rxctrl_strap_quirk) {
>>> -		val = phy_read_mmd_indirect(phydev, DP83867_CFG4,
>>> -					    DP83867_DEVADDR);
>>> +		val = phy_read_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +					    DP83867_CFG4);
>>>  		val &= ~BIT(7);
>>> -		phy_write_mmd_indirect(phydev, DP83867_CFG4,
>>> -				       DP83867_DEVADDR, val);
>>> +		phy_write_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +				       DP83867_CFG4, val);
>>>  	}
>>>  
>>>  	if (phy_interface_is_rgmii(phydev)) {
>>> @@ -270,8 +270,8 @@ static int dp83867_config_init(struct phy_device *phydev)
>>>  		if (ret)
>>>  			return ret;
>>>  
>>> -		val = phy_read_mmd_indirect(phydev, DP83867_RGMIICTL,
>>> -					    DP83867_DEVADDR);
>>> +		val = phy_read_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +					    DP83867_RGMIICTL);
>>>  
>>>  		switch (phydev->interface) {
>>>  		case PHY_INTERFACE_MODE_RGMII_ID:
>>> @@ -287,31 +287,31 @@ static int dp83867_config_init(struct phy_device *phydev)
>>>  		default:
>>>  			break;
>>>  		}
>>> -		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
>>> -				       DP83867_DEVADDR, val);
>>> +		phy_write_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +				       DP83867_RGMIICTL, val);
>>>  
>>>  		delay = (dp83867->rx_id_delay |
>>>  			(dp83867->tx_id_delay << DP83867_RGMII_TX_CLK_DELAY_SHIFT));
>>>  
>>> -		phy_write_mmd_indirect(phydev, DP83867_RGMIIDCTL,
>>> -				       DP83867_DEVADDR, delay);
>>> +		phy_write_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +				       DP83867_RGMIIDCTL, delay);
>>>  
>>>  		if (dp83867->io_impedance >= 0) {
>>> -			val = phy_read_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
>>> -						    DP83867_DEVADDR);
>>> +			val = phy_read_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +						    DP83867_IO_MUX_CFG);
>>>  			val &= ~DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL;
>>>  			val |= (dp83867->io_impedance &
>>>  				DP83867_IO_MUX_CFG_IO_IMPEDANCE_CTRL);
>>>  
>>> -			phy_write_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
>>> -					       DP83867_DEVADDR, val);
>>> +			phy_write_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +					       DP83867_IO_MUX_CFG, val);
>>>  		}
>>>  	} else if (phy_interface_is_sgmii(phydev)) {
>>>  		phy_write(phydev, MII_BMCR,
>>>  			  BMCR_ANENABLE | BMCR_FULLDPLX | BMCR_SPEED1000);
>>>  
>>> -		phy_write_mmd_indirect(phydev, DP83867_RGMIICTL,
>>> -				       DP83867_DEVADDR, 0x0);
>>> +		phy_write_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +				       DP83867_RGMIICTL, 0x0);
>>>  
>>>  		val = DP83867_PHYCTRL_SGMIIEN |
>>>  		      DP83867_MDI_CROSSOVER_MDIX << DP83867_MDI_CROSSOVER |
>>> @@ -341,8 +341,8 @@ static int dp83867_config_init(struct phy_device *phydev)
>>>  				DP83867_IO_MUX_CFG_CLK_O_SEL_SHIFT;
>>>  		}
>>>  
>>> -		phy_modify_mmd_indirect(phydev, DP83867_IO_MUX_CFG,
>>> -				DP83867_DEVADDR, mask, val);
>>> +		phy_modify_mmd_indirect(phydev, DP83867_DEVADDR,
>>> +					DP83867_IO_MUX_CFG, mask, val);
>>>  	}
>>>  
>>>  	return 0;
>>> diff --git a/drivers/net/phy/micrel.c b/drivers/net/phy/micrel.c
>>> index 02d474c442..892df01d2e 100644
>>> --- a/drivers/net/phy/micrel.c
>>> +++ b/drivers/net/phy/micrel.c
>>> @@ -387,7 +387,7 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
>>>  		return 0;
>>>  
>>>  	if (matches < numfields)
>>> -		newval = phy_read_mmd_indirect(phydev, reg, MDIO_MMD_WIS);
>>> +		newval = phy_read_mmd_indirect(phydev, MDIO_MMD_WIS, reg);
>>>  	else
>>>  		newval = 0;
>>>  
>>> @@ -401,15 +401,15 @@ static int ksz9031_of_load_skew_values(struct phy_device *phydev,
>>>  				<< (field_sz * i));
>>>  		}
>>>  
>>> -	phy_write_mmd_indirect(phydev, reg, MDIO_MMD_WIS, newval);
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_WIS, reg, newval);
>>>  	return 0;
>>>  }
>>>  
>>>  static int ksz9031_center_flp_timing(struct phy_device *phydev)
>>>  {
>>>  	/* Center KSZ9031RNX FLP timing at 16ms. */
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_HI, 0, 0x0006);
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_FLP_BURST_TX_LO, 0, 0x1a80);
>>> +	phy_write_mmd_indirect(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_HI, 0x0006);
>>> +	phy_write_mmd_indirect(phydev, 0, MII_KSZ9031RN_FLP_BURST_TX_LO, 0x1a80);
>>>  
>>>  	return genphy_restart_aneg(phydev);
>>>  }
>>> @@ -447,27 +447,27 @@ static int ksz9031_config_rgmii_delay(struct phy_device *phydev)
>>>  		return 0;
>>>  	}
>>>  
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CONTROL_PAD_SKEW,
>>> -			       MDIO_MMD_WIS,
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_WIS,
>>> +			       MII_KSZ9031RN_CONTROL_PAD_SKEW,
>>>  			       FIELD_PREP(MII_KSZ9031RN_RX_CTL_M, rx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_TX_CTL_M, tx));
>>>  
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_RX_DATA_PAD_SKEW,
>>> -			       MDIO_MMD_WIS,
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_WIS,
>>> +			       MII_KSZ9031RN_RX_DATA_PAD_SKEW,
>>>  			       FIELD_PREP(MII_KSZ9031RN_RXD3, rx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_RXD2, rx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_RXD1, rx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_RXD0, rx));
>>>  
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_TX_DATA_PAD_SKEW,
>>> -			       MDIO_MMD_WIS,
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_WIS,
>>> +			       MII_KSZ9031RN_TX_DATA_PAD_SKEW,
>>>  			       FIELD_PREP(MII_KSZ9031RN_TXD3, tx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_TXD2, tx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_TXD1, tx) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_TXD0, tx));
>>>  
>>> -	phy_write_mmd_indirect(phydev, MII_KSZ9031RN_CLK_PAD_SKEW,
>>> -			       MDIO_MMD_WIS,
>>> +	phy_write_mmd_indirect(phydev, MDIO_MMD_WIS,
>>> +			       MII_KSZ9031RN_CLK_PAD_SKEW,
>>>  			       FIELD_PREP(MII_KSZ9031RN_GTX_CLK, tx_clk) |
>>>  			       FIELD_PREP(MII_KSZ9031RN_RX_CLK, rx_clk));
>>>  	return 0;
>>> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
>>> index 74381949b4..283e1a3d79 100644
>>> --- a/drivers/net/phy/phy.c
>>> +++ b/drivers/net/phy/phy.c
>>> @@ -819,24 +819,25 @@ int genphy_read_status(struct phy_device *phydev)
>>>  	return 0;
>>>  }
>>>  
>>> -static inline void mmd_phy_indirect(struct phy_device *phydev, int prtad,
>>> -					int devad)
>>> +static inline void mmd_phy_indirect(struct phy_device *phydev, int devad,
>>> +				    u16 regnum)
>>>  {
>>>  	/* Write the desired MMD Devad */
>>>  	phy_write(phydev, MII_MMD_CTRL, devad);
>>>  
>>>  	/* Write the desired MMD register address */
>>> -	phy_write(phydev, MII_MMD_DATA, prtad);
>>> +	phy_write(phydev, MII_MMD_DATA, regnum);
>>>  
>>>  	/* Select the Function : DATA with no post increment */
>>>  	phy_write(phydev, MII_MMD_CTRL, (devad | MII_MMD_CTRL_NOINCR));
>>>  }
>>>  
>>>  /**
>>> - * phy_read_mmd_indirect - reads data from the MMD registers
>>> - * @phy_device: phy device
>>> - * @prtad: MMD Address
>>> - * @devad: MMD DEVAD
>>> + * phy_read_mmd_indirect - Convenience function for reading a register
>>> + * from an MMD on a given PHY.
>>> + * @phydev: The phy_device struct
>>> + * @devad: The MMD to read from
>>> + * @regnum: The register on the MMD to read
>>>   *
>>>   * Description: it reads data from the MMD registers (clause 22 to access to
>>>   * clause 45) of the specified phy address.
>>> @@ -846,11 +847,11 @@ static inline void mmd_phy_indirect(struct phy_device *phydev, int prtad,
>>>   * 3) Write reg 13 // MMD Data Command for MMD DEVAD
>>>   * 3) Read  reg 14 // Read MMD data
>>>   */
>>> -int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
>>> +int phy_read_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum)
>>>  {
>>>  	u32 ret;
>>>  
>>> -	mmd_phy_indirect(phydev, prtad, devad);
>>> +	mmd_phy_indirect(phydev, devad, regnum);
>>>  
>>>  	/* Read the content of the MMD's selected register */
>>>  	ret = phy_read(phydev, MII_MMD_DATA);
>>> @@ -859,11 +860,12 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
>>>  }
>>>  
>>>  /**
>>> - * phy_write_mmd_indirect - writes data to the MMD registers
>>> - * @phy_device: phy device
>>> - * @prtad: MMD Address
>>> - * @devad: MMD DEVAD
>>> - * @data: data to write in the MMD register
>>> + * phy_write_mmd_indirect - Convenience function for writing a register
>>> + * on an MMD on a given PHY.
>>> + * @phydev: The phy_device struct
>>> + * @devad: The MMD to read from
>>> + * @regnum: The register on the MMD to read
>>> + * @val: value to write to @regnum
>>>   *
>>>   * Description: Write data from the MMD registers of the specified
>>>   * phy address.
>>> @@ -873,34 +875,33 @@ int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad)
>>>   * 3) Write reg 13 // MMD Data Command for MMD DEVAD
>>>   * 3) Write reg 14 // Write MMD data
>>>   */
>>> -void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>>> -				   u16 data)
>>> +void phy_write_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum,
>>> +			    u16 val)
>>>  {
>>> -	mmd_phy_indirect(phydev, prtad, devad);
>>> +	mmd_phy_indirect(phydev, devad, regnum);
>>>  
>>>  	/* Write the data into MMD's selected register */
>>> -	phy_write(phydev, MII_MMD_DATA, data);
>>> +	phy_write(phydev, MII_MMD_DATA, val);
>>>  }
>>>  
>>>  /**
>>> - * phy_modify_mmd_indirect - Convenience function for modifying a MMD register
>>> - * @phydev: phy device
>>> - * @prtad: MMD Address
>>> - * @devad: MMD DEVAD
>>> + * phy_modify_mmd_indirect - Convenience function for modifying a register on MMD
>>> + * @phydev: the phy_device struct
>>> + * @devad: the MMD containing register to modify
>>> + * @regnum: register number to modify
>>>   * @mask: bit mask of bits to clear
>>> - * @set: new value of bits set in @mask
>>> - *
>>> + * @set: new value of bits set in mask to write to @regnum
>>>   */
>>> -int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>>> -				   u16 mask, u16 set)
>>> +int phy_modify_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum,
>>> +			    u16 mask, u16 set)
>>>  {
>>>  	int ret;
>>>  
>>> -	ret = phy_read_mmd_indirect(phydev, prtad, devad);
>>> +	ret = phy_read_mmd_indirect(phydev, devad, regnum);
>>>  	if (ret < 0)
>>>  		return ret;
>>>  
>>> -	phy_write_mmd_indirect(phydev, prtad, devad, (ret & ~mask) | set);
>>> +	phy_write_mmd_indirect(phydev, devad, regnum, (ret & ~mask) | set);
>>>  
>>>  	return 0;
>>>  }
>>> diff --git a/include/linux/phy.h b/include/linux/phy.h
>>> index 509bf72de9..d96c4e97ab 100644
>>> --- a/include/linux/phy.h
>>> +++ b/include/linux/phy.h
>>> @@ -406,11 +406,11 @@ int phy_register_fixup(const char *bus_id, u32 phy_uid, u32 phy_uid_mask,
>>>  int phy_register_fixup_for_id(const char *bus_id,
>>>  		int (*run)(struct phy_device *));
>>>  int phy_scan_fixups(struct phy_device *phydev);
>>> -int phy_read_mmd_indirect(struct phy_device *phydev, int prtad, int devad);
>>> -void phy_write_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>>> -				   u16 data);
>>> -int phy_modify_mmd_indirect(struct phy_device *phydev, int prtad, int devad,
>>> -				    u16 mask, u16 set);
>>> +int phy_read_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum);
>>> +void phy_write_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum,
>>> +			    u16 val);
>>> +int phy_modify_mmd_indirect(struct phy_device *phydev, int devad, u32 regnum,
>>> +			    u16 mask, u16 set);
>>>  
>>>  static inline bool phy_acquired(struct phy_device *phydev)
>>>  {
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



