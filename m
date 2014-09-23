Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XWGP8-0006Ps-Db
 for barebox@lists.infradead.org; Tue, 23 Sep 2014 03:04:38 +0000
Message-ID: <5420E2D9.9000006@atmel.com>
Date: Tue, 23 Sep 2014 11:02:49 +0800
From: Bo Shen <voice.shen@atmel.com>
MIME-Version: 1.0
References: <1410949295-30296-1-git-send-email-voice.shen@atmel.com>
 <1410949295-30296-8-git-send-email-voice.shen@atmel.com>
 <20140918061028.GY4992@pengutronix.de>
In-Reply-To: <20140918061028.GY4992@pengutronix.de>
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
Subject: Re: [PATCH 7/9] ARM: at91: add sama5d4 soc support #1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 09/18/2014 02:10 PM, Sascha Hauer wrote:
> On Wed, Sep 17, 2014 at 06:21:33PM +0800, Bo Shen wrote:
>> Signed-off-by: Bo Shen <voice.shen@atmel.com>
>> ---
>>
>> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
>> index 9f02807..5df7109 100644
>> --- a/arch/arm/mach-at91/sam9_smc.c
>> +++ b/arch/arm/mach-at91/sam9_smc.c
>> @@ -19,7 +19,7 @@
>>
>>   #define AT91_SAM9_SMC_CS_STRIDE		0x10
>>   #define AT91_SAMA5_SMC_CS_STRIDE	0x14
>> -#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
>> +#define AT91_SMC_CS_STRIDE      ((at91_soc_initdata.type == AT91_SOC_SAMA5D3 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
>
> I'm no fan of the 80 character limit, too, but this is really too long
> ;)

Use multi-line format, would it be acceptable?

> Sascha
>
>

Best Regards,
Bo Shen

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
