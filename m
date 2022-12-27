Delivery-date: Tue, 27 Dec 2022 21:46:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAGps-00AqLL-LJ
	for lore@lore.pengutronix.de; Tue, 27 Dec 2022 21:46:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pAGpq-0007fS-J0
	for lore@pengutronix.de; Tue, 27 Dec 2022 21:46:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H1O6J6fUMp8VQYQ9dZ3ffjQQk7NAmMVThx+b2NuCCYg=; b=ZullS2/4ln+x0fViwWElxWiN8p
	xj7JwuAJAt75E9Hy/ZBbSHmp/RmHHhNT0YxP9eCbzQCvXLbXdLrhc1ArUp1aCzL0oLyBGlQskbqY1
	IS1QXtXZ0mYJtIZip4olL1wwIYsFmJI0ADOoHrDu3ooy3DAfbEWRnOqQFRg6iwyQm2KT5+OxppYgN
	YyxKElpa2Bjh9tEZYzHih6ULXqTivEsPjTe2q9i48heXQWygSaTAsr5gxj/Fbp4ocZrW1E6SNkVAm
	5PDpQ34kvjOkQcoMEaym0oXWwrSVBv/wWlMslZlajFZ1spJGVwwmZJA8GvnH5ezOHXl0zkhZKF9n7
	TgYn2FgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGo2-00GBad-OU; Tue, 27 Dec 2022 20:44:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAGkt-00G9dm-SC
	for barebox@lists.infradead.org; Tue, 27 Dec 2022 20:41:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pAGkn-0006ym-EG; Tue, 27 Dec 2022 21:40:53 +0100
Message-ID: <4b535e4b-688c-4837-4953-4de558c8cd1d@pengutronix.de>
Date: Tue, 27 Dec 2022 21:40:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org
References: <20221214105831.844421-1-a.fatoum@pengutronix.de>
 <Y6rIcs6xsavNUtot@ravnborg.org>
Content-Language: en-US
In-Reply-To: <Y6rIcs6xsavNUtot@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_124100_222716_6DA97A1E 
X-CRM114-Status: GOOD (  37.65  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLACK autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/11] ARM: at91: sama5d4: add basic Wifx L1 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 27.12.22 11:26, Sam Ravnborg wrote:
> Hi Ahmad,
> 
> On Wed, Dec 14, 2022 at 11:58:20AM +0100, Ahmad Fatoum wrote:
>> The Wifx L1 is a SAMA5D4 LoRaWAN gateway. It boots from NAND, but this
>> can be overridden by inserting a bootable SD-Card.
>>
>> This first port only provides second-stage SD-Card support.
> Nice.
> 
> I browsed the individual patches - they all looked good.

Thanks for the review. I have also resynced the Atmel NAND driver with
Linux to get support for the new EBI binding, but I'll send that out
as a separate patch once this is in. (If you need it for your hacking,
I can push it somewhere before that though).

> The DT file in patch 11 looks like a file that would be a good linux
> kernel candidate - but I guess this is for someone else to do.

It's on the bucket list, but first barebox, DistroKit and then eventually
upstreaming the kernel DT.

> Full series are:
> Acked-by: Sam Ravnborg <sam@ravnborg.org>

Thanks! I will add it onto v2.

> I look forward to the day where the remaining three sama5d boards are all
> multi-board and DT-enabled. This patch-set brings us a step closer.

I don't have the boards, that are not yet DT-enabled, but I guess due
diligence is done if we verify that the DT-enabled drivers work on some
other SAMA5 board, which already has DT support. Now, with the NAND
driver I ported for this, there remain three drivers that I have so
far not tested:

LCD, PWM and USB (Both Host/Gadget).

If you tell me, that all these already work just fine for some SAMA5 with
DT (or that they didn't work at all for SAMA5 without DT), I can send the
patch series switching the remaining boards to multi-image.

> Do you know if there is a way to read bootsource from an at91sam92XX
> CPU / ROMBOOT code?

I just observed that the info is in r4 on all SAMA5 SoCs. Maybe that's
the case for the older SoCs too? 

> There as nothing mentioned in the datasheet I looked at.

That seems to be the case everywhere. Registers read/written by ROM code
are seldom documented.

> As I have fired up my at91sam9263 board for the Xmas holidays I may
> try to play around with it a bit, but for now I have only SD-card boot working.

I am doing some holiday hacking too, but on a Rockchip RK3399. :)

Cheers,
Ahmad

> 
> 	Sam
> 
> 
> It enables
>> use of UART, I2C/EEPROM, Ethernet and SD-Card. For NAND use on SAMA5D4,
>> an updated Linux driver was ported to barebox.
>> This will follow separately.
>>
>> Ahmad Fatoum (11):
>>   ARM: at91: sama5: switch to nonnaked entry functions
>>   ARM: at91: sama5d4: add entry point helpers
>>   ARM: at91: sama5d4: enable for DT use
>>   net: macb: match atmel,sama5d4-gem compatible
>>   i2c: at91: extend for SAMA5D4 support
>>   eeprom: at24: add 24mac402/602 support
>>   driver: always ensure probe of RAM registered with mem_platform_driver
>>   common: deep-probe: don't build without CONFIG_OFDEVICE
>>   pinctrl: at91: make deep-probe compatible
>>   ARM: at91: make bootsource code generic to all SAMA5
>>   ARM: at91: SAMA5D4: add Wifx L1 support
>>
>>  arch/arm/boards/Makefile                      |   1 +
>>  .../boards/microchip-ksz9477-evb/lowlevel.c   |   6 +-
>>  .../arm/boards/sama5d27-giantboard/lowlevel.c |   4 +-
>>  arch/arm/boards/sama5d27-som1/lowlevel.c      |   4 +-
>>  arch/arm/boards/sama5d3_xplained/lowlevel.c   |   6 +-
>>  arch/arm/boards/sama5d4_wifx/Makefile         |   4 +
>>  arch/arm/boards/sama5d4_wifx/board.c          |  38 ++
>>  arch/arm/boards/sama5d4_wifx/lowlevel.c       |  18 +
>>  arch/arm/dts/Makefile                         |   1 +
>>  arch/arm/dts/at91-sama5d4_wifx_l1.dts         | 358 ++++++++++++++++++
>>  arch/arm/dts/sama5d4.dtsi                     |   9 +
>>  arch/arm/mach-at91/Kconfig                    |  11 +
>>  arch/arm/mach-at91/Makefile                   |   3 +-
>>  arch/arm/mach-at91/bootm-barebox.c            |   3 +-
>>  arch/arm/mach-at91/ddramc.c                   |   7 +
>>  arch/arm/mach-at91/include/mach/barebox-arm.h |  22 +-
>>  arch/arm/mach-at91/include/mach/cpu.h         |   1 -
>>  arch/arm/mach-at91/include/mach/ddramc.h      |   1 +
>>  .../mach-at91/include/mach/sama5_bootsource.h |   5 +
>>  arch/arm/mach-at91/sama5_bootsource.c         |  36 ++
>>  arch/arm/mach-at91/sama5d2.c                  |  15 -
>>  arch/arm/mach-at91/setup.c                    |   3 -
>>  common/Makefile                               |   2 +-
>>  drivers/eeprom/at24.c                         |   2 +
>>  drivers/i2c/busses/i2c-at91.c                 |  14 +-
>>  drivers/net/macb.c                            |   1 +
>>  drivers/pinctrl/pinctrl-at91.c                |  20 +-
>>  images/Makefile.at91                          |   4 +
>>  include/deep-probe.h                          |   7 +
>>  include/driver.h                              |  13 +-
>>  30 files changed, 571 insertions(+), 48 deletions(-)
>>  create mode 100644 arch/arm/boards/sama5d4_wifx/Makefile
>>  create mode 100644 arch/arm/boards/sama5d4_wifx/board.c
>>  create mode 100644 arch/arm/boards/sama5d4_wifx/lowlevel.c
>>  create mode 100644 arch/arm/dts/at91-sama5d4_wifx_l1.dts
>>  create mode 100644 arch/arm/dts/sama5d4.dtsi
>>  create mode 100644 arch/arm/mach-at91/sama5_bootsource.c
>>
>> -- 
>> 2.30.2
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



