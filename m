Delivery-date: Wed, 05 Jan 2022 19:15:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5AoR-00C1vf-E6
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 19:15:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5AoP-0006Ez-S2
	for lore@pengutronix.de; Wed, 05 Jan 2022 19:15:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o/jUR8bkapJN0ptf4/MmPzAAMOKlYgmef1EyeA82Kus=; b=XI3tNGn5h/I2Ft
	VVH/7cjuCYMNB1CVSEHLnd5E5flbaOUqTIQVIdOPwzd4sqSv08rGg+aVgIG1gXGkKk+GL6Ayt9+UU
	hUQQ7Ll70uNY4B3wJN9IhVq/gAW01jcmKRA5t7DY+8yBPzWS8msCHvHU4BrOnBLa24TKfhbX5Fy16
	X53xWeH/ozCoqFNjd7lSnQymuuepK6k+m5wBLFIq9iivMKMZV6na3MidWNlhNgUUcphYCL71PAbS9
	+uKLCstkZ1guZH0NaMVQEKJnIKTRJ2fGDQ6BHso12cJYQ2eLC1uVHmHKPOeH1sm1sFrJbjoP9nBZp
	1GFGfFTMTMPHG9abSK9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5Amz-00FZRx-OC; Wed, 05 Jan 2022 18:13:33 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5Amt-00FZQs-0L
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 18:13:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641406402;
 bh=UyYMVfSgTxEHRUbyyM15beP8IX2+Xi71vz1EuSNVg6M=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=d63kZuE5LB+s/FCMKM8gv3XmBDX0u8zrWNd9ohWjk01/ypNKwr7Omu79pPmhCMf+4
 lbTfiq/I6Fq+vlXepo+xzP7Qa9Pmq1rIjr7uyzv9xxmFmnZ8TyFwSvPD7eUEj9jSfA
 QIl4Kay2EiXYp5HpN1c5r3lgZ89Oghc3T66nfeN0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.138] ([80.245.79.138]) by web-mail.gmx.net
 (3c-app-gmx-bs58.server.lan [172.19.170.142]) (via HTTP); Wed, 5 Jan 2022
 19:13:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
From: Frank Wunderlich <frank-w@public-files.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Date: Wed, 5 Jan 2022 19:13:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:nGuU7XXJYwMJ7PvjSrQviRogYfiK9hJtiL1dQbFceoBdcEczoGPS1pgefQJsmFYAMnOqi
 0IAFWbph/IM6LqruoGIzWVqcR+5PphmW3oXNQoL1wzgkSIrx8kG43uQzSY8aHWHqmqbBr51RJqjE
 CY7yqhsMvhmVqUginR2JrBbUQIl2WWUTKlbfEuDa7ZD8C+H3bhEtT/3VMr1F+RPyEmWIrLoVAMum
 9UHI1N77Xg+PjZ+HXzUpZgkWqy6RIw/pMDhx9OilfpsbeImGCWtLgTbReWMNAm1p1V9vgr1Yyq34
 ss=
X-UI-Out-Filterresults: notjunk:1;V03:K0:M8QxsRNrIxQ=:nbaK8yLcG9dJXCJ8irWllV
 HAMfjh8rklT9DLDDKesTNUEpbpD4uQ5ONONPwRzadMYJrcj4U663nRaZs4btSMEUoXd/A90j0
 dCajbJuESEkYYIE1rHFhJfQqJe4GssVnNqKOZwDypoXvhpOvm6YUbXOk6EGYoHCT+8VPjMYka
 QmZvVYsUAYZQBVRI7uusmzGmkeX+tbIZJ3Piiyg6IN63w9WOvQPS2onYGM1vjLvCdQDgxRztd
 thbME9cfw8hygC6bUOu6jYYaZ+QOMs8eGE75h5VJMgYMvltFVHo049zuZgxYU3D1g6UfEJixL
 5g5wx0QnbwcFYWYd70CzSTGWEnX4Dy6rLBf8XJSt74+wh2WZtuQP1btovPm/ySgTn3j2oD1RD
 n60MdvLVMPaUDSq6hEruigE67V5H0Rd0iFnqTn41+E1+oIvn6RzBoC8qwV1/EUgLOaaSsKSuq
 8e+G68egCOQ/PMCpgIZ4U0kHfIXgPEDltJgUpAgqsT/nzPlHo/GXlFlYQQ0JAYrl67eE4z1C0
 ESKxn7+0hhF4n5aKCk63EGhXI0v+xY4udkr/IcMEEl1ucS4zSGTmqxctDHMvGcGUuKKiNQSrD
 GWpxS6Ig0yMhsTXBalHxWCN3kvqPJMcf2MEg+7IFImTFVe4PILA4nTIgLddgMoQ3B/lQcJ3uo
 niJuyy8ABToTLnI2p74eAAIZi/muY/D8H8Cbgsnya3sTD79LpCVrdL8E8ZXCZWHtFcceSxU3K
 iJsnmwMaJVUrEsgjAyfCQcchC+SVT9XwnPKxkub3HnDTpUMP2pAabp4xTPD9BjFBvPh4QVlQe
 gSjSR22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_101327_409380_A889E5D7 
X-CRM114-Status: GOOD (  33.97  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
Subject: Aw: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); Unknown failure

Hi,

> Gesendet: Mittwoch, 05. Januar 2022 um 17:07 Uhr
> Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>, barebox@lists.infradead.org
> Betreff: Re: barebox extending boot-scripts
>
> Hi,
>
> On 05.01.22 16:20, Frank Wunderlich wrote:
> > Hi,
> >
> > i'm making my first steps and try to add more boot-scripts (to land in /env/boot)
> >
> > i added a scipt in
> >
> > arch/arm/boards/rockchip-rk3568-evb/defaultenv/mmc-linux
>
> This should be defaultenv/boot/mmc-linux instead.
>
> > and set
> >
> > DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]
> >
> > but if i boot the board /env/boot only contains the 2 default scripts
> >
> > barebox@Rockchip RK3568 EVB:/ ls /env/boot/
> > bnet    net
>
> Try ls -R /env, you should see mmc-linux at top-level with your
> current setup.
>
> > so maybe the dir/config-option i used is for defining variables only right?
>
> Top level is only meant for directories. There are directories for the different
> stuff, e.g. variables go into /env/nv/
>
> > should this point to an directory or a file?
>
> The config option is meant for use with external build systems, e.g. buildroot
> or PTXdist. For boards in-tree, you can add bbenv-y in the Makefile and call
>
>   // assuming directory is called defaultenv-myboard
>   defaultenv_append_directory(defaultenv_myboard);
>
> in the board code, see e.g. arch/arm/boards/embest-marsboard for an example.
>
> The reason for avoiding the config option for in-tree boards is that a single barebox
> configuration can build multiple boards in one go:
> extreme case: imx_v7_defconfig, which builds marsboard also builds more than 100 other images.
>
> The config option is global, but by explicitly calling defaultenv_append_directory,
> you can have board-specific environments.

will try this approach, thanks

> > i see this file which looks like the source of it
> >
> > ./defaultenv/defaultenv-2-base/boot/net
> >
> > I've put them there and they appear, but this is not board specific
>
> Ye, you can use this for debugging, but stuff upstreamed there must be generally
> applicable.
>
> > so if i later want to upstream one this is maybe not the right place.
>
> Boot scripts for publicly available evaluation kits are often not good candidates
> for upstreaming, because everybody using the EVKs has different thoughts on how to
> boot. The best way would be to use bootloader spec. It's one or more files you
> place at a known location that describe where your kernel and device tree are and
> what command line arguments to use and barebox can then automatically generate
> boot entries from all available bootloader spec files.
>
> See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> of how to set this up. This is what I'd recommend instead of writing your own
> scripts.
>
> > ./defaultenv/defaultenv-2-menu/menu/10-boot-all/net
> >
> > seems to be a menu entry, but have not yet figured out how i can define one to add my scripts too
> >
> > have not found anything for it in the documentation yet
>
> The default boot menu is populated with the boot entries extracted from
> the contents of $global.boot.default.

currently only net is listed there

barebox@Rockchip RK3568 EVB:/ echo $global.boot.default
net

but in /env/boot i have my 2 new scripts

barebox@Rockchip RK3568 EVB:/ ls /env/boot
bnet          mmc-linux     net           tftp-linux

> boot -m will display that menu. It will also include all bootloader spec files.
> If that suffices, you won't need to create your own menu. If you want though,
> check the help text of the menutree command.

needed to add this option, and now it prints only "net" and "back",not my own scripts ;(

do i need my scripts to ./defaultenv/defaultenv-2-menu/menu/10-boot-all/ too?

> To boot into the boot menu, set nv autoboot=menu. "Detect bootsources" will
> list boot sources known to the barebox boot command.

is this stored anywhere so that is persistent on next reboot?

btw. how does saveenv exactly work (which part/filename/offset is used)? sasha told me that device will be enumerated to the current boot device, but where on this device is the env stored?

> See magicvar for a listing of all magic variables, or refer to the documentation.
>
> > btw. is there a way to use ls with wildcard without printing the path?
> >
> > ls /mnt/sd.1/extlinux/
> > Image_5.16            Image_5.16-next.gz    Image_5.16.gz
> >
> > ls /mnt/sd.1/extlinux/Image*
> > /mnt/sd.1/extlinux/Image_5.16
> > /mnt/sd.1/extlinux/Image_5.16-next.gz
> > /mnt/sd.1/extlinux/Image_5.16.gz
> >
> > i want to list only files matching Image*, but without path....number of columns does not matter
>
> Yes, cd /mnt/sd.1/extlinux
>
> Cheers,
> Ahmad

mhm, simple ;) can i store the active directory to restore it after script was run (if needed, e.g. on error booting)?

pwd shows current directory, but i cannot put it into an var...the bash approach does not work

barebox@Rockchip RK3568 EVB:/mnt/sd.1/extlinux pwd
/mnt/sd.1/extlinux
barebox@Rockchip RK3568 EVB:/mnt/sd.1/extlinux thisdir=$(pwd)
barebox@Rockchip RK3568 EVB:/mnt/sd.1/extlinux echo $thisdir
$(pwd)
barebox@Rockchip RK3568 EVB:/mnt/sd.1/extlinux

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

