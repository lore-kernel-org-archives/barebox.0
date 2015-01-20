Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDN9V-0007b0-GT
 for barebox@lists.infradead.org; Tue, 20 Jan 2015 00:58:42 +0000
Message-ID: <54BDA7C4.5030906@atmel.com>
Date: Tue, 20 Jan 2015 08:56:36 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1421661294-23345-1-git-send-email-voice.shen@atmel.com>
 <20150119113939.GD30554@ns203013.ovh.net>
In-Reply-To: <20150119113939.GD30554@ns203013.ovh.net>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let gmac auto detect phy id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On 01/19/2015 07:39 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:54 Mon 19 Jan     , Bo Shen wrote:
>> On the SAMA5D33 and SAMA5D35 the GMAC PHY ID is 1 while not 7.
>> So, let the GMAC auto detect phy id, or else hard code to 7,
>> it can not work on these two boards.
>>
>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>> ---
>>
>>   arch/arm/boards/sama5d3xek/init.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
>> index 49d2b37..0b83147 100644
>> --- a/arch/arm/boards/sama5d3xek/init.c
>> +++ b/arch/arm/boards/sama5d3xek/init.c
>> @@ -123,7 +123,7 @@ static void ek_add_device_nand(void) {}
>>   #if defined(CONFIG_DRIVER_NET_MACB)
>>   static struct macb_platform_data gmac_pdata = {
>>   	.phy_interface = PHY_INTERFACE_MODE_RGMII,
>> -	.phy_addr = 7,
>> +	.phy_addr = -1,
> IIRC the auto detect do not work on all board

On which board? Can you be more detail?
Thanks.

> NACK
>
> Best Regards,
> J.
>>   };
>>
>>   static struct macb_platform_data macb_pdata = {
>> --
>> 2.3.0.rc0
>>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
