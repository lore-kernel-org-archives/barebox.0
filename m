Delivery-date: Sat, 15 Jan 2022 14:49:40 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8jR6-002yqO-Ja
	for lore@lore.pengutronix.de; Sat, 15 Jan 2022 14:49:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8jR4-0002H6-LF
	for lore@pengutronix.de; Sat, 15 Jan 2022 14:49:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xnNjTMIdfQWfm7qKpslZ3soLl86cGhGnXqw0XsG3Pug=; b=HZbMhI+s2sexV4
	BxzVZiDecozFbu18n8eTAUj7ZrISHbah87lzsRSLxaFDKYz9ekYman8cNWAlQTRPsVSvioyLN8FRr
	RafhaI8b3A8ek4az6akG58vWTXL1B1WlR4yLtYK7jAa0UMwNcmd206w5rBUB1r/JU9T13W7eFhbq0
	2otgFHCesE+AZIipitOcsR78oW/Sa0flBAlMXDyGlycOHXB6Jt2uL4HuAUGtElXmRa/F41XuGpHa8
	ko1gB2jGLvOFbttSqP+xVMMzwf9wP4Uoim93hhTY/OlC54/j5TR/l59Aw/A6UGjvM34jdia5eS0v1
	WIBSdWcVWCBQUveelr7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8jPS-00B8Y9-IP; Sat, 15 Jan 2022 13:47:58 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8jPM-00B8Wx-EU
 for barebox@lists.infradead.org; Sat, 15 Jan 2022 13:47:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1642254462;
 bh=Lnby/HIXU+1IdrBU2fkjrB+i9qIZPySe/h4LSf4d9VE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=TWpqJe9ZVrtNFAVemRYokdKwXjbZAN68C9nDW4m5bX+thWBAHen0jtagYkHT9eJIK
 8mR/Ufqvqo9YaoYDW0l1UX6Daihj5Y/AnpKHB7d8BTLIWW3d3mgHDQYrjBYepuL9QO
 lOibLflN3NnBuJjujjKEdCPzXiJM3SXBCusn0zxo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [157.180.225.197] ([157.180.225.197]) by web-mail.gmx.net
 (3c-app-gmx-bap71.server.lan [172.19.172.171]) (via HTTP); Sat, 15 Jan 2022
 14:47:42 +0100
MIME-Version: 1.0
Message-ID: <trinity-dcf71a1e-4856-486b-a9a5-74ed6a82fd34-1642254462656@3c-app-gmx-bap71>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Sat, 15 Jan 2022 14:47:42 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220110094214.GG6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
 <20220107130751.GW6003@pengutronix.de>
 <trinity-f8991630-17eb-4ae0-9dfa-9a66bc41b02e-1641573741990@3c-app-gmx-bs48>
 <20220110094214.GG6003@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:8t7xevntZNmFQy7G3TgzS3DH6n/khvdCg7h740dBZqSrg1UquR1mYVXweHCUoKiZLZh3m
 6vY4y9jDi6Fu+jnfSDRXkIGqAGTGjNH70a3yybWTGzolD2xyPZLyVO4SpQIu9tye9eUk6dvNaPPG
 FXqLCJtIPEJejiNY7sWjAADE4dpYwiiCEu4TG+LJvzdrr8Fl/Yz+F6g0B2HmtmraJCow7O5ggtpf
 Cnld/Ghmht2ZIXnIbJJfHPEpJhfSi/rFEfSIecQvUUDj+Yrfl4XlcnYUKk+DOSTGkv7Z46KsD7hk
 vw=
X-UI-Out-Filterresults: notjunk:1;V03:K0:7eIkLTYUdWg=:ypNhWJLSELTKD0iezvYFwz
 HAsGEumBxOO58+tI5a79qM3R6/WA/2Mm52WZ5gOXFlXIekNwc+Y2copaXSRUkEYZigWFfvubq
 c201hTiaQWBMha/PoVokW2sp2wCSsHqpzqm7L94TDUQVZljxqdrDPaKropiC8izdL+D6Ta2Vw
 ISiCsJUb8KEoV5IK3THq2Qq2+8B7mv+5MEid4+0/wA8FdjWvLTuLfIGGH4Pg6OTBrMUkHHA/B
 QFZvxKQH7iikVw8ln41fE55w4p/eeUjAkRc3TkpzP9cr/l7xkvGhJbXnIhsin1+mu1IqiXV1X
 ibD/AYj74WFL+Sl1hDmySzMY3dGdvz/AZNSldu7cAzZoBgBZ6Laq3RRgkkd/XEAh+N26xpl6j
 qQK923d70p1QpznAEF9WjIV8QeuVOCQkIC+RuuC2oUPg1eXyEbKQlKfCqWXKtX094xhp/g/mt
 sjUkhml+oZ04r02Bqu3PpqhlIxLZxDNB7VBmNekzmOwtow5+uYtzjZTyyAMu+iPNVTOXR/7h3
 Q4w8zWeMR4N8Q2tcmvXnF84L9zVC9Z2PPpXMaYGchV/q5vIC/o2N7/FdKRtGJioWqM4xFD/AO
 0ivryDsRK2m10EukMlQB8TUss0gter+MYJInyt6Vztk73ReaZPXcnd7a1UBvNjm0EFw/JJRyK
 S+JfH5ViP8F545PZYIw1uO9kxTmxGd02M8rkTruF9q+1J0RQc/ymMO0JBpUQo7q2TckA/WN/q
 BKMBR3GO1D5ca+k9c4EQ6q4BAnkgNbSxpL7VyHPzuVXcEcUC41jn8ISxqR9BHlLzJygoUtIt2
 +TFCBcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220115_054752_873711_1235126E 
X-CRM114-Status: GOOD (  43.87  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

i have now created a new barebox board as copy from evb. i can load it from tftp with

bootm /mnt/tftp/barebox-rk3568-r2pro.img

i can create a bootmenu with entries of loader/entries and boot it:

boot -m sd.1

my bootscripts are also there, but they are not listed in $global.boot.default

$ grep defaultenv arch/arm/boards/bananapi-r2-pro/Makefile
bbenv-y += defaultenv-rk3568
$ grep defaultenv arch/arm/boards/bananapi-r2-pro/board.c
	defaultenv_append_directory(defaultenv_rk3568);
$ cat arch/arm/boards/bananapi-r2-pro/defaultenv-rk3568/nv/boot.default
net list-images mmc-linux tftp-linux

so it looks like the env is load, but the nv is not updated

regards Frank


> Gesendet: Montag, 10. Januar 2022 um 10:42 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
> An: "Frank Wunderlich" <frank-w@public-files.de>
> Cc: "Ahmad Fatoum" <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
> Betreff: Re: Re: Re: Re: barebox extending boot-scripts
>
> On Fri, Jan 07, 2022 at 05:42:22PM +0100, Frank Wunderlich wrote:
> > Hi
> >
> > missed the defaultenv_append_directory(defaultenv_rk3568); in board-file...after adding that it seems to work
> >
> > > Gesendet: Freitag, 07. Januar 2022 um 14:07 Uhr
> > > Von: "Sascha Hauer" <sha@pengutronix.de>
> > >
> > > Yes. Furthermore you have to add to the board code:
> > >
> > > 	defaultenv_append_directory(defaultenv_rk3568);
> >
> > maybe this is the part i've missed. i thought it were 2 ways...either link via makefile or add to boards code
> >
> > > > > > > Boot scripts for publicly available evaluation kits are often not good candidates
> > > > > > > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > > > > > > boot. The best way would be to use bootloader spec. It's one or more files you
> > > > > > > place at a known location that describe where your kernel and device tree are and
> > > > > > > what command line arguments to use and barebox can then automatically generate
> > > > > > > boot entries from all available bootloader spec files.
> > > >
> > > > is extlinux (i used in uboot and conf-file is already present) supported here?
> > > >
> > > > > > > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > > > > > > of how to set this up. This is what I'd recommend instead of writing your own
> > > > > > > scripts.
> > > >
> > > > i do not fully understand the bootloader spec in the pdf as config file seems to be
> > > >
> > > > /mnt/mmc0.4/loader/entries/stm32mp157c-dk2.conf
> > > >
> > > > and then
> > > > boot -d mmc0.4
> > > >
> > > > is run...so the path (loader/entries) seems to be fixed and all files there will be processed (which order)?
> > >
> > > Yes. No particular order, I guess it would be the order it is on the
> > > filesystem.
> > >
> > > > how is root appended (/dev/mmcblkXpY|uuid|...) when linux-appendroot is set to true?
> > >
> > > When root is appended it is assumed to be the same fs that also has the
> > > bootloader spec file, so the rootfs also has the entry and the kernel.
> >
> > ok, then this is not usable for me, as i have a boot-partition
> > (bootloader+kernel+dtb) and separate rootfs-partition
> >
> > > > this is for testing multiple kernels with changing filenames (very
> > > > dynamic process, e.g. using 1 kernel binary with multiple dtb) and to
> > > > avoid adding a bootmenu entry everytime....this is not for end-user :)
> > >
> > > In that case you could also use bootm directly.
> >
> > yes but my approach is to list the available kernels before and ask to
> > enter the filename to not everytime look for correct commands ;)
> >
> > > > and here scripting is imho the best way...this allows me to add extra
> > > > params to cmdline too (like debug level,dumping offsets) without
> > > > changing a distroboot config
> > >
> > > Not sure if you know already, but barebox concatenates all variables in
> > > the "global.linux.bootargs." namespace to the kernel command line, so
> > > you can easily add or remove a variable to add/remove kernel options
> > > without affecting unrelated options.
> >
> > i know some options from documentation like this i've used to get a earlycon for tftp
> >
> > global linux.bootargs.debug="earlycon=uart8250,mmio32,0xfe660000 earlyprintk"
> >
> > > > for fixed kernels i have defined an extlinux.conf for uboot, but i'm
> > > > unsure if barebox can use this file too. have not found anything about
> > > > extlinux/syslinux in barebox yet.
> > >
> > > No, not yet.
> >
> > ok, i created a bootloader-config like described in the pdf:
> >
> > cat /mnt/sd.1/loader/entries/linux-gz.conf
> > title Linux GZip
> > version 5.16
> > options earlycon=uart8250,mmio32,0xfe660000 console=ttyS2,1500000n8
> > linux /extlinux/Image_5.16.gz
> > devicetree /extlinux/dtb_5.16
> > initrd /rootfs.cpio.lz4
> >
> > but on starting it is skipped due to devicetree mismatch
> >
> > boot -d sd.1
> > blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
> > blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
> > Nothing bootable found on 'sd.1'
> > Nothing bootable found
> >
> > in barebox i use the evb whereas in linux i already have a separate
> > dts. Can i override the compatible for the bootloader or do i need to
> > add my board (as copy of evb first)?
>
> You can overwrite the compatible using the of_property command. However,
> I really recommend to add a separate barebox board for your board.
> Sooner or later you'll have to do this anyway and it's the only way to
> properly add quirks for your board.

have now added a new barebox-board, and now this seems to work, but it's booting the first entry and do not display a menu of all configs in loader/entries, is this possible?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

