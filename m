Delivery-date: Fri, 07 Jan 2022 17:44:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5sLf-00DrNA-MA
	for lore@lore.pengutronix.de; Fri, 07 Jan 2022 17:44:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5sLe-0002dl-7i
	for lore@pengutronix.de; Fri, 07 Jan 2022 17:44:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JXPQpIMMW7dhHjts6bHTSlC6abZykrVOGeqM6DAZIs=; b=Z+44h67RpM85D4
	6zvGyKtzKZ2esH0lb3CU/75gtitCn6OgDRuZSVzYD4s35lq7lddOFUNI7R1/4t5sdiABQA6FrSZep
	Rgr07MH4NxkgbBe2Ko7L8QO/t2quWvBJu8VvPQ4jSLQmSsJE6kIurCAr9PdGLcvefhNVbIsf5/Sn0
	YSc1/MxbR9P69uSmHRuwyGdhIHg2/f0ML5x0R858wskVgLGa0cNll3kUeW7Bmynf+vSan6FfbKSsx
	5o7QzHo961L3b4r3kESu545xJWjOzPZF7u/d7LPyFkdZsTVC4xVN1R4c3OBxH++JAHAB2pPC4UKoR
	YOgwQl1xvpTBsB5LQzNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5sK2-004fbd-N9; Fri, 07 Jan 2022 16:42:34 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5sJx-004fbE-2m
 for barebox@lists.infradead.org; Fri, 07 Jan 2022 16:42:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1641573742;
 bh=BlXO4q4kadjT8vmGfrUXvHhTDpqVheVeswYOptJDVaM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KilaoEx3LPxs647Q5ok4umkmAqdlZTwydZvzFz0xh5ClRYKws+69pbJDRvdRxLDuq
 MTkIfa+FhXCgP2f3kR90BLHpa6WBpmd/pI4HW2gft57iQFqZArZkbdr7orSgu0FXaF
 sTK52N6wH7E1goaaQ6ZeKuISR/LdZBs+KQNlai94=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.95] ([217.61.145.95]) by web-mail.gmx.net
 (3c-app-gmx-bs48.server.lan [172.19.170.101]) (via HTTP); Fri, 7 Jan 2022
 17:42:22 +0100
MIME-Version: 1.0
Message-ID: <trinity-f8991630-17eb-4ae0-9dfa-9a66bc41b02e-1641573741990@3c-app-gmx-bs48>
From: Frank Wunderlich <frank-w@public-files.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Fri, 7 Jan 2022 17:42:22 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220107130751.GW6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
 <20220107130751.GW6003@pengutronix.de>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:P13YNlopsaqehwe6VS+abnKsf7WsEbOmKBKhXcbigaBRHHWAvL1aOjCxRUC67EdK3EAU+
 LUZ7z+mNhzVizdYK67nicBa5MXqTXkGuBDy9byHVpoRVTWNrhRZWTLGv22ZqGDEu601ZQ5BWOpNU
 BpW6H1dOXmXRJ1ubXhWY8WXpYUrerjw8Nl03z3aebYU0fADQIvuq5PywiZ/kxLuR2tMOhAnKvOue
 hQl2P9QIWB0VYBkHt9GOvhbYpnAkt/BDWsfs9GcjbZXnaNEPuptNuO+LRmoKvcdB2RuQshwF9DTL
 OY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:VOSeuskNF2A=:KJNt1dSN7DAkfAlvytAC5M
 8Su8UYc/ztVcDmmD2ucNEjW8UqZsqNlrtvmC0rYXnvxdPZuLHSW+KV8BjySEEeFvGmi/7Knj+
 mWwHuPEPtdjrZgPTCkPdkuhqG2C2KcpxLGwS2yrYz/xn6Vmjz3T5co7InmNyMuoe8E4CybShT
 j+fFTyrqpYhR7gvulw/ZcxCP0xJStHCCzSWxrWWHNNPtCLELJQ7KmdwbAqREvTr2zb8LtAbdl
 +2zw2I86HlO9h1jJ7/QWEjkcVuOtVGKKZ4Vxiw9JevHTP02z59TPVb0PpIa5Z80RLOCq+ggAe
 0dlHSoklaJ8Xksf2+azE4ME7rpaLvKoYQHeNJfTP7rjgBSnfjwix9cKWr5mFRT+r4Ljm6pWg9
 /IDC+C/zHLPtVyiFDPEopcXJ08r4YIoLpvZNKtNbJsSDIzpcLI/361/Mapvs89et1JZy/NQ7N
 2d4mGE5P+Lk6T5pedhFVjZomPf6j1nQX9ZLsqq/19TtpvNCD8yaegZQnHC/1DlHITRe6eGjHV
 z8CFngrLW8hQfR0PtIbxto09eIO+BwxxNNydmy5slr17djyKgA1LidmyIX7HXeN71PFU/gX4z
 KBi97SYsdHI8aetphq8hhRKTIlB8WB9PWAJlbmynaioZ1cERRp5ZgWwbB6Rzll8P+yKcDuuou
 cR3/qyfgiCEHb39v4g6Vz15LI4XL8ZVjOp212NkJZBuxLJmwMKYBJYCENZXqTEqhunDZzL7yg
 t3aYkj1XiR8052SxRCmnvCSx0bGvyKKJie1l/CKW5g4mk09KD6klyfGxJaEkBqxdTzOxzkZk1
 e42ufh+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_084229_507505_C1C169D0 
X-CRM114-Status: GOOD (  31.88  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Aw: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi

missed the defaultenv_append_directory(defaultenv_rk3568); in board-file...after adding that it seems to work

> Gesendet: Freitag, 07. Januar 2022 um 14:07 Uhr
> Von: "Sascha Hauer" <sha@pengutronix.de>
>
> Yes. Furthermore you have to add to the board code:
>
> 	defaultenv_append_directory(defaultenv_rk3568);

maybe this is the part i've missed. i thought it were 2 ways...either link via makefile or add to boards code

> > > > > Boot scripts for publicly available evaluation kits are often not good candidates
> > > > > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > > > > boot. The best way would be to use bootloader spec. It's one or more files you
> > > > > place at a known location that describe where your kernel and device tree are and
> > > > > what command line arguments to use and barebox can then automatically generate
> > > > > boot entries from all available bootloader spec files.
> >
> > is extlinux (i used in uboot and conf-file is already present) supported here?
> >
> > > > > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > > > > of how to set this up. This is what I'd recommend instead of writing your own
> > > > > scripts.
> >
> > i do not fully understand the bootloader spec in the pdf as config file seems to be
> >
> > /mnt/mmc0.4/loader/entries/stm32mp157c-dk2.conf
> >
> > and then
> > boot -d mmc0.4
> >
> > is run...so the path (loader/entries) seems to be fixed and all files there will be processed (which order)?
>
> Yes. No particular order, I guess it would be the order it is on the
> filesystem.
>
> > how is root appended (/dev/mmcblkXpY|uuid|...) when linux-appendroot is set to true?
>
> When root is appended it is assumed to be the same fs that also has the
> bootloader spec file, so the rootfs also has the entry and the kernel.

ok, then this is not usable for me, as i have a boot-partition (bootloader+kernel+dtb) and separate rootfs-partition

> > this is for testing multiple kernels with changing filenames (very
> > dynamic process, e.g. using 1 kernel binary with multiple dtb) and to
> > avoid adding a bootmenu entry everytime....this is not for end-user :)
>
> In that case you could also use bootm directly.

yes but my approach is to list the available kernels before and ask to enter the filename to not everytime look for correct commands ;)

> > and here scripting is imho the best way...this allows me to add extra
> > params to cmdline too (like debug level,dumping offsets) without
> > changing a distroboot config
>
> Not sure if you know already, but barebox concatenates all variables in
> the "global.linux.bootargs." namespace to the kernel command line, so
> you can easily add or remove a variable to add/remove kernel options
> without affecting unrelated options.

i know some options from documentation like this i've used to get a earlycon for tftp

global linux.bootargs.debug="earlycon=uart8250,mmio32,0xfe660000 earlyprintk"

> > for fixed kernels i have defined an extlinux.conf for uboot, but i'm
> > unsure if barebox can use this file too. have not found anything about
> > extlinux/syslinux in barebox yet.
>
> No, not yet.

ok, i created a bootloader-config like described in the pdf:

cat /mnt/sd.1/loader/entries/linux-gz.conf
title Linux GZip
version 5.16
options earlycon=uart8250,mmio32,0xfe660000 console=ttyS2,1500000n8
linux /extlinux/Image_5.16.gz
devicetree /extlinux/dtb_5.16
initrd /rootfs.cpio.lz4

but on starting it is skipped due to devicetree mismatch

boot -d sd.1
blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
Nothing bootable found on 'sd.1'
Nothing bootable found

in barebox i use the evb whereas in linux i already have a separate dts. Can i override the compatible for the bootloader or do i need to add my board (as copy of evb first)?

btw. don't you get my direct messages (regarding vop2 driver for rk3568 and the result of my barebox environment-tests)?

regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

