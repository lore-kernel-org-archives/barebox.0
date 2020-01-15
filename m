Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr70134.outbound.protection.outlook.com
 ([40.107.7.134] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irjbt-0006eC-KH
 for barebox@lists.infradead.org; Wed, 15 Jan 2020 14:25:33 +0000
From: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Date: Wed, 15 Jan 2020 14:25:23 +0000
Message-ID: <DB8PR03MB549847FD100DF7192459527FFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
References: <r276.1579090214262888471.6UJY@lists.yoctoproject.org>
 <1579093362.13056.13.camel@pengutronix.de>
 <DB8PR03MB54983C09B221B210D29A26AAFE370@DB8PR03MB5498.eurprd03.prod.outlook.com>
 <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
In-Reply-To: <45b34e63-a9fd-2295-311c-393bf49fdf93@pengutronix.de>
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

thank you very much for your help.

> Are there any other error messages?
No, there is even more working than in thud where ubi0 fails but bootchooser works:
Hit m for menu or any other key to stop autoboot:    0
testing for update
ubi0: scanning is finished
ubi0 error: ubi_read_volume_table: the layout volume was not found
ubi0 error: ubi_attach_mtd_dev: failed to attach mtd0, error -22
failed to attach: Invalid argument
updating kernel
open volume: No such file or directory
updating oftree
open volume: No such file or directory
booting 'bootchooser'
booting 'mmc'

in zeus this looks like this:
Hit m for menu or any other key to stop autoboot:    1
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
ubi0: available PEBs: 7986, total reserved PEBs: 162, PEBs reserved for bad PEB handling: 156
updating kernel
open volume: No such file or directory
updating oftree
open volume: No such file or directory
bootchooser: Cannot get state 'state'
Nothing bootable found on 'bootchooser'
Nothing bootable found

> Can you copy the device tree snippet you use for defining state?
How/where do I find the complete devicetree? The only thing referring to barebox is this from the unchanged ksp-0663-layer:
&gpmi {
        pinctrl-names = "default";
        pinctrl-0 = <&pinctrl_gpmi_nand>;
        nand-on-flash-bbt;
        status = "okay";

        #address-cells = <1>;
        #size-cells = <1>;

        partition@0 {
                label = "barebox";
                reg = <0x0 0x400000>;
        };

        partition@1 {
                label = "barebox-environment";
                reg = <0x400000 0x100000>;
        };

        partition@2 {
                label = "root";
                reg = <0x500000 0x0>;
        };
};

Is there a problem because ubi works now and garbles the data in the flash?

> What does running the state command say?
barebox@Phytec phyCORE-i.MX6 Quad with NAND:/ state
registered state instances:

is empty in zeus, whereas thud returned: (backend: raw, path: /dev/eeprom0.update-eeprom)

Thank you and Regards

hu


-----Original Message-----
From: Ahmad Fatoum <a.fatoum@pengutronix.de> 
Sent: Wednesday, 15 January 2020 14:40
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; Enrico Joerns <ejo@pengutronix.de>; yocto@lists.yoctoproject.org
Cc: barebox@lists.infradead.org
Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'

On 1/15/20 2:26 PM, Hans-Ulrich Schlieben wrote:
> Hi Enrico,
> 
> thank you very much for your help. 
> I'm using barebox_2019.01.0-phy4-r7.0 now. In thud I used 
> barebox_2017.12.0 The image is built using my own ims layer which 
> depends on core-image-minimal LAYERDEPENDS_ims-layer = "core-image-minimal openembedded-layer phytec-layer"
> Its using the meta-phytec Layer and a custom layer from phytec named meta-ksp0663.
> Forgot to mention that rauc is used too, which moved from 1.1 to now 1.2.
> Just changed the LAYERSERIES_COMPAT to "zeus" here to check whether yocto zeus works.
> 
> Is there some info what to change in the devicetree and so on when moving to warrior/zeus?
> In thud this worked.

Are there any other error messages?
Can you copy the device tree snippet you use for defining state?
What does running the state command say?

(now again, but with CC-list intact)

> 
> Thank you
> Regards
> 
> hu
> 
>> -----Original Message-----
>> From: Enrico Joerns <ejo@pengutronix.de>
>> Sent: Wednesday, 15 January 2020 14:03
>> To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>; 
>> yocto@lists.yoctoproject.org
>> Cc: barebox@lists.infradead.org
>> Subject: Re: [yocto] #yocto bootchooser: Cannot get state 'state'
>>
>> Hi,
>>
>> this is mainly a barebox-related question, thus I'd suggest asking it on the barebox ML.
>>
>> [cc-ing barebox mailing list]
>>
>> On Wed, 2020-01-15 at 04:10 -0800, hu.schlieben@codewrights.de wrote:
>>> Hi,
>>>
>>> booting the new yocto zeus system manually by "boot mmc" works fine 
>>> but default bootchooser fails with:
>>>
>>> bootchooser: Cannot get state 'state'
>>> Nothing bootable found on 'bootchooser'
>>> Nothing bootable found
>>
>> Looks like the state node is missing in your device tree.
>> Which version of barebox do you use?
>> And from which layer / recipe?
>>
>>> Building the "same" image in yocto thud works fine. The boot 
>>> variables
>>> are:
>>>
>>> * BOOT_system0_.default: 3
>>> * BOOT_system1_.default: 3
>>> * allow_color: 0
>>> * autoboot_timeout: 3
>>> * boot.default: bootchooser
>>>   boot.watchdog_timeout: 0
>>>   bootchooser.default_attempts: 3
>>>   bootchooser.default_priority: 1
>>>   bootchooser.disable_on_zero_attempts: 0
>>>   bootchooser.reset_attempts:  (list: "power-on", "all-zero")
>>>   bootchooser.reset_priorities:
>>>   bootchooser.retry: 0
>>> * bootchooser.state_prefix: state.bootstate
>>> * bootchooser.system0.boot: mmc
>>> * bootchooser.system0.default_attempts: 3
>>> * bootchooser.system0.default_priority: 20
>>> * bootchooser.system1.boot: mmc1
>>> * bootchooser.system1.default_attempts: 3
>>> * bootchooser.system1.default_priority: 21
>>> * bootchooser.targets: system0 system1
>>>   bootm.appendroot: 0
>>> ...
>>>
>>
>> Regards, Enrico
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists
> .infradead.org%2Fmailman%2Flistinfo%2Fbarebox&amp;data=01%7C01%7Chu.sc
> hlieben%40codewrights.de%7Cb6b1eddf633845b6004308d799c06b3c%7C0974af9b
> 352b437cb606e9f242c0c227%7C0&amp;sdata=xYCzF1pdhTQArF5%2BHffieEkHNmdqX
> w%2BVo2EFWg%2FKOHY%3D&amp;reserved=0
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fwww.pengutronix.de%2F&amp;data=01%7C01%7Chu.schlieben%40codewrights.de%7Cb6b1eddf633845b6004308d799c06b3c%7C0974af9b352b437cb606e9f242c0c227%7C0&amp;sdata=%2FRUpJBBVrwI8cpLhou4AIoPnbiCjqjMBp5eo5VZorwc%3D&amp;reserved=0 |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
