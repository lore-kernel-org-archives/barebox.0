Delivery-date: Thu, 06 Jan 2022 13:43:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5S7E-00Coor-Jl
	for lore@lore.pengutronix.de; Thu, 06 Jan 2022 13:43:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5S7C-0007bT-Fe
	for lore@pengutronix.de; Thu, 06 Jan 2022 13:43:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQj6lht0x+MCFJ8rhBcGCoXdFjEEE5/SEK4NYvndACM=; b=P9767hxVj0NerO
	rUURGMKWMbKYiU+dmt9nsqEDrfXsWBFMa7rWS0MONVskAwmOsHeEyH7piuPxpxjHv3gYJx3coIk2O
	Az0i1dDEpSHrwoRAz6H4r4IOCxaUIva8Ovc8euxDP4S9pj6zYcHFDTeK2IhnPdwe2vrNK/SZD4pz4
	uqxka869HUp10eJjuCtB/CBqLRt1UAUs9IFbdmfUatfTNbNteP8ybLg3dnTjMRrpQlgPIaUqyDnsn
	ohYQWqUspEpV/i8AlAhHhqgpJfSD2GSPWSZS6jYaHXn7hEr67mdFMT5zBhCrCMNphAYgfyEkHA4IA
	pC5c4/Id6o+5ymsgZoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5S5W-00029O-Kl; Thu, 06 Jan 2022 12:41:50 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5S5R-00028b-Jz
 for barebox@lists.infradead.org; Thu, 06 Jan 2022 12:41:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641472899;
 bh=xCkRHXl4t4nyoOaloZaP7BIJsZ5oWLktRDjal9R2yls=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ldz/5Ksgq3iWkIYYq9lEeM8un0UosHAYqLETNdSyHW0BMf4FeTK4x8A1uoZzTKUWR
 f61fb8aFDqIulXNE8io4DvYpDxC8i1Fmiwqa7fqOe9WOhfapZiZlGVt2iP2moUHXK7
 vrhoOLPES78BE/vjs2zJ1tItwyZHqEunaGFLNCp0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.51] ([80.245.79.51]) by web-mail.gmx.net
 (3c-app-gmx-bs51.server.lan [172.19.170.104]) (via HTTP); Thu, 6 Jan 2022
 13:41:39 +0100
MIME-Version: 1.0
Message-ID: <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Thu, 6 Jan 2022 13:41:39 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220106080838.GV6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:sCn1EAKThlq1af2R8oJVyKMP+ewIf7R6Y2w2cVSHM9Ylb2G04V2W/vhlBL58A2JN3ZM1z
 wlm2fwo15B/sxUzjiqt1kG/8HJerqLpL6ZQ8yFTi0m+24YxdzllO+L9xZKBsp08cdHpHimx7+zQW
 jcoziKmo95ZfRqVviytcXauo7aczmvsv8l2/uGLtf1dnKs4pI2doz2qKkqPqW0DdYFUePCUMV01I
 tJCSrSYsUY9b0oj6KN2a0R2LbfUrl4zmfGksei8UjDIMeuCJs02YbKtew/z2ZrdmnmxxqbTCV7/l
 K4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:4Q+A9IEAEDs=:jmeiyQhetQhf0+uNAMm6Mw
 jUI5GElK/DqH+mMhOFxIv34ydw5lrShlD8Yjfp4ByEYj+8jhGD8q8tdd5e8qT1ckPVQaRpNGL
 3plOkG4aw49ybK8Ymipc25AouSy8eqjEvkxx9sfC1oChnUpQX/jqLWxzYgKx4M6oChPv7eLn9
 sdQWNEitNN6wNqdouiMeYzap61oFDru9xVvm92a6iqkclt9stljKwlxTbtyADlnI3ef4RY0ZY
 kAnYk2AWosOzdkCl64a1xwkhOKaVXXiRkJXL8vZhYp1pu8rH6W16Y7zzekoWt0T2y4UkjC8GL
 SLXjUMZcljlCu1Pq3FperbZueMTRg01iUj9DsTHiXFgrI+45FhzmFwF0l/v8Gvb+cCCdi1GLX
 /BJEK1pw6NnayAbOtHYXWVtkZkLFILBVBx+PdpnUIFmENakzMcJFeFTqZ7M/05RcaBUkj5snY
 dtR+SqaAQHwPkW8Lfp0HwMBu6ZGjx15tftRh8HBVIQfMraSWP5mKuInlD0QpQh5qDNVT5gjL/
 R98CvAFl9K9Ti9YRSOX2dWWK6JqwI0ApNzr8UwStOc0K2iqc9/n5ZR/u+SVZwbYEcWEAaiKat
 X/CBqs6qrL+vH7EtKm94qH4R3f2sEM5I9zvo951wxMrrw8J4HJa7oQtk9iojJG3S+hFSLviDh
 26i0tIqnA+z7lL6Jk1YUkgodRgXidbOiZ8TruZzvP6F0gfhDFunOiJw9kF+oPJCOEeSR8avFS
 DUrXJWT6ZVFiX141FWDrc94CV9dmJ1N3iurAh5Aqmtar0ZO9gvTJB8SGsLyvLTmjoc5x03Z8z
 bUa6mpl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_044146_008270_3590402B 
X-CRM114-Status: GOOD (  44.39  )
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
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
thanks for answer. tried to strip mail it a bit down ;)
> Gesendet: Donnerstag, 06. Januar 2022 um 09:08 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> On Wed, Jan 05, 2022 at 07:13:22PM +0100, Frank Wunderlich wrote:

> > > > DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]
> > > The config option is meant for use with external build systems, e.g. buildroot
> > > or PTXdist. For boards in-tree, you can add bbenv-y in the Makefile and call
> > >
> > >   // assuming directory is called defaultenv-myboard
> > >   defaultenv_append_directory(defaultenv_myboard);
> > >
> > > in the board code, see e.g. arch/arm/boards/embest-marsboard for an example.

if i understand it right i need to create a dir

arch/arm/boards/rockchip-rk3568-evb/defaultenv-rk3568

with dirs nv (variables) and boot (bootscripts)

and add
bbenv-y += defaultenv-rk3568
in
arch/arm/boards/rockchip-rk3568-evb/Makefile

> > > Boot scripts for publicly available evaluation kits are often not good candidates
> > > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > > boot. The best way would be to use bootloader spec. It's one or more files you
> > > place at a known location that describe where your kernel and device tree are and
> > > what command line arguments to use and barebox can then automatically generate
> > > boot entries from all available bootloader spec files.

is extlinux (i used in uboot and conf-file is already present) supported here?

> > > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > > of how to set this up. This is what I'd recommend instead of writing your own
> > > scripts.

i do not fully understand the bootloader spec in the pdf as config file seems to be

/mnt/mmc0.4/loader/entries/stm32mp157c-dk2.conf

and then
boot -d mmc0.4

is run...so the path (loader/entries) seems to be fixed and all files there will be processed (which order)?
how is root appended (/dev/mmcblkXpY|uuid|...) when linux-appendroot is set to true?

sorry for asking dumb questions but i want to understand how to do it right and not only doing anything ;)

> > > > ./defaultenv/defaultenv-2-menu/menu/10-boot-all/net
> > > >
> > > > seems to be a menu entry, but have not yet figured out how i can define one to add my scripts too
> > > >
> > > > have not found anything for it in the documentation yet
> > >
> > > The default boot menu is populated with the boot entries extracted from
> > > the contents of $global.boot.default.
> >
> > currently only net is listed there
> >
> > barebox@Rockchip RK3568 EVB:/ echo $global.boot.default
> > net
> >
> > but in /env/boot i have my 2 new scripts
> >
> > barebox@Rockchip RK3568 EVB:/ ls /env/boot
> > bnet          mmc-linux     net           tftp-linux
> >
> > > boot -m will display that menu. It will also include all bootloader spec files.
> > > If that suffices, you won't need to create your own menu. If you want though,
> > > check the help text of the menutree command.
> >
> > needed to add this option, and now it prints only "net" and "back",not my own scripts ;(
> >
> > do i need my scripts to ./defaultenv/defaultenv-2-menu/menu/10-boot-all/ too?

do i need to propagate my own scripts somewhere to be listed in the bootmenu?

in cmdline i had tried this:

global.boot.default="net mmc-linux tftp-linux"
boot -m

which works, but how can i set this variable at compile-time?

is the right way creating a file
defaultenv/defaultenv-2-base/nv/boot.default (or arch/arm/boards/rockchip-rk3568-evb/defaultenv-rk3568/nv/boot.default)
with the content i want? so it looks like in the pdf above ("global.variable s, these are initialized from the
correspoding non-volatile nv.variable s")

> > > To boot into the boot menu, set nv autoboot=menu. "Detect bootsources" will
> > > list boot sources known to the barebox boot command.
> >
> > is this stored anywhere so that is persistent on next reboot?
>
> Variables beginning with 'nv.' are stored in the environment
> automatically.
>
> >
> > btw. how does saveenv exactly work (which part/filename/offset is
> > used)? sasha told me that device will be enumerated to the current
> > boot device, but where on this device is the env stored?
>
> Normally it's described in the device tree:
>
> 	environment-emmc {
> 		compatible = "barebox,environment";
> 		device-path = &environment_emmc;
> 	};
>
> The device-path property points to a partition on the eMMC:
>
> &sdhci {
> 	...
> 	partitions {
> 		compatible = "fixed-partitions";
>
> 		environment_emmc: partition@408000 {
> 			label = "barebox-environment";
> 			reg = <0x0 0x408000 0x0 0x8000>;
> 		};
> 	};
> };

thx, if i understand it right, then it's an offset/size defined in dts by reg-property. My board uses the same values which is iirc a bit above the 4M position (0x408000,4M=0x400000).
As i don't have a real partition there (first partition is at 8M), so i guess it is directly written (no file, like ENV_OFFSET in uboot). The 0x8000 should be the size (32kByte like ENV_SIZE), right?

> > > See magicvar for a listing of all magic variables, or refer to the documentation.
> > >
> > > > btw. is there a way to use ls with wildcard without printing the path?
>
> It works for example with:
>
> for i in /mnt/sd.1/extlinux/Image*; do basename $i b; echo $b; done

nice, that makes it a bit more usable like using numbers to choose

i=0;for f in /mnt/sd.1/extlinux/Image*; do basename $f b; echo "$i:$b";let i++; done

> But anyway, I'm with Ahmad here, you should rather look into bootloader
> spec. The shell is nice to have, but it's even nicer to not have to use
> it.

this is for testing multiple kernels with changing filenames (very dynamic process, e.g. using 1 kernel binary with multiple dtb) and to avoid adding a bootmenu entry everytime....this is not for end-user :)

and here scripting is imho the best way...this allows me to add extra params to cmdline too (like debug level,dumping offsets) without changing a distroboot config

for fixed kernels i have defined an extlinux.conf for uboot, but i'm unsure if barebox can use this file too. have not found anything about extlinux/syslinux in barebox yet.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

