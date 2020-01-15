Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjme-0004Hs-5u
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 14:36:40 +0000
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
Date: Wed, 15 Jan 2020 15:36:33 +0100
MIME-Version: 1.0
In-Reply-To: <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
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
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>, Enrico Joerns <ejo@pengutronix.de>, "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello Hans-Ulrich,

On 1/15/20 3:25 PM, Hans-Ulrich Schlieben wrote:
>> Can you copy the device tree snippet you use for defining state?
> Is there a problem because ubi works now and garbles the data in the flash?
> 
>> What does running the state command say?
> barebox@Phytec phyCORE-i.MX6 Quad with NAND:/ state
> registered state instances:
> 
> is empty in zeus, whereas thud returned: (backend: raw, path: /dev/eeprom0.update-eeprom)

According to the state command output under thud, your state is stored
on the EEPROM, not the NAND. Look for update-eeprom in your device tree.
There should also be an /dev/eeprom0.update-eeprom in barebox.
if not, try executing the drvinfo command and see if the driver has
probed the EEPROM.

Can you also paste the full barebox output from power-on till failure?

Your board should boot normally with upstream barebox, I think.
Can you try and see if v2020.01.0 suffers from the same problem?

Cheers
Ahmad

> 
> Thank you and Regards
> 
> hu
> 
> 
> -----Original Message-----
> From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
> Sent: Wednesday, 15 January 2020 14:40
> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico Joerns <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
> Cc: barebox@lists.infradead.org
> Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
> 
> On 1/15/20 2:26 PM, Hans-Ulrich Schlieben wrote:
>> Hi Enrico,
>>
>> thank you very much for your help. 
>> I'm using barebox_2019.01.0-phy4-r7.0 now. In thud I used 
>> barebox_2017.12.0 The image is built using my own ims layer which 
>> depends on core-image-minimal LAYERDEPENDS_ims-layer = "core-image-minimal openembedded-layer phytec-layer"
>> Its using the meta-phytec Layer and a custom layer from phytec named meta-ksp0663.
>> Forgot to mention that rauc is used too, which moved from 1.1 to now 1.2.
>> Just changed the LAYERSERIES_COMPAT to "zeus" here to check whether yocto zeus works.
>>
>> Is there some info what to change in the devicetree and so on when moving to warrior/zeus?
>> In thud this worked.
> 
> Are there any other error messages?
> Can you copy the device tree snippet you use for defining state?
> What does running the state command say?
> 
> (now again, but with CC-list intact)
> 
>>
>> Thank you
>> Regards
>>
>> hu
>>
>>> -----Original Message-----
>>> From: Enrico Joerns <ejo@pengutronix.de>
>>> Sent: Wednesday, 15 January 2020 14:03
>>> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; 
>>> yocto@lists.yoctoproject.org
>>> Cc: barebox@lists.infradead.org
>>> Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
>>>
>>> Hi,
>>>
>>> this is mainly a barebox-related question, thus I'd suggest asking it on the barebox ML.
>>>
>>> [cc-ing barebox mailing list]
>>>
>>> On Wed, 2020-01-15 at 04:10 -0800, hu.schlieben@codewrights.de wrote:
>>>> Hi,
>>>>
>>>> booting the new yocto zeus system manually by "boot mmc" works fine 
>>>> but default bootchooser fails with:
>>>>
>>>> bootchooser: Cannot get state 'state'
>>>> Nothing bootable found on 'bootchooser'
>>>> Nothing bootable found
>>>
>>> Looks like the state node is missing in your device tree.
>>> Which version of barebox do you use?
>>> And from which layer / recipe?
>>>
>>>> Building the "same" image in yocto thud works fine. The boot 
>>>> variables
>>>> are:
>>>>
>>>> * BOOT_system0_.default: 3
>>>> * BOOT_system1_.default: 3
>>>> * allow_color: 0
>>>> * autoboot_timeout: 3
>>>> * boot.default: bootchooser
>>>>   boot.watchdog_timeout: 0
>>>>   bootchooser.default_attempts: 3
>>>>   bootchooser.default_priority: 1
>>>>   bootchooser.disable_on_zero_attempts: 0
>>>>   bootchooser.reset_attempts:  (list: "power-on", "all-zero")
>>>>   bootchooser.reset_priorities:
>>>>   bootchooser.retry: 0
>>>> * bootchooser.state_prefix: state.bootstate
>>>> * bootchooser.system0.boot: mmc
>>>> * bootchooser.system0.default_attempts: 3
>>>> * bootchooser.system0.default_priority: 20
>>>> * bootchooser.system1.boot: mmc1
>>>> * bootchooser.system1.default_attempts: 3
>>>> * bootchooser.system1.default_priority: 21
>>>> * bootchooser.targets: system0 system1
>>>>   bootm.appendroot: 0
>>>> ...
>>>>
>>>
>>> Regards, Enrico
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
>> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=01%7C01%7Chu.sc
>> hlieben%40codewrights.de%7Cb6b1eddf633845b6004308d799c06b3c%7C0974af9b
>> 352b437cb606e9f242c0c227%7C0&amp;sdata=xYCzF1pdhTQArF5%2BHffieEkHNmdqX
>> w%2BVo2EFWg%2FKOHY%3D&amp;reserved=0
>>
> 
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
