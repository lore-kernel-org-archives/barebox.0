Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvcG-0001Fe-Iy
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 16:03:07 +0000
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
 <20200928154247.15619-5-a.fatoum@pengutronix.de>
 <20200928160102.GA20189@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <d0fb2978-7053-40c2-92e1-5648c2841da8@pengutronix.de>
Date: Mon, 28 Sep 2020 18:03:04 +0200
MIME-Version: 1.0
In-Reply-To: <20200928160102.GA20189@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 5/7] mtd: nand-mxs: fix out-of-bounds write on 64-bit SoCs
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org



On 9/28/20 6:01 PM, Marco Felsch wrote:
> On 20-09-28 17:42, Ahmad Fatoum wrote:
>> Probing the nand_mxs device driver on 64 bit systems invokes
>> undefined behavior, because of an errant cast. Fix this.
>>
>> No change of behavior for 32-bit SoCs intended.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/mtd/nand/nand_mxs.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/mtd/nand/nand_mxs.c b/drivers/mtd/nand/nand_mxs.c
>> index 36b6e7ac224e..e2b6e2162076 100644
>> --- a/drivers/mtd/nand/nand_mxs.c
>> +++ b/drivers/mtd/nand/nand_mxs.c
>> @@ -2145,9 +2145,7 @@ static int mxs_nand_probe(struct device_d *dev)
>>  	if (mxs_nand_mtd)
>>  		return -EBUSY;
>>  
>> -	err = dev_get_drvdata(dev, (const void **)&type);
>> -	if (err)
>> -		type = GPMI_MXS;
>> +	type = (enum gpmi_type)device_get_match_data(dev);
> 
> Should we add:
> 
> 	if (!type)
> 		type = GPMI_MXS;
> 
> here?

(enum gpmi_type)0 is already GPMI_MXS. So that's a no-op.

> 	
>>  	nand_info = kzalloc(sizeof(struct mxs_nand_info), GFP_KERNEL);
>>  	if (!nand_info) {
>> -- 
>> 2.28.0
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
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
