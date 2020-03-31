Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9nG-00022U-Qt
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 05:50:36 +0000
References: <20200330143915.663705-1-ahmad@a3f.at>
 <20200330143915.663705-6-ahmad@a3f.at>
 <20200331054526.GF27288@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <08a304f9-cfd3-706d-0c4e-7725c3f965f6@pengutronix.de>
Date: Tue, 31 Mar 2020 07:50:32 +0200
MIME-Version: 1.0
In-Reply-To: <20200331054526.GF27288@pengutronix.de>
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
Subject: Re: [PATCH 6/8] pinctrl: stm32: fix up st,package into stm32mp nodes
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

Hi,

On 3/31/20 7:45 AM, Sascha Hauer wrote:
> On Mon, Mar 30, 2020 at 04:39:13PM +0200, Ahmad Fatoum wrote:
>> Since Linux v5.1, the pinctrl driver can use the st,package property
>> if provided to validate whether the ball to be configured exists
>> on the package. Have barebox supply this property.
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>  arch/arm/dts/stm32mp151.dtsi    | 16 ++++++++
>>  drivers/pinctrl/pinctrl-stm32.c | 67 +++++++++++++++++++++++++++++++++
>>  2 files changed, 83 insertions(+)
>>
>> diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
>> index 8f8249dbc479..2a70a747e76e 100644
>> --- a/arch/arm/dts/stm32mp151.dtsi
>> +++ b/arch/arm/dts/stm32mp151.dtsi
>> @@ -37,4 +37,20 @@
>>  
>>  &bsec {
>>  	barebox,provide-mac-address = <&ethernet0 0x39>;
>> +
>> +	soc_package: soc-package@43 {
>> +		reg = <0x43 1>;
>> +		bits = <3 3>;
>> +		read-only;
>> +	};
>> +};
>> +
>> +&pinctrl {
>> +	nvmem-cells = <&soc_package>;
>> +	nvmem-cell-names = "soc-package";
>> +};
>> +
>> +&pinctrl_z {
>> +	nvmem-cells = <&soc_package>;
>> +	nvmem-cell-names = "soc-package";
>>  };
> 
> Why this detour over device tree? We already have get_cpu_package() and
> could use it here.

The pinctrl driver should also be compatible to the STM32 MCUs, which don't
have this property. I tried calling get_cpu_package at first, but the ifdefery
needed to keep the driver independent on CONFIG_ARCH_STM32MP looked ugly.

Making it a device property solves this nicely IMO.

Cheers
Ahmad

> 
> Sascha
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
