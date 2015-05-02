Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-f171.google.com ([209.85.220.171])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yoe4b-0002H4-RX
 for barebox@lists.infradead.org; Sat, 02 May 2015 20:31:42 +0000
Received: by qkhg7 with SMTP id g7so67061589qkh.2
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 13:31:17 -0700 (PDT)
Message-ID: <5545335E.1000700@vanguardiasur.com.ar>
Date: Sat, 02 May 2015 17:28:14 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
MIME-Version: 1.0
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627830-17281-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <554500FC.2050607@vanguardiasur.com.ar>
In-Reply-To: <554500FC.2050607@vanguardiasur.com.ar>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 01/13] net: phy: Support Marvell 88E1318S PHY
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org



On 05/02/2015 01:53 PM, Ezequiel Garcia wrote:
> Hi Sebastian,
> 
> On 04/09/2015 10:03 PM, Sebastian Hesselbarth wrote:
>> This adds support for the Marvell 88E1318S Gigabit Ethernet PHY.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> ---
>> Cc: barebox@lists.infradead.org
>> ---
>>  drivers/net/phy/marvell.c | 31 +++++++++++++++++++++++++++++++
>>  1 file changed, 31 insertions(+)
>>
>> diff --git a/drivers/net/phy/marvell.c b/drivers/net/phy/marvell.c
>> index aaf9f53451f4..6409f14ae2e2 100644
>> --- a/drivers/net/phy/marvell.c
>> +++ b/drivers/net/phy/marvell.c
>> @@ -35,6 +35,9 @@
>>  #define MII_88E1121_PHY_MSCR_DELAY_MASK	\
>>  	(MII_88E1121_PHY_MSCR_RX_DELAY | MII_88E1121_PHY_MSCR_TX_DELAY)
>>  
>> +#define MII_88E1318S_PHY_MSCR1_REG	16
>> +#define MII_88E1318S_PHY_MSCR1_PAD_ODD	BIT(6)
>> +
>>  #define MII_88E1540_LED_PAGE		0x3
>>  #define MII_88E1540_LED_CONTROL		0x10
>>  
>> @@ -214,6 +217,25 @@ static int m88e1121_config_init(struct phy_device *phydev)
>>  	return 0;
>>  }
>>  
>> +static int m88e1318s_config_init(struct phy_device *phydev)
>> +{
>> +	u16 reg;
>> +	int ret;
>> +
>> +	ret = phy_write(phydev, MII_MARVELL_PHY_PAGE,
>> +			MII_88E1121_PHY_MSCR_PAGE);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	reg = phy_read(phydev, MII_88E1318S_PHY_MSCR1_REG);
>> +	reg |= MII_88E1318S_PHY_MSCR1_PAD_ODD;
>> +	ret = phy_write(phydev, MII_88E1318S_PHY_MSCR1_REG, reg);
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	return m88e1121_config_init(phydev);
>> +}
>> +
>>  static struct phy_driver marvell_phys[] = {
>>  	{
>>  		.phy_id		= MARVELL_PHY_ID_88E1121R,
>> @@ -225,6 +247,15 @@ static struct phy_driver marvell_phys[] = {
>>  		.read_status	= marvell_read_status,
>>  	},
>>  	{
>> +		.phy_id		= MARVELL_PHY_ID_88E1318S,
>> +		.phy_id_mask	= MARVELL_PHY_ID_MASK,
>> +		.drv.name	= "Marvell 88E1318S",
>> +		.features	= PHY_GBIT_FEATURES,
>> +		.config_init	= m88e1318s_config_init,
>> +		.config_aneg	= genphy_config_aneg,
>> +		.read_status	= marvell_read_status,
>> +	},
>> +	{
>>  		.phy_id		= MARVELL_PHY_ID_88E1543,
>>  		.phy_id_mask	= MARVELL_PHY_ID_MASK,
>>  		.drv.name	= "Marvell 88E1543",
>>
> 
> With this commit, the Openblocks A6 PHY is not brought up, and so
> network is broken.
> 
> I'll look into it (unless you have an idea),
> 

Hm.. the devicetree needs to specify the phy-mode:

diff --git a/dts/src/arm/kirkwood-openblocks_a6.dts b/dts/src/arm/kirkwood-openblocks_a6.dts
index fb9dc22..c53e37f 100644
--- a/dts/src/arm/kirkwood-openblocks_a6.dts
+++ b/dts/src/arm/kirkwood-openblocks_a6.dts
@@ -171,6 +171,7 @@
 &eth0 {
        status = "okay";
        ethernet0-port@0 {
+               phy-mode = "rgmii-id";
                phy-handle = <&ethphy0>;
        };
 };

However, network works really crappy even after this change (either in barebox or in Linux).
-- 
Ezequiel Garcia, VanguardiaSur
www.vanguardiasur.com.ar

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
