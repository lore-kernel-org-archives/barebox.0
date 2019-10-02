Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFZ9f-0002R1-Ki
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 07:34:37 +0000
References: <20190911145328.3246-1-m.felsch@pengutronix.de>
 <20191002072043.ujput2lroimm3yx6@pengutronix.de>
 <20191002072310.36lu4bxnao3eaulk@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <bb944030-e292-151b-26df-c548e7b502d8@phytec.de>
Date: Wed, 2 Oct 2019 09:34:31 +0200
MIME-Version: 1.0
In-Reply-To: <20191002072310.36lu4bxnao3eaulk@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: i.MX: phytec-som-imx6: phycore: fix updating pmic
 regulators
To: Sascha Hauer <s.hauer@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, s.christ@phytec.de, j.remmet@phytec.de

Hi Marco, Sascha,
On 02.10.19 09:23, Sascha Hauer wrote:
> Marco,
> 
> On Wed, Oct 02, 2019 at 09:20:43AM +0200, Sascha Hauer wrote:
>> +Cc Christian Hemp who is the author of b6bebb7aca
>>
>> On Wed, Sep 11, 2019 at 04:53:28PM +0200, Marco Felsch wrote:
>>> The PMIC is connected to i2c3 and not i2c1.
>>>
>>> Fixes: b6bebb7aca ("ARM: i.MX: phytec-som-imx6: phycore: Set BUCK mode to SYNC")
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>> ---
>>>   arch/arm/boards/phytec-som-imx6/board.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
>>> index 730115702b..38e5ede91a 100644
>>> --- a/arch/arm/boards/phytec-som-imx6/board.c
>>> +++ b/arch/arm/boards/phytec-som-imx6/board.c
>>> @@ -117,7 +117,7 @@ static int phycore_da9062_setup_buck_mode(void)
>>>   	struct i2c_adapter *adapter = NULL;
>>>   	struct i2c_client client;
>>>   	unsigned char value;
>>> -	int bus = 0;
>>> +	int bus = 2;
>>>   	int ret;
>>>   
>>>   	adapter = i2c_get_adapter(bus);
> 
> You could test it directly on b6bebb7aca instead of master. Is this
> change necessary there aswell or has the bus numbering changed in
> between?

this bus numbering changed with Marco's patch to use the upstream device tree.

ARM: dts: imx6: phycore: make use of upstream dts

The phyCORE-i.MX 6 uses just one i2c interface but on the phyBOARD-Mira two 
more i2c interfaces are used.

Stefan

> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
