Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from submit-3.e-mind.com ([188.94.192.49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h7GWh-0003q4-Qq
 for barebox@lists.infradead.org; Fri, 22 Mar 2019 09:31:49 +0000
Received: from localhost (unknown [127.0.0.1])
 by submit-3.e-mind.com (Postfix) with ESMTP id 4EF7A830F44
 for <barebox@lists.infradead.org>; Fri, 22 Mar 2019 09:31:43 +0000 (UTC)
Received: from submit-3.e-mind.com ([127.0.0.1])
 by localhost (submit-3.e-mind.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LusIIR3MQsNm for <barebox@lists.infradead.org>;
 Fri, 22 Mar 2019 10:31:42 +0100 (CET)
Received: from qmail.e-mind.com (qmail34.e-mind.com [188.94.192.34])
 by submit-3.e-mind.com (Postfix) with SMTP id D0868830F40
 for <barebox@lists.infradead.org>; Fri, 22 Mar 2019 10:31:42 +0100 (CET)
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
 <201903211025.18488.jbe@pengutronix.de>
 <CAD_PvuYsX9jMjjS8tmbOO52397dMw-xegh54aUm2hU2wTUGJqw@mail.gmail.com>
 <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <3b4f6b4e-f591-e5fc-bbcd-9fc3136f70d0@eurek.it>
Date: Fri, 22 Mar 2019 10:31:41 +0100
MIME-Version: 1.0
In-Reply-To: <73e974ac-11a7-6ee7-ee1a-d5fab51e3b2f@eurek.it>
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
Subject: Re: STM32MP1 SoC support in latest Barebox
To: barebox@lists.infradead.org
Cc: "gianlucarenzi@eurek.it" <gianlucarenzi@eurek.it>

On 03/22/2019 09:07 AM, gianluca wrote:
> I need a __very quick__ answer to this subject, because a customer wants
> to migrate from a iMX28 based board to a STM32MP1.
>

Now I've just clone the git repo from pengutronix, and a mere:

> grep -r stm32mp1 *
> dts/Bindings/mailbox/stm32-ipcc.txt:- compatible:   Must be "st,stm32mp1-ipcc"
> dts/Bindings/mailbox/stm32-ipcc.txt:		compatible = "st,stm32mp1-ipcc";
> dts/Bindings/iio/adc/st,stm32-adc.txt:  "st,stm32mp1-adc-core"
> dts/Bindings/iio/adc/st,stm32-adc.txt:  and stm32h7 share a common ADC interrupt line. stm32mp1 has two separate
> dts/Bindings/iio/adc/st,stm32-adc.txt:  "st,stm32mp1-adc"
> dts/Bindings/iio/adc/st,stm32-dfsdm-adc.txt:up to 4 filters on stm32h7 or 6 filters on stm32mp1.
> dts/Bindings/iio/adc/st,stm32-dfsdm-adc.txt:  "st,stm32mp1-dfsdm"
> dts/Bindings/iio/adc/st,stm32-dfsdm-adc.txt:	Valid values are from 0 to 3 on stm32h7, 0 to 5 on stm32mp1.
> dts/Bindings/reset/st,stm32mp1-rcc.txt:Please see Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.txt
> dts/Bindings/pinctrl/st,stm32-pinctrl.txt:   "st,stm32mp157-pinctrl"
> dts/Bindings/pinctrl/st,stm32-pinctrl.txt:   "st,stm32mp157-z-pinctrl"
> dts/Bindings/interrupt-controller/st,stm32-exti.txt:    "st,stm32mp1-exti"
> dts/Bindings/watchdog/st,stm32-iwdg.txt:  - "st,stm32mp1-iwdg"
> dts/Bindings/watchdog/st,stm32-iwdg.txt:  is required only for st,stm32mp1-iwdg.
> dts/Bindings/watchdog/st,stm32-iwdg.txt:  "lsi", "pclk" for st,stm32mp1-iwdg
> dts/Bindings/rtc/st,stm32-rtc.txt:  - "st,stm32mp1-rtc" for devices compatible with stm32mp1.
> dts/Bindings/rtc/st,stm32-rtc.txt:- interrupts: rtc alarm interrupt. On stm32mp1, a second interrupt is required
> dts/Bindings/rtc/st,stm32-rtc.txt:		compatible = "st,stm32mp1-rtc";
> dts/Bindings/net/stm32-dwmac.txt:	       For MPU family should be "st,stm32mp1-dwmac" to select
> dts/Bindings/phy/phy-stm32-usbphyc.txt:- compatible: must be "st,stm32mp1-usbphyc"
> dts/Bindings/phy/phy-stm32-usbphyc.txt:			compatible = "st,stm32mp1-usbphyc";
> dts/Bindings/arm/stm32/stm32.txt:  st,stm32mp157
> dts/Bindings/arm/stm32/stm32-syscon.txt:                 - " st,stm32mp157-syscfg " - for stm32mp157 based SoCs,
> dts/Bindings/arm/stm32/stm32-syscon.txt:                 compatible = "st,stm32mp157-syscfg", "syscon";
> dts/Bindings/clock/st,stm32mp1-rcc.txt:- compatible: "st,stm32mp1-rcc", "syscon"
> dts/Bindings/clock/st,stm32mp1-rcc.txt:		compatible = "st,stm32mp1-rcc", "syscon";
> dts/Bindings/clock/st,stm32mp1-rcc.txt:dt-bindings/clock/stm32mp1-clks.h header and can be used in device
> dts/Bindings/clock/st,stm32mp1-rcc.txt:include/dt-bindings/reset-controller/stm32mp1-resets.h
> dts/src/arm/stm32mp157-pinctrl.dtsi:			compatible = "st,stm32mp157-pinctrl";
> dts/src/arm/stm32mp157-pinctrl.dtsi:			compatible = "st,stm32mp157-z-pinctrl";
> dts/src/arm/stm32mp157c-ed1.dts:#include "stm32mp157c.dtsi"
> dts/src/arm/stm32mp157c-ed1.dts:#include "stm32mp157-pinctrl.dtsi"
> dts/src/arm/stm32mp157c-ed1.dts:	compatible = "st,stm32mp157c-ed1", "st,stm32mp157";
> dts/src/arm/stm32mp157c-ev1.dts:#include "stm32mp157c-ed1.dts"
> dts/src/arm/stm32mp157c-ev1.dts:	compatible = "st,stm32mp157c-ev1", "st,stm32mp157c-ed1", "st,stm32mp157";
> dts/src/arm/stm32mp157c.dtsi:#include <dt-bindings/clock/stm32mp1-clks.h>
> dts/src/arm/stm32mp157c.dtsi:#include <dt-bindings/reset/stm32mp1-resets.h>
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-dfsdm";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-adc-core";
> dts/src/arm/stm32mp157c.dtsi:				compatible = "st,stm32mp1-adc";
> dts/src/arm/stm32mp157c.dtsi:				compatible = "st,stm32mp1-adc";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-rcc", "syscon";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-exti", "syscon";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp157-syscfg", "syscon";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-cryp";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-dwmac", "snps,dwmac-4.20a";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-iwdg";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-usbphyc";
> dts/src/arm/stm32mp157c.dtsi:			compatible = "st,stm32mp1-rtc";

reveals that __NO_SUPPORT__ for this processor at all.Only device tree 
added from Kernel I suppose...

That's a real pity. At the moment I have to switch over to UBoot... :-(

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
