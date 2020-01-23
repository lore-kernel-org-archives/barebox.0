Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-am6eur05on2132.outbound.protection.outlook.com
 ([40.107.22.132] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iueXy-0004Yv-EL
 for barebox@lists.infradead.org; Thu, 23 Jan 2020 15:37:32 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Thu, 23 Jan 2020 15:37:27 +0000
Message-ID: <DB8PR03MB54988F3BC05E2AA987775D76FE0F0@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
 <AM6PR03MB54938204A7FDEB6C5E93A749FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
 <cd5008fe-b93f-92c6-8f97-6f7adce32f0e@pengutronix.de>
 <DB8PR03MB5498C89CCD516C2AF1D457C7FE0D0@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <ec5a32e4-3317-9691-a286-0c7053f25f4c@pengutronix.de>
In-Reply-To: <ec5a32e4-3317-9691-a286-0c7053f25f4c@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Enrico Joerns <ejo@pengutronix.de>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Ahmad,

i asked phytec about barebox2019 and was told that it supports imx6ul and not imx6q. I should continue to use barebox2017.
So I use Barebox2017, which works in zeus with bootchooser.

Thank you very much for your great help.

hu

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
Sent: Tuesday, 21 January 2020 21:21
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico Joerns <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
Cc: barebox@lists.infradead.org
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'

Hi,

On 1/21/20 6:51 PM, Hans-Ulrich Schlieben wrote:
> Hi Ahmad,
> 
> thank you for the great help. There's a lot to learn for me here.
>> Does it come from the phytec git directly? Upstream barebox has this:
> The zeus image I build here includes layer meta-phytec branch zeus and a custom layer from phytec called meta-ksp0663.
> On the custom layer I created a new branch zeus and just renamed the barebox and barebox-targettools bbappend files from 2017 to 2019.
> 
> You are right about the missing state in barebox2019.01. 
> for barebox 2019 drvinfo just contains:
> state
> 
> drvinfo for barebox 2017 says:
> state 
>         imx6qdl_phytec_boot_state.19
> Does that mean that the driver is not loaded?

This means you have a state driver, but there was no device to bind to.

> At the barebox2019 version of_dump returns: Cannot find nodepath state 
> At the barebox2017 version of_dump returns a full subtree for imx6qdl_phytec_boot_state and the eeprom entry for state.
> 
> Looking into the 2017 barebox sources using      find ./ -iname "imx6qdl-phytec*.dtsi"  it finds imx6qdl-phytec-state.dtsi:
> This file does not exist in the 2019 barebox sources. There is only imx6ul-phytec-state.dtsi available.

Ha! That's it. The file is in upstream barebox, so no idea why Phytec dropped it.
That's probably a question for Phytec support.

Cheers
Ahmad

> 
> Now I will try the upstream version.
> 
> Thank you very much for your help.
> 
> Best Regards
> 
> hu
> 
>> -----Original Message-----
>> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> Sent: Monday, 20 January 2020 16:23
>> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico 
>> Joerns <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
>> Cc: barebox@lists.infradead.org
>> Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
>>
>> Hello,
>>
>> On 1/16/20 4:09 PM, Hans-Ulrich Schlieben wrote:
>>> Hi Ahmad,
>>>
>>> Thanks to your Mail I tested with barebox_2017.12.0-phy6.bb (thud used barebox_2017.12.0-phy4.bb) and this works in zeus too. 
>>>
>>>> According to the state command output under thud, your state is stored on the EEPROM, not the NAND. Look for update-eeprom in your device tree.
>>>> There should also be an /dev/eeprom0.update-eeprom in barebox.
>>> That seems right, when working the eeprom is written to on each boot.
>>> But I could not find any references to *eep* inside barebox in any layer.
>>
>> Does it come from the phytec git directly? Upstream barebox has this:
>> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgit
>> .pengutronix.de%2Fcgit%2Fbarebox%2Ftree%2Farch%2Farm%2Fdts%2Fimx6qdl-
>> phytec-state.dtsi%3Fh%3Dnext&amp;data=01%7C01%7Chu.schlieben%40codewr
>> ights.de%7Ce3ebad52e8684e97508408d79eaf7bdc%7C0974af9b352b437cb606e9f
>> 242c0c227%7C0&amp;sdata=DZxO9KqXifll8fJMkpncakmLGAzbR1uMXnSKziBVzLY%3
>> D&amp;reserved=0
>>
>> I would imagine, yours does to. You can check in the yocto build directory.
>> (If you have rm_work enabled, you might need RM_WORK_EXCLUDE += "your-barebox-recipe"
>> in your local.conf)
>>
>> Also try of_dump /state inside of barebox to see the device tree node.
>>
>> The reason, you haven't found it in the deploy/ device tree is that barebox modifies the kernel device tree on loading and adds the state nodes to it.
>>
>>>> if not, try executing the drvinfo command and see if the driver has probed the EEPROM.
>>>>>> Looks like the state node is missing in your device tree.
>>
>> Do you have the state driver enabled? drvinfo should tell you that.
>>
>> Cheers
>> Ahmad
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7Ce3ebad52e8684e97508408d79eaf7bdc%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=82oH7MjlqIb3kDd0NRfhXyWz%2FFYQqD9I7P9YhcfKbKc%3D&amp;reserved=0  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7Ce3ebad52e8684e97508408d79eaf7bdc%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=82oH7MjlqIb3kDd0NRfhXyWz%2FFYQqD9I7P9YhcfKbKc%3D&amp;reserved=0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
