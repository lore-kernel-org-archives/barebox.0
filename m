Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1baUfU-0006Am-7N
 for barebox@lists.infradead.org; Thu, 18 Aug 2016 21:16:05 +0000
Received: by mail-wm0-x22b.google.com with SMTP id f65so11958339wmi.0
 for <barebox@lists.infradead.org>; Thu, 18 Aug 2016 14:15:43 -0700 (PDT)
References: <7f89efef-2805-34d8-db7d-f3bc53d8e21a@gmail.com>
 <20160818073831.GL20657@pengutronix.de>
 <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
From: Peter Kardos <kardos.peter.sk@gmail.com>
Message-ID: <8b40b96f-0414-4566-1215-e1d6bb7abab1@gmail.com>
Date: Thu, 18 Aug 2016 23:15:33 +0200
MIME-Version: 1.0
In-Reply-To: <2b1f58b6-7d4b-5b85-240e-aa41c2e23c2e@gmail.com>
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
Subject: Re: AT91RM9200 hang in atmel_serial_putc
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

I may have something. It seems the memory (MMU?) gets "messed" up;

Reading the debug uart registers (v2015.07) gives reasonable results, like
     (gdb) x/32w 0xfffff200
     0xfffff200:    0x00000000    0x00000800    0x00000000 0x00000000
     0xfffff210:    0x00000000    0x40001a1a    0x00000000 0x00000000
     0xfffff220:    0x00000021    0x00000000    0x00000000 0x00000000
     0xfffff230:    0x00000000    0x00000000    0x00000000 0x00000000
     0xfffff240:    0x09290781    0x00000000    0x00000000 0x00000000

However the content from v2016.08 gives

0xFFFFF200    D78D7E1F    F1139ADE    413E0FE5    BBFB6DF2
0xFFFFF210    7D78666E    79CBDEA6    8FB2CB03    BEF6C2B7
0xFFFFF220    C9071D17    FA1EFA2D    C4BCD95E    27D73C7C
0xFFFFF230    727C3437    DFBDEBED    69C45C2A    7F5958F6
0xFFFFF240    834B237E    F8B8A211    1AC74D66    FAE06274

Peter

On 8/18/2016 10:00 AM, Peter Kardos wrote:
> Hi Sascha,
>
>> So you have a jtag debugger attached, does it support showing registers?
>> What is the value of uart->base? Is it correct?
>> Also you could compare the UART registers with the ones from a working
>> U-Boot/barebox.
> Yes, I have, it does. I've checked, and it seems to be correct, 
> pointing to 0xFFFFF200.
>
> However I didn't think to check the register offset and mask (it was 
> late).
>
>> Which instance of the UART are you using? It seems we have:
> I'm using the debug UART (USART0)...
>
>> Does atmel_serial_init_port() do everything correctly?
>> Finally it may be that the clock is disabled for some reason,
> Was thinking the same thing.
>
> I'll check it (compare reg dumps, console init) tonight and report my 
> findings.
>
>
> Cheers, Peter
>
> On 2016-08-18 09:38, Sascha Hauer wrote:
>> Hi Peter,
>>
>> On Thu, Aug 18, 2016 at 03:08:36AM +0200, Peter Kardos wrote:
>>> Greetings,
>>>
>>> I'm looking for a AT91 specialist that could help me debug barebox 
>>> v2016.08.
>>>
>>> I have a custom board running AT91RM9200 that came with a really old 
>>> custom
>>> u-boot (v1.1.4, no ubifs support)...
>>>
>>> The first bootloader I've ported (barebox v2015.07, using 
>>> AT91RM9200ek as
>>> template) almost works; I'm having trouble getting networking (ping, 
>>> dhcp)
>>> working with Micrel KSZ8721 phy. But it boots, works with the Flash, 
>>> etc...
>>> With hopes, that this (networking issue) is resolved with the latest 
>>> barebox
>>> release (using the same patchset and config) I've found (??) a another
>>> issue.
>>>
>>> At first it seemed the board just does not boot, after having a look 
>>> with a
>>> j-link it seems the board "hangs" in atmel_serial_putc().
>>> I've tried to look at the AT91RM9200 init (lowlevel, peripherals, 
>>> driver)
>>> and could not find any significant change (rewrite, define changes, 
>>> etc)...
>> So you have a jtag debugger attached, does it support showing registers?
>> What is the value of uart->base? Is it correct?
>> Also you could compare the UART registers with the ones from a working
>> U-Boot/barebox. Does atmel_serial_init_port() do everything correctly?
>> Finally it may be that the clock is disabled for some reason, then the
>> values written to the UART would never be shifted out.
>> Which instance of the UART are you using? It seems we have:
>>
>> static struct clk_lookup usart_clocks_lookups[] = {
>>     CLKDEV_CON_DEV_ID("usart", "atmel_usart0", &mck),
>>     CLKDEV_CON_DEV_ID("usart", "atmel_usart1", &usart0_clk),
>>     CLKDEV_CON_DEV_ID("usart", "atmel_usart2", &usart1_clk),
>>     CLKDEV_CON_DEV_ID("usart", "atmel_usart3", &usart2_clk),
>>     CLKDEV_CON_DEV_ID("usart", "atmel_usart4", &usart3_clk),
>> };
>>
>> The first clock seems to be always-on, but the others could be turned 
>> off.
>>
>> Sascha
>>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
