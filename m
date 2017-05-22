Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([46.4.235.150])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCmkQ-0007xW-KS
 for barebox@lists.infradead.org; Mon, 22 May 2017 12:47:45 +0000
From: Andreas Wilhelm <andreas.wilhelm@emlix.com>
References: <af0065c8-141d-dce0-11bf-1aca9c46d73c@emlix.com>
 <20170503121324.qguy2tsch7gepob7@pengutronix.de>
 <9d5f2e1b-c065-8969-14fb-3cf309b580d9@emlix.com>
 <20170508121857.zyag2yras6ljip5q@pengutronix.de>
 <7fd95ee0-b053-5935-0938-b17ed5572197@emlix.com>
Message-ID: <506afeb0-7434-b040-2943-4d304f47b6b8@emlix.com>
Date: Mon, 22 May 2017 14:47:18 +0200
MIME-Version: 1.0
In-Reply-To: <7fd95ee0-b053-5935-0938-b17ed5572197@emlix.com>
Content-Language: de-DE
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
Subject: Re: barebox-state setup
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 05/09/2017 10:26 AM, Andreas Wilhelm wrote:
> On 05/08/2017 02:18 PM, Sascha Hauer wrote:
>> On Fri, May 05, 2017 at 03:52:22PM +0200, Andreas Wilhelm wrote:
>>> On 05/03/2017 02:13 PM, Sascha Hauer wrote:
>>>> On Tue, May 02, 2017 at 03:24:10PM +0200, Andreas Wilhelm wrote:
>>>>> Hello,
>>>>>
>>>>> I am using barebox state to exchange data between barebox and linux. From barebox I can access and change the state without any problems. If I try to access the state using the barebox-state util included with dt-utils (v2017.03.0), I get the following error:
>>>>>
>>>>>> # barebox-state -g myvar
>>>>>> of_get_devicepath: no 'label' property found in /soc/aips-bus@02000000/spba-bus@02000000/ecspi@02008000/m25p80@0
>>>>>> Cannot find backend path in /state
>>>>> This problem does not occur when using version 2016.08.0 of dt-utils. However, in this version I experienced an other problem. Even with backend-storage-type set to "circular" barebox attempted to storte data in "direct" mode:
>>>>>
>>>>>> WARNING, no stridesize given although we use a direct file
>>>>>> write. Starting in degraded mode
>>>>>> Failed to initialize desired amount of direct buckets, only 1 of 3
>>>>>> succeeded
>>>>> Furthermore changing the state from within barebox worked just fine, while changing it using dt-utils from within a booted linux didn't.
>>>>>
>>>>> The barebox state is stored in NOR-flash and configured in barebox as followed:
>>>>>
>>>>>> state: state {
>>>>>>     magic = <0x27031977>;
>>>>>>     compatible = "barebox,state";
>>>>>>     backend-type = "raw";
>>>>>>     backend = &flash, "partname:barebox-state";
>>>> Please use "backend = &barebox_state;" with a partition like this:
>>>>
>>>> barebox_state: partition@0 {
>>>> 	reg = <0x0 0x40000>;
>>>> };
>>>>
>>>>> Within the linux kernel I use the following configuration
>>>> Note that barebox will rewrite the state node in the device tree passed
>>>> to Linux to make sure that both are consistent. You do not need to add a
>>>> state node to the Linux device tree manually. Unfortunately the
>>>> rewriting of the device node does not work correctly if you use the
>>>> "partname:" binding above in barebox.
>>>>
>>>> Sascha
>>>>
>>> Thanks for your fast reply.
>>>
>>> Removing the state definition from the linux device tree and changing
>>> the backend definition stopped barebox and dt-utils from complaining
>>> about a bad state backend. However, now I am facing a strange error.
>>>
>>> I am able to read and change the barebox state from within barebox and
>>> changes are reflected when reading from within barebox and linux. When
>>> changing the state using dt-utils, the change is persistent between
>>> reboots, but cannot be seen from within barebox.
>> First of all, what storage device are you using? Is it a real flash or
>> some EEPROM or NVRAM?
>>
>>> Example:
>>>
>>> // State myvar initialized with A by default
>>>
>>> state.myvar=B; state -s
>>> => Barebox: echo $state.myvar // myvar=B
>>> => Linux: barebox-state -g myvar // myvar=B
>>>
>>> barebox-state -s myvar=C
>>> => Barebox: echo $state.myvar // myvar=B
>>> => Linux: barebox-state -g myvar // myvar=C
>> This looks like a circular/noncircular mixup somewhere. Could you
>> hexdump the state partition (using the md command in barebox) to see if
>> the data is stored in circular or noncircular format? In circular format
>> you should see two copies of the same data directly after each other.
> It is stored in messed up circular-format:
>
> 00000000: 77 19 03 27 00 00 0c 00 6f c6 d5 7b 01 54 26 49    w..'....o..{.T&I
> 00000010: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 00000020: 02 2d fa 14 28 00 00 00 77 19 03 27 00 00 0c 00    .-..(...w..'....
> 00000030: 0a a1 69 c3 9f 54 8c 85 00 00 00 00 00 00 00 00    ..i..T..........
> 00000040: 01 00 00 00 00 00 00 00 02 2d fa 14 28 00 00 00    .........-..(...
>> Also the output of barebox-state with -v might contain some useful
>> information.
>>
>> Sascha
>>
>>
> adding DT alias:ethernet0: stem=ethernet id=0 node=/soc/aips-bus@02100000/ethernet@02188000
> adding DT alias:can0: stem=can id=0 node=/soc/aips-bus@02000000/flexcan@02090000
> adding DT alias:can1: stem=can id=1 node=/soc/aips-bus@02000000/flexcan@02094000
> adding DT alias:gpio0: stem=gpio id=0 node=/soc/aips-bus@02000000/gpio@0209c000
> adding DT alias:gpio1: stem=gpio id=1 node=/soc/aips-bus@02000000/gpio@020a0000
> adding DT alias:gpio2: stem=gpio id=2 node=/soc/aips-bus@02000000/gpio@020a4000
> adding DT alias:gpio3: stem=gpio id=3 node=/soc/aips-bus@02000000/gpio@020a8000
> adding DT alias:gpio4: stem=gpio id=4 node=/soc/aips-bus@02000000/gpio@020ac000
> adding DT alias:gpio5: stem=gpio id=5 node=/soc/aips-bus@02000000/gpio@020b0000
> adding DT alias:gpio6: stem=gpio id=6 node=/soc/aips-bus@02000000/gpio@020b4000
> adding DT alias:i2c0: stem=i2c id=0 node=/soc/aips-bus@02100000/i2c@021a0000
> adding DT alias:i2c1: stem=i2c id=1 node=/soc/aips-bus@02100000/i2c@021a4000
> adding DT alias:i2c2: stem=i2c id=2 node=/soc/aips-bus@02100000/i2c@021a8000
> adding DT alias:mmc0: stem=mmc id=0 node=/soc/aips-bus@02100000/usdhc@02190000
> adding DT alias:mmc1: stem=mmc id=1 node=/soc/aips-bus@02100000/usdhc@02194000
> adding DT alias:mmc2: stem=mmc id=2 node=/soc/aips-bus@02100000/usdhc@02198000
> adding DT alias:mmc3: stem=mmc id=3 node=/soc/aips-bus@02100000/usdhc@0219c000
> adding DT alias:serial0: stem=serial id=0 node=/soc/aips-bus@02000000/spba-bus@02000000/serial@02020000
> adding DT alias:serial1: stem=serial id=1 node=/soc/aips-bus@02100000/serial@021e8000
> adding DT alias:serial2: stem=serial id=2 node=/soc/aips-bus@02100000/serial@021ec000
> adding DT alias:serial3: stem=serial id=3 node=/soc/aips-bus@02100000/serial@021f0000
> adding DT alias:serial4: stem=serial id=4 node=/soc/aips-bus@02100000/serial@021f4000
> adding DT alias:spi0: stem=spi id=0 node=/soc/aips-bus@02000000/spba-bus@02000000/ecspi@02008000
> adding DT alias:spi1: stem=spi id=1 node=/soc/aips-bus@02000000/spba-bus@02000000/ecspi@0200c000
> adding DT alias:spi2: stem=spi id=2 node=/soc/aips-bus@02000000/spba-bus@02000000/ecspi@02010000
> adding DT alias:spi3: stem=spi id=3 node=/soc/aips-bus@02000000/spba-bus@02000000/ecspi@02014000
> adding DT alias:usbphy0: stem=usbphy id=0 node=/soc/aips-bus@02000000/usbphy@020c9000
> adding DT alias:usbphy1: stem=usbphy id=1 node=/soc/aips-bus@02000000/usbphy@020ca000
> adding DT alias:spi4: stem=spi id=4 node=/soc/aips-bus@02000000/spba-bus@02000000/ecspi@02018000
> adding DT alias:ipu0: stem=ipu id=0 node=/soc/ipu@02400000
> adding DT alias:rtc1: stem=rtc id=1 node=/soc/aips-bus@02100000/i2c@021a8000/da9062@58/rtc
> adding DT alias:rtc2: stem=rtc id=2 node=/soc/aips-bus@02000000/snvs@020cc000/snvs-rtc-lp@34
> adding DT alias:rtc0: stem=rtc id=0 node=/soc/aips-bus@02100000/i2c@021a0000/rtc@68
> adding DT alias:ipu1: stem=ipu id=1 node=/soc/ipu@02800000
> found state node /state:
> state {
>         magic = <0x27031977>;
>         compatible = "barebox,state";
>         backend-type = "raw";
>         backend = <0x71>;
>         backend-storage-type = "circular";
>         #address-cells = <0x1>;
>         #size-cells = <0x1>;
>         myval1 {
>                 type = "enum32";
>                 reg = <0x0 0x4>;
>                 names = "N", "Y";
>         };
>         myval2 {
>                 type = "enum32";
>                 reg = <0x4 0x4>;
>                 names = "A", "B";
>         };
>         myval3 {
>                 type = "enum32";
>                 reg = <0x8 0x4>;
>                 names = "D", "T", "B";
>         };
> };
> state: Read state from -1204245760 length 0
> state: Read state from -1204245760 length 65536
> state: Read state from -1204245760 length 131072
> state: New state registered 'state'
> state: Read state from PEB 0 global offset 40 length 0
> state: Read state from -1204245760 length 40
> state: Read state from PEB 1 global offset 40 length 0
> state: Read state from -1204245760 length 65576
> state: Read state from PEB 2 global offset 40 length 0
> state: Read state from -1204245760 length 131112
> state: Using bucket 0@0x00000000
>
> Could this be caused by the definition of #address-cells and #size_cells?
>
> Best regards
> Andreas
Hi,

> First of all, what storage device are you using? Is it a real flash or
> some EEPROM or NVRAM?

we are using an SPI NOR flash Micron N25Q128A13ESE40F. Are there any known issues with this kind of chips? And what could cause such behavior as shown above?

Best regards
Andreas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
