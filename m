Delivery-date: Mon, 10 Jul 2023 13:09:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIolX-005duN-3J
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 13:09:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qIolU-0001ha-Jo
	for lore@pengutronix.de; Mon, 10 Jul 2023 13:09:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GOsbf9GRmaTdDLI+LRGWrGG/IsB9k0ph6beauWY/unE=; b=hSuAq1ioVVnMiTobbBDJ8b6pto
	X6v4UcxbXaIU3OXcmhd2BBzDU9de7LH8AwXNgbZvKMW4IdjCj0T1aieY0u2nC8s1MAVszkrEsbYfn
	dyVTEKp2rBmbi62IvWaEtTpjXHUPAxGyVIRR1nQCepsYdcmJL+lYXIDCzf6FGGxJclqnbuHZmK0/X
	oA1GF7zZNGpEcvfY93Tea7UP+0JMjrl6JNRlzX5FyGHJAB4rtdgjPlxzSysBHXnX8fMwVDFV/G24F
	grZ5eOYHO2dfBr3sOataR3dhd6yOl84+nYBpV4aQBkvU2hbGGP9vexd0HE+keJCaVQF+3YJK3OTPE
	i/x/3nsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIokQ-00BQyz-2Z;
	Mon, 10 Jul 2023 11:08:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIokK-00BQxr-28
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 11:08:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qIokJ-0001Zt-7B; Mon, 10 Jul 2023 13:07:59 +0200
Message-ID: <31878823-caa3-ca36-e0fe-634396dbd5bf@pengutronix.de>
Date: Mon, 10 Jul 2023 13:07:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-6-m.felsch@pengutronix.de>
 <5639fc1b-c36e-dac6-3b23-5482a9bdbac2@pengutronix.de>
 <20230710105346.fpp4qqtl6v7cg3ny@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710105346.fpp4qqtl6v7cg3ny@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_040804_031544_2E4CE538 
X-CRM114-Status: GOOD (  28.97  )
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
Subject: Re: [PATCH 6/7] net: phy: at803x: add disable hibernation mode
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 12:53, Marco Felsch wrote:
> On 23-07-10, Ahmad Fatoum wrote:
>> On 10.07.23 08:36, Marco Felsch wrote:
>>> This commit ports Linux commit:
>>>
>>> | commit 9ecf04016c87bcb33b44e24489d33618e2592f41
>>> | Author: Wei Fang <wei.fang@nxp.com>
>>> | Date:   Thu Aug 18 11:00:54 2022 +0800
>>> |
>>> |     net: phy: at803x: add disable hibernation mode support
>>> |
>>> |     When the cable is unplugged, the Atheros AR803x PHYs will enter
>>> |     hibernation mode after about 10 seconds if the hibernation mode
>>> |     is enabled and will not provide any clock to the MAC. But for
>>> |     some MACs, this feature might cause unexpected issues due to the
>>> |     logic of MACs.
>>> |     Taking SYNP MAC (stmmac) as an example, if the cable is unplugged
>>> |     and the "eth0" interface is down, the AR803x PHY will enter
>>> |     hibernation mode. Then perform the "ifconfig eth0 up" operation,
>>> |     the stmmac can't be able to complete the software reset operation
>>> |     and fail to init it's own DMA. Therefore, the "eth0" interface is
>>> |     failed to ifconfig up. Why does it cause this issue? The truth is
>>> |     that the software reset operation of the stmmac is designed to
>>> |     depend on the RX_CLK of PHY.
>>> |     So, this patch offers an option for the user to determine whether
>>> |     to disable the hibernation mode of AR803x PHYs.
>>> |
>>> |     Signed-off-by: Wei Fang <wei.fang@nxp.com>
>>> |     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>>> |     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>
>> IMO we should just makes AT803X_DISABLE_HIBERNATION_MODE the default and
>> never hibernate the PHY. Let Linux worry about that.
> 
> Got your point and I'm not sure. At least for drivers I like the sources
> to bin in sync with Linux which allows porting fixes/features more
> easily.

You can keep code mostly as-is and just replace the DT property check
with a comment why we do this unconditionally.

> Also since the API (dt-bindings) are there, so why not just
> copy'n'paste from Linux?

We don't care much for power saving during barebox runtime. We turn on
whatever clocks are necessary and leave it to Linux to power down
unneeded peripherals. Same thing should apply to the PHY. If the PHY
has a power saving mode that breaks some MACs, why not just disable
the power saving mode? It's better for code size anyway.

Cheers,
Ahmad

> 
> Regards,
>   Marco
> 
>>> ---
>>>  drivers/net/phy/at803x.c | 24 ++++++++++++++++++++++++
>>>  1 file changed, 24 insertions(+)
>>>
>>> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
>>> index cc425c318f..d8a9c3588f 100644
>>> --- a/drivers/net/phy/at803x.c
>>> +++ b/drivers/net/phy/at803x.c
>>> @@ -32,6 +32,9 @@
>>>  #define AT803X_DEBUG_REG_5			0x05
>>>  #define AT803X_DEBUG_TX_CLK_DLY_EN		BIT(8)
>>>  
>>> +#define AT803X_DEBUG_REG_HIB_CTRL		0x0b
>>> +#define   AT803X_DEBUG_HIB_CTRL_PS_HIB_EN	BIT(15)
>>> +
>>>  /* AT803x supports either the XTAL input pad, an internal PLL or the
>>>   * DSP as clock reference for the clock output pad. The XTAL reference
>>>   * is only used for 25 MHz output, all other frequencies need the PLL.
>>> @@ -140,6 +143,20 @@ static int at803x_disable_tx_delay(struct phy_device *phydev)
>>>  				     AT803X_DEBUG_TX_CLK_DLY_EN, 0);
>>>  }
>>>  
>>> +static int at803x_hibernation_mode_config(struct phy_device *phydev)
>>> +{
>>> +	struct at803x_priv *priv = phydev->priv;
>>> +
>>> +	/* The default after hardware reset is hibernation mode enabled. After
>>> +	 * software reset, the value is retained.
>>> +	 */
>>> +	if (!(priv->flags & AT803X_DISABLE_HIBERNATION_MODE))
>>> +		return 0;
>>> +
>>> +	return at803x_debug_reg_mask(phydev, AT803X_DEBUG_REG_HIB_CTRL,
>>> +				     AT803X_DEBUG_HIB_CTRL_PS_HIB_EN, 0);
>>> +}
>>> +
>>>  static bool at803x_match_phy_id(struct phy_device *phydev, u32 phy_id)
>>>  {
>>>  	struct phy_driver *drv = to_phy_driver(phydev->dev.driver);
>>> @@ -160,6 +177,9 @@ static int at803x_parse_dt(struct phy_device *phydev)
>>>  	if (of_property_read_bool(node, "qca,disable-smarteee"))
>>>  		priv->flags |= AT803X_DISABLE_SMARTEEE;
>>>  
>>> +	if (of_property_read_bool(node, "qca,disable-hibernation-mode"))
>>> +		priv->flags |= AT803X_DISABLE_HIBERNATION_MODE;
>>> +
>>>  	if (!of_property_read_u32(node, "qca,smarteee-tw-us-1g", &tw)) {
>>>  		if (!tw || tw > 255) {
>>>  			phydev_err(phydev, "invalid qca,smarteee-tw-us-1g\n");
>>> @@ -341,6 +361,10 @@ static int at803x_config_init(struct phy_device *phydev)
>>>  	if (ret < 0)
>>>  		return ret;
>>>  
>>> +	ret = at803x_hibernation_mode_config(phydev);
>>> +	if (ret < 0)
>>> +		return ret;
>>> +
>>>  	return 0;
>>>  }
>>>  
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



