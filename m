Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr70118.outbound.protection.outlook.com
 ([40.107.7.118] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6m6-00038Q-0K
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 15:09:38 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Thu, 16 Jan 2020 15:09:26 +0000
Message-ID: <AM6PR03MB54938204A7FDEB6C5E93A749FE360@AM6PR03MB5493.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
 <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
In-Reply-To: <f451a45a-a4bc-f285-0614-001cb3a57405@pengutronix.de>
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

Thanks to your Mail I tested with barebox_2017.12.0-phy6.bb (thud used barebox_2017.12.0-phy4.bb) and this works in zeus too. 

> According to the state command output under thud, your state is stored on the EEPROM, not the NAND. Look for update-eeprom in your device tree.
> There should also be an /dev/eeprom0.update-eeprom in barebox.
That seems right, when working the eeprom is written to on each boot.
But I could not find any references to *eep* inside barebox in any layer.

> if not, try executing the drvinfo command and see if the driver has probed the EEPROM.

> Can you also paste the full barebox output from power-on till failure?
Here is the zeus from start:
barebox 2019.01.0 #1 Thu Jan 16 12:17:51 UTC 2020


Board: Phytec phyCORE-i.MX6 Quad with NAND detected i.MX6 Quad revision 1.5 i.MX reset reason POR (SRSR: 0x00000001)
i.MX6 Quad unique ID: ee803c540f2359d4
mdio_bus: miibus0: probed
eth0: got preset MAC address: 50:2d:f4:1b:af:b1
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0xef, Chip ID: 0xd3 (Winbond W29N08GV), 1024MiB, page size: 2048, OOB size: 64 Bad block table found at page 524224, version 0x01 Bad block table found at page 524160, version 0x01
m25p80 flash@00: n25q128a13 (16384 Kbytes) imx-usb 2184200.usb@2184200.of: USB EHCI 1.00 imx-esdhc 2190000.usdhc@2190000.of: registered as mmc0
imx-ipuv3 2400000.ipu@2400000.of: IPUv3H probed
imx-ipuv3 2800000.ipu@2800000.of: IPUv3H probed
da9063 da90620: da9062 with id 62.22.ff.1a detected
netconsole: registered as netconsole-1
phySOM-i.MX6: Using environment in MMC
malloc space: 0x2fe7b860 -> 0x4fcf70bf (size 510.5 MiB)
mmc0: detected SD card version 2.0
mmc0: registered mmc0
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:    0
testing for update
ubi0: scanning is finished
ubi0: registering /dev/nand0.root.ubi
ubi0: attached mtd0 (name "nand0.root", size 1019 MiB) to ubi0
ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
ubi0: good PEBs: 8148, bad PEBs: 4, corrupted PEBs: 0
ubi0: user volume: 0, internal volumes: 1, max. volumes count: 128
ubi0: max/mean erase counter: 1/1, WL threshold: 65536, image sequence number: 1694817280
ubi0: available PEBs: 7986, total reserved PEBs: 162, PEBs reserved for bad PEB handling: 156 updating kernel open volume: No such file or directory updating oftree open volume: No such file or directory
bootchooser: Cannot get state 'state'
Nothing bootable found on 'bootchooser'
Nothing bootable found

Booting zeus with barebox 2017 it works and looks like that:
barebox 2017.12.0 #1 Wed Jan 15 16:36:29 UTC 2020


Board: Phytec phyCORE-i.MX6 Quad with NAND detected i.MX6 Quad revision 1.5
i.MX6 unique ID: ee803c540f2359d4
mdio_bus: miibus0: probed
eth0: got preset MAC address: 50:2d:f4:1b:af:b1
nand: ONFI flash detected
nand: NAND device: Manufacturer ID: 0xef, Chip ID: 0xd3 (Winbond W29N08GV), 1024MiB, page size: 2048, OOB size: 64 Bad block table found at page 524224, version 0x01 Bad block table found at page 524160, version 0x01
m25p80 flash@00: n25q128a13 (16384 Kbytes) imx-usb 2184200.usb: USB EHCI 1.00 imx-esdhc 2190000.usdhc: registered as 2190000.usdhc
da9063 da90620: da9062 with id 62.22.ff.1a detected
state: New state registered 'state'
state: Using bucket 0@0x00000000
netconsole: registered as netconsole-1
phySOM-i.MX6: Using environment in MMC
malloc space: 0x2fefb480 -> 0x4fdf68ff (size 511 MiB)
mmc0: detected SD card version 2.0
mmc0: registered mmc0
envfs: no envfs (magic mismatch) - envfs never written?
running /env/bin/init...

Hit m for menu or any other key to stop autoboot:    0
testing for update
ubi0: scanning is finished
ubi0 error: ubi_read_volume_table: the layout volume was not found
ubi0 error: ubi_attach_mtd_dev: failed to attach mtd0, error -22 failed to attach: Invalid argument updating kernel open volume: No such file or directory updating oftree open volume: No such file or directory booting 'bootchooser'
booting 'mmc'

So the lines
state: New state registered 'state'
state: Using bucket 0@0x00000000
are missing in barebox 2019.

> Your board should boot normally with upstream barebox, I think.
> Can you try and see if v2020.01.0 suffers from the same problem?
I do not know yet how to include an upstream package like barebox 2020.01.0. Do I have to rename the old recipe or download the recipe somewhere?

Thank you and Best Regards

hu

-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
Sent: Wednesday, 15 January 2020 15:37
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico Joerns <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
Cc: barebox@lists.infradead.org
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'

Hello Hans-Ulrich,

On 1/15/20 3:25 PM, Hans-Ulrich Schlieben wrote:
>> Can you copy the device tree snippet you use for defining state?
> Is there a problem because ubi works now and garbles the data in the flash?
> 
>> What does running the state command say?
> barebox@Phytec phyCORE-i.MX6 Quad with NAND:/ state registered state 
> instances:
> 
> is empty in zeus, whereas thud returned: (backend: raw, path: 
> /dev/eeprom0.update-eeprom)

According to the state command output under thud, your state is stored on the EEPROM, not the NAND. Look for update-eeprom in your device tree.
There should also be an /dev/eeprom0.update-eeprom in barebox.
if not, try executing the drvinfo command and see if the driver has probed the EEPROM.

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
> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico Joerns 
> <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
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
>> https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Flist
>> s 
>> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=01%7C01%7Chu.s
>> c 
>> hlieben%40codewrights.de%7Cb6b1eddf633845b6004308d799c06b3c%7C0974af9
>> b 
>> 352b437cb606e9f242c0c227%7C0&amp;sdata=xYCzF1pdhTQArF5%2BHffieEkHNmdq
>> X
>> w%2BVo2EFWg%2FKOHY%3D&amp;reserved=0
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Fwww.pengutronix.de%2F&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7C1257571ee267439a5d2408d799c85393%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=Z5c4T%2B5MOf1cbFRbqkbdCRgDp2lhJZPWzV9gf3sTDp4%3D&amp;reserved=0  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
