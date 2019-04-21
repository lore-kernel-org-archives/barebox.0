Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hI8fO-0002TU-2I
 for barebox@lists.infradead.org; Sun, 21 Apr 2019 09:21:43 +0000
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
 <20190401101822.7392-11-a.fatoum@pengutronix.de>
 <20190402174908.GD18142@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <6fe79d99-8f0b-eb4f-e58b-0be9f986e0d5@pengutronix.de>
Date: Sun, 21 Apr 2019 11:21:38 +0200
MIME-Version: 1.0
In-Reply-To: <20190402174908.GD18142@ravnborg.org>
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
Subject: Re: [PATCH v3 10/15] images: at91: differentiate between first and
 second stage images
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hello Sam,

On 2/4/19 19:49, Sam Ravnborg wrote:
> Hi Ahmad.
> 
> On Mon, Apr 01, 2019 at 12:18:18PM +0200, Ahmad Fatoum wrote:
>> Incoming microchip-ksz9477-evb first stage will add one more entry point
>> for the first stage. As there is a little reason to use the same piggy
>> data for both images (BOOT.BIN, the first stage, is limited to 64K), have
>> CONFIG_AT91_LOAD_BAREBOX_SRAM decide which stage should be built.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/mach-at91/Kconfig |  2 +-
>>  images/Makefile.at91       | 12 +++++++++---
>>  2 files changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
>> index 8e1bf0629ab7..60f427d7d483 100644
>> --- a/arch/arm/mach-at91/Kconfig
>> +++ b/arch/arm/mach-at91/Kconfig
>> @@ -615,7 +615,7 @@ config AT91_BOOTSTRAP
>>  	select BOOTSTRAP
>>  
>>  config AT91_LOAD_BAREBOX_SRAM
>> -	bool "at91 load barebox in sram"
>> +	bool "at91 barebox image will be loaded into SRAM"
>>  	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
>>  	default y if SHELL_NONE
>>  
>> diff --git a/images/Makefile.at91 b/images/Makefile.at91
>> index acdb591d2452..3f1dd57f6c58 100644
>> --- a/images/Makefile.at91
>> +++ b/images/Makefile.at91
>> @@ -4,12 +4,18 @@
>>  
>>  pblb-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
>>  FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblb
>> -image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
>> +at91-barebox-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
>>  
>>  pblb-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
>>  FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblb
>> -image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
>> +at91-barebox-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
>>  
>>  pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
>>  FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
>> -image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
>> +at91-barebox-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
>> +
>> +ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
>> +image-y += $(at91-boot-bin-y)
>> +else
>> +image-y += $(at91-barebox-y)
>> +endif
> 
> I cannot follow what you do in the line "image-y += $(at91-boot-bin-y)".
> Could you try to elaborate.

I got the idea from images/Makefile.omap3, there multi-images are split
into two, separated by a Kconfig option, so you can either select building
all first stage multi-image bareboxes or build all second stages. This allows
separate entry points for each and enables use of ed04a7c3c ("pbl multiimage:
Allow to check image sizes") Sascha added.

To differentiate between first and second stage I used the
CONFIG_AT91_LOAD_BAREBOX_SRAM macro. Looking at it again, at91sam9x5ek and
at91sam9263ek should've had their entry points split as well for uniformity.

I talked about this with Sascha and his opinion is that we shouldn't have
stages at all. Everything needed for low level bootstrap (SDRAM init and
MMC access) should be made to fit into the PBL instead.

That way we can rename the PBL to BOOT.BIN and use the full barebox as
second stage. This means I'll need to strip down the drivers in v4..

Cheers
Ahmad


> 
> 	Sam
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
