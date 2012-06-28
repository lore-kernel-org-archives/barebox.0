Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ud04.udmedia.de ([194.117.254.44] helo=mail.ud04.udmedia.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sk8bp-0007XK-JP
 for barebox@lists.infradead.org; Thu, 28 Jun 2012 06:53:47 +0000
Message-ID: <4FEBFF6C.6010304@crane-soft.de>
Date: Thu, 28 Jun 2012 08:53:32 +0200
From: "Peter Kuennemann@Crane-Soft" <pkue@crane-soft.de>
MIME-Version: 1.0
References: <4FBD05B8.40001@crane-soft.de>
 <20120524195543.GB30400@pengutronix.de> <4FBF5268.1040900@crane-soft.de>
 <20120531182724.GA30400@pengutronix.de>
In-Reply-To: <20120531182724.GA30400@pengutronix.de>
Reply-To: pkue@crane-soft.de
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
Subject: Re: Booting PhyTec PCM043/IMX35  from USB/SD-Card
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


  mit freundlichen Gr=FC=DFen,
  sincerely yours
  sinc=E8res salutations

Peter K=FCnnemann
Kappeler Strasse 207
D-40599 D=FCsseldorf

Mobil: +49 151 40511525
       +49 211 1663157

http://www.crane-soft.de

Am 31.05.2012 20:27, schrieb Sascha Hauer:
> Hi Peter,
> =

> On Fri, May 25, 2012 at 11:35:36AM +0200, Peter Kuennemann@Crane-Soft wro=
te:
>>
>>
>> To have kernel in flash and rootfs on MMC i tried bootargs as:
>>
>> ... root=3D/dev/mmcblk0p1 rootfstype=3Dext2 rootflags=3Dnoatime rw noini=
trd rootwait ..
>>
>> and it boots the kernel properly from flash up to:
>> ...
>> mmcblk0: mmc0:a95c SD01G 968 MiB     <=3D=3D Recognized the sd card
>>  mmcblk0: p1                         <=3D=3D and partion 1
>> ...
>> 1f00             256 mtdblock0 (driver?)
>> 1f01             128 mtdblock1 (driver?)
>> 1f02            2048 mtdblock2 (driver?)
>> 1f03           30336 mtdblock3 (driver?)
>> 1f04         1048576 mtdblock4 (driver?)
>> b300          992000 mmcblk0 driver: mmcblk
>>   b301          991585 mmcblk0p1                    <=3D=3D=3D Something=
 missing here?
>> No filesystem could mount root, tried:  ext2        <=3D=3D=3D
>> Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-bloc=
k(179,1) <=3D=3D=3D
>>
>> The mmc does contain a ext2 filesystem with the proper rootfs copied from
>> the jffs2.image that I mounted under Ubuntu as loop device. The kernel h=
as ext2 fs
>> support compiled in.
>>
>> The rootfs on the mmc is properly accessible when booting kernel and fla=
sh footfs
>> on the very same platform.
> =

> Has this been solved in the mean time? The above looks correct, I have
> no idea what's wrong.

The case has been partly solved now. I am able to boot from NAND and NOR bu=
t I cannot
access the MMC. Reason for the kernel messages ...(driver?) above was a mis=
sing device
"mxc_nand" in the kernel parms for mtdparts:

    mtdparts=3Dphysmap-flash.0:256k(barebox)ro,128k(bareboxenv),2M(kernel),=
-(root); \
    mxc_nand:256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)

However, I still cannot access the mmc from barebox. It would be enough to =
be able to
read the mmc. I want to be able to store kernel or rootfs image updates on =
the mmc
and flash them to either NAND or NOR after reboot to enable remote update s=
ervices.

Question: "How can I access the MMC from barebox (read only may be sufficie=
nt)

Regards, Peter

-- =

Barebox device list:

barebox@MKT.i357-CPU:/ ls -l /dev
crw-------         32 imx_iim_bank0
crw-------         32 imx_iim_bank1
crw-------         32 imx_iim_bank2
crw-------         32 imx_iim_bank3
crw-------         32 imx_iim_bank4
crw-------         32 imx_iim_bank5
crw-------         32 imx_iim_bank6
crw-------         32 imx_iim_bank7
cr-------- 4294967295 zero
crw-------  134217728 ram0
crw-------       8281 defaultenv
crw------- 4294967295 mem
crw-------         64 phy0
crw------- 1073741824 nand0
cr--------   33554432 nand_oob0
crw-------   33554432 nor0
crw-------     262144 self0
crw-------     131072 env0
crw-------     262144 nor0.barebox
crw-------     131072 nor0.bareboxenv
crw-------    2097152 nor0.kernel
crw-------   31064064 nor0.root
crw-------     262144 nand0.barebox
crw-------     131072 nand0.bareboxenv
crw-------    2097152 nand0.kernel
crw------- 1071251456 nand0.root
crw------- 1070071808 nand0.root.bb
crw-------    2097152 nand0.kernel.bb
crw-------     131072 nand0.bareboxenv.bb
crw-------     262144 nand0.barebox.bb



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
