Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f177.google.com ([209.85.216.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P0sXC-0006mF-06
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 09:01:07 +0000
Received: by qyk34 with SMTP id 34so1003700qyk.15
	for <barebox@lists.infradead.org>; Wed, 29 Sep 2010 02:01:04 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100929074846.GE23406@pengutronix.de>
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<20100929074846.GE23406@pengutronix.de>
Date: Wed, 29 Sep 2010 14:31:04 +0530
Message-ID: <AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
From: Gaurav Singh <gausinghnsit@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Failing to load Barebox Environment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

> Can you confirm that the read ends in your nand driver? Does your nand
> driver work properly?

I can confirm the NAND driver is working fine in other circumstances.
I have flashed a kernel zimage to NAND using DFU (at the kernel partition).
Copied this zimage to RAM and booted it using bootz.

LOG for Kernel booting :

barebox 2010.09.0-00003-ge5727b1-dirty (Sep 27 2010 - 17:18:50)

Board: STMicroelectronics EVB2065 with Cartesio Plus
NAND device: Manufacturer ID: 0x2c, Chip ID: 0x48 (Micron NAND 2GiB 3,3V 8-=
bit)
Scanning device for bad blocks
Malloc space: 0x00860000 -> 0x00e60000 (size  6 MB)
Stack space : 0x02000000 -> 0x02400000 (size  4 MB)
Open /dev/env0 error 2
no valid environment found on /dev/env0. Using default environment
Open /dev/defaultenv error 2
running /env/bin/init...
not found
EVB2065> ls
.      ..     dev
EVB2065>
EVB2065> erase /dev/nand0
EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)
EVB2065> nand -a /dev/nand0.kernel
EVB2065> nand -a /dev/nand0.barebox
EVB2065> dfu -V 1 -P 24 /dev/nand0.kernel.bb(barebox)
dfu: register alt0(barebox) with device /dev/nand0.kernel.bb
EVB2065> ls
.      ..     dev
EVB2065> cp /dev/nand0.kernel.bb /zimage
EVB2065> bootz /zimage
loaded zImage from /zimage with size 1188508
commandline: <NULL>
arch_number: 2131
Linux version 2.6.32.16-svn2136 (singhg@HUMMER) (gcc version 4.2.4
(STMicroelectronics/Linux Base 4.2.4-55)) #2 PREEMPT Fri Sep 17
11:27:42 IST 2010
CPU: ARMv6-compatible processor [410fb764] revision 4 (ARMv7), cr=3D00c5387f
CPU: VIPT aliasing data cache, VIPT aliasing instruction cache
Machine: STMicroelectronics Cartesio Plus STA2065, EVB2065
Memory policy: ECC disabled, Data cache writeback
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 65024
Kernel command line: root=3D/dev/ram0 console=3DttyAMA1,115200n8
init=3Dlinuxrc consoleblank=3D0
....

Kernel booting from this NAND partition is also working after reboot.

> Have you erased /dev/env0 before doing the dfu command?
I erased the entire NAND device (erase /dev/nand0) before writing
using the DFU command.

Also I'm padding the barebox_default_env file to 4096 (my NAND page
size), before flashing it.

Regards
Gaurav



On Wed, Sep 29, 2010 at 1:18 PM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> Hi Gaurav,
>
> On Wed, Sep 29, 2010 at 12:20:20PM +0530, Gaurav Singh wrote:
>> Hi all,
>> Currently I'm trying to load a barebox environment image from NAND
>> storage but can't load it correctly.
>>
>> I have given the path of my environment in the config :
>>
>> CONFIG_CONSOLE_FULL=3Dy
>> CONFIG_CONSOLE_ACTIVATE_FIRST=3Dy
>> # CONFIG_OF_FLAT_TREE is not set
>> CONFIG_PARTITION=3Dy
>> CONFIG_DEFAULT_ENVIRONMENT=3Dy
>> CONFIG_DEFAULT_ENVIRONMENT_PATH=3D"arch/arm/boards/cartesio-evb2065/env/=
bin"
>>
>> After registering the NAND device I prepared a couple of Bad Block
>> aware partitions :
>>
>> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED, "self_r=
aw");
>> dev_add_bb_dev("self_raw", "self0");
>> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED, "env_r=
aw");
>> dev_add_bb_dev("env_raw", "env0");
>>
>> On compilation I get a barebox environment image - barebox_default_env.
>> Flashed this image to the env0 partition via DFU -
>> dfu -V 1 -P 24 /dev/env0
>
> Have you tried doing a cp /dev/env0 /somefile at this point?
> Have you erased /dev/env0 before doing the dfu command?
>
>>
>> From host sent the barebox_default_env (the default_env file is page
>> alinged) via DFU to the NAND.
>>
>> The flashing worked fine.
>>
>> But now when I re-boot the system :
>>
>> barebox 2010.09.0-00003-ge5727b1-dirty (Sep 27 2010 - 17:18:50)
>>
>> Board: STMicroelectronics EVB2065 with Cartesio Plus
>> NAND device: Manufacturer ID: 0x2c, Chip ID: 0x48 (Micron NAND 2GiB 3,3V=
 8-bit)
>> Scanning device for bad blocks
>> Malloc space: 0x00860000 -> 0x00e60000 (size =A06 MB)
>> Stack space : 0x00850000 -> 0x00858000 (size 32 kB)
>>
>>
>> This system is stuck at this point. Investigating further - I see that
>> we are stuck at
>> in the common/environment.c
>> int envfs_load(char *filename, char *dir)
>> {
>> ...
>> buf =3D xmalloc(size);
>> buf_free =3D buf;
>> ret =3D read(envfd, buf, size); - Stuck here
>>
>> I'm wondering why this read is failing. Could the developers shed some
>> light on this ?
>
> Can you confirm that the read ends in your nand driver? Does your nand
> driver work properly?
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
