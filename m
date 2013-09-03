Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qa0-f48.google.com ([209.85.216.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGtbU-0004SR-Ds
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 16:37:22 +0000
Received: by mail-qa0-f48.google.com with SMTP id hu16so1434417qab.0
 for <barebox@lists.infradead.org>; Tue, 03 Sep 2013 09:36:56 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Darren Garnier <dgarnier@reinrag.net>
In-Reply-To: <20130903153148.GC22507@ns203013.ovh.net>
Date: Tue, 3 Sep 2013 12:36:54 -0400
Message-Id: <FFEDB8E9-EA6B-4CC9-AE62-7EB9D190017A@reinrag.net>
References: <7CB5E6E6-CC40-418F-ADB6-766DEC5D180A@reinrag.net>
 <20130903113942.GA22507@ns203013.ovh.net>
 <1E234F4F-BB0B-4144-9D85-C7975D686F50@reinrag.net>
 <20130903153148.GC22507@ns203013.ovh.net>
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
Subject: Re: [PATCH 2/4] AT91: move have_intensity_bit into board setup
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>


On Sep 3, 2013, at 11:31 AM, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 09:34 Tue 03 Sep     , Darren Garnier wrote:
>> 
>> On Sep 3, 2013, at 7:39 AM, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
>> 
>>> On 22:22 Mon 02 Sep     , Darren Garnier wrote:
>>>> Signed-off-by: Darren Garnier <dgarnier@reinrag.net>
>>> \why this is soc specific
>> 
>> Yes, the option is probably soc specific, but in the 9261 soc, we actually have 2 cpus. Both the 9261 and 9g10.
>> One of the few differences between these pin compatible chips is the way the LCD peripheral is wired.
>> 
>> My board has 2 varieties out in the wild.. one with the 9261 and the other with the 9g10 and because of the
>> way they are wired, the "intensity bit" is only appropriate to the 9261 cpu board.  Since you can't change this setting easily after you pass it off
>> to at91_add_device_lcdc, it's important that it only be set in the board file.
>> 
> 
> I need to check the datasheet but I'm enarly sure this is not board specific
> but SoC
> 


I guess that depends on what you mean by SoC. It is CPU specific to the 9261.  The 9g10 part (same SoC), doesn't use it.  I don't know if this change also effected the 9263/9g20 change.

Actually, I didn't notice it till now, but my patch is broken for at91sam9261ek  (swapped "has" for "have").  And didn't take into consideration the problem of the 9263 SoC.

Personally, I think it the whole bit should be removed and just change to the .lcd_wiring_mode with new constants of:

ATMEL_LCD_WIRING_BGR555
ATMEL_LCD_WIRING_RGB555

but this probably effects more boards and I'm more of a minimalist when I go mucking about in other code.

Anyway, this patch is necessary  in some form.. my 9g10 boards have funky colors with the .have_intensity_bit set.

Let me know which option you prefer and I'll rework it.


>> 
>>> 
>>> Best Regards,
>>> J.
>>>> ---
>>>> arch/arm/boards/at91sam9261ek/init.c     | 2 ++
>>>> arch/arm/mach-at91/at91sam9261_devices.c | 2 --
>>>> 2 files changed, 2 insertions(+), 2 deletions(-)
>>>> 
>>>> diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
>>>> index 00fc745..b420a48 100644
>>>> --- a/arch/arm/boards/at91sam9261ek/init.c
>>>> +++ b/arch/arm/boards/at91sam9261ek/init.c
>>>> @@ -223,6 +223,8 @@ static void ek_add_device_lcdc(void)
>>>> 
>>>> 	if (machine_is_at91sam9g10ek())
>>>> 		ek_lcdc_data.lcd_wiring_mode = ATMEL_LCDC_WIRING_RGB;
>>>> +	else
>>>> +		ek_lcdc_data.has_intensity_bit = true;
>>>> 
>>>> 	at91_add_device_lcdc(&ek_lcdc_data);
>>>> }
>>>> diff --git a/arch/arm/mach-at91/at91sam9261_devices.c b/arch/arm/mach-at91/at91sam9261_devices.c
>>>> index b522afb..ba52e56 100644
>>>> --- a/arch/arm/mach-at91/at91sam9261_devices.c
>>>> +++ b/arch/arm/mach-at91/at91sam9261_devices.c
>>>> @@ -218,8 +218,6 @@ void __init at91_add_device_lcdc(struct atmel_lcdfb_platform_data *data)
>>>> {
>>>> 	BUG_ON(!data);
>>>> 
>>>> -	data->have_intensity_bit = true;
>>>> -
>>>> #if defined(CONFIG_FB_ATMEL_STN)
>>>> 	at91_set_A_periph(AT91_PIN_PB0, 0);	/* LCDVSYNC */
>>>> 	at91_set_A_periph(AT91_PIN_PB1, 0);	/* LCDHSYNC */
>>>> -- 
>>>> 1.8.3.1
>>>> 
>>>> 
>>>> 
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/barebox
>> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
