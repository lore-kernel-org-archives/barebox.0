Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTdZV-0001ID-Ht
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 21:12:30 +0000
Received: by mail-wg0-f50.google.com with SMTP id x13so4565157wgg.9
 for <barebox@lists.infradead.org>; Mon, 15 Sep 2014 14:12:07 -0700 (PDT)
Message-ID: <54175623.2090309@gmail.com>
Date: Mon, 15 Sep 2014 23:12:03 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
 <1410766873-4393-5-git-send-email-s.hauer@pengutronix.de>
 <54169CA8.5030003@gmail.com> <20140915091324.GB4992@pengutronix.de>
In-Reply-To: <20140915091324.GB4992@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] ARM: mvebu: Allow multiple SoCs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09/15/2014 11:13 AM, Sascha Hauer wrote:
> On Mon, Sep 15, 2014 at 10:00:40AM +0200, Sebastian Hesselbarth wrote:
>> On 09/15/2014 09:41 AM, Sascha Hauer wrote:
>>> Now that the correct SoC specific memory fixup function is called
>>> we can allow to select multiple SoCs in Kconfig.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Sascha,
>>
>> thanks for the patches, I'll give them a try later. FWIW, this
>> patch allows to build Kirkwood together with Dove and Armada ones,
>> which will not work at all. Kirkwood is armv5, while the others
>> are armv7. There is no way you run a multiv7 barebox on kirkwood,
>> right?
> 
> Oh, I didn't realize that Kirkwood is armv5. It should work though.
> The only reason to additionally add a mvebu_v7_config is to make
> Thumb2 mode available to the SoCs that support it.

I did some initial testing on Kirkwood Guruplug. In mvebu_defconfig
you select CONFIG_AEABI=y resulting in

$ readelf -h barebox | grep Flags
  Flags:                             0x5000000, Version5 EABI

And failing on Kirkwood at some places with

Board: Globalscale Technologies Guruplug Server Plus
SoC: Marvell 6281 rev 3
mdio_bus: miibus0: probed
unable to handle paging request at address 0x01f0ebac
pc : [<03e0de20>]    lr : [<03e0de08>]
sp : 03fffeb0  ip : 03fffea8  fp : 00000001
r10: 03ff4000  r9 : 01000e00  r8 : 01003a84
r7 : 01f07324  r6 : 03e55f88  r5 : 01f0eaa4  r4 : 01f0eaa8
r3 : 00000000  r2 : 00000040  r1 : 00000104  r0 : 01f11094
Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
[<03e0de20>] (mdio_bus_probe+0x150/0x188) from [<03e0cb24>]
(device_probe+0x1c/0x70)
[<03e0cb24>] (device_probe+0x1c/0x70) from [<03e0cbbc>]
(match.part.2+0x44/0x50)
[<03e0cbbc>] (match.part.2+0x44/0x50) from [<03e0cda8>]
(register_device+0x118/0x168)
[<03e0cda8>] (register_device+0x118/0x168) from [<03e0d2e8>]
(phy_register_device+0x2c/0x94)
[<03e0d2e8>] (phy_register_device+0x2c/0x94) from [<03e0df9c>]
(mdiobus_register+0x144/0x18c)
[<03e0df9c>] (mdiobus_register+0x144/0x18c) from [<03e0ce8c>]
(platform_probe+0x10/0x14)
[<03e0ce8c>] (platform_probe+0x10/0x14) from [<03e0cb24>]
(device_probe+0x1c/0x70)
[<03e0cb24>] (device_probe+0x1c/0x70) from [<03e0cbbc>]
(match.part.2+0x44/0x50)
[<03e0cbbc>] (match.part.2+0x44/0x50) from [<03e0cc58>]
(register_driver+0x90/0xc8)
[<03e0cc58>] (register_driver+0x90/0xc8) from [<03e00ae8>]
(start_barebox+0x28/0x130)
[<03e00ae8>] (start_barebox+0x28/0x130) from [<03e3e3e8>]
(__start+0xf8/0x10c)
[<03e3e3e8>] (__start+0xf8/0x10c) from [<03e00004>]
(__bare_init_start+0x0/0x10)

[<03e3dce0>] (unwind_backtrace+0x0/0xa0) from [<03e240a8>] (panic+0x28/0x48)
[<03e240a8>] (panic+0x28/0x48) from [<03e3e220>] (do_exception+0x10/0x14)
[<03e3e220>] (do_exception+0x10/0x14) from [<03e3e2ac>]
(do_data_abort+0x2c/0x38)
[<03e3e2ac>] (do_data_abort+0x2c/0x38) from [<03e3dee8>]
(data_abort+0x48/0x60)

I first noticed that with orion-mdio disabled and on calling
devinfo. Looks like u64 dereferencing is definitely causing
this but I admit, I haven't looked at mdio.

Disabling CONFIG_AEABI gives

$ readelf -h barebox | grep Flags
  Flags:                             0x600, GNU EABI, software FP, VFP

which also works in a Multi-SoC image on Kirkwood.

>>>  #
>>>
>>> -if ARCH_KIRKWOOD
> 
> Instead of removing this I could turn this into
> 
> comment "Kirkwood based boards"

I am not too much into v5/v7 differences (or EABI FWIW). If
you say, a multi_v5+v7 image is fine, I am too.

I'll continue testing on !KIRKWOOD tomorrow evening.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
