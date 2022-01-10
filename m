Delivery-date: Mon, 10 Jan 2022 10:46:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6rGN-00FzEC-6v
	for lore@lore.pengutronix.de; Mon, 10 Jan 2022 10:46:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6rGL-0000nq-GL
	for lore@pengutronix.de; Mon, 10 Jan 2022 10:46:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXn+UOF6VT8u5TklmmHveKSTEzmfujp3XTs2mAzf4tg=; b=Y0axhgY/bURa0P
	Qs5y1EOR+dCmhsawaOJNtpa3zLppiy+tE36+uRAxV2WGBoxv7fUIYXjyEEYZR4x7IanUk3TGwbIj/
	CoQoxACUfIYm2WyQyQFOeypayXbs0FGBZWySivVJEVfouJ+8u7oLVzQj9zzWEfTmYiEf3Q62vav8B
	Ubb8oCUw7btG9KNE83UXiGM6DRwjUPwQKUM5Sw1yicPDC4vMocOwdX7ip4Oda6TCe6zNXVQhnaRpu
	q9fJvOA+XRyCp0gWkOC/Jp66nWDClVl7Dt80lOCiDLPKILET7kz+c0LW+FtbCfltgYcUf4raINiZY
	BrKO6kw4lrDDTUfAxHEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6rEo-00AWyl-5y; Mon, 10 Jan 2022 09:45:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6rBw-00AVWa-P5
 for barebox@lists.infradead.org; Mon, 10 Jan 2022 09:42:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6rBu-0000D1-S3; Mon, 10 Jan 2022 10:42:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n6rBu-0003PV-8V; Mon, 10 Jan 2022 10:42:14 +0100
Date: Mon, 10 Jan 2022 10:42:14 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220110094214.GG6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
 <20220107130751.GW6003@pengutronix.de>
 <trinity-f8991630-17eb-4ae0-9dfa-9a66bc41b02e-1641573741990@3c-app-gmx-bs48>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-f8991630-17eb-4ae0-9dfa-9a66bc41b02e-1641573741990@3c-app-gmx-bs48>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:35 up 30 days, 18:14, 73 users,  load average: 0.02, 0.08, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220110_014216_869775_DFF6CD32 
X-CRM114-Status: GOOD (  49.99  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 07, 2022 at 05:42:22PM +0100, Frank Wunderlich wrote:
> Hi
> 
> missed the defaultenv_append_directory(defaultenv_rk3568); in board-file...after adding that it seems to work
> 
> > Gesendet: Freitag, 07. Januar 2022 um 14:07 Uhr
> > Von: "Sascha Hauer" <sha@pengutronix.de>
> >
> > Yes. Furthermore you have to add to the board code:
> >
> > 	defaultenv_append_directory(defaultenv_rk3568);
> 
> maybe this is the part i've missed. i thought it were 2 ways...either link via makefile or add to boards code
> 
> > > > > > Boot scripts for publicly available evaluation kits are often not good candidates
> > > > > > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > > > > > boot. The best way would be to use bootloader spec. It's one or more files you
> > > > > > place at a known location that describe where your kernel and device tree are and
> > > > > > what command line arguments to use and barebox can then automatically generate
> > > > > > boot entries from all available bootloader spec files.
> > >
> > > is extlinux (i used in uboot and conf-file is already present) supported here?
> > >
> > > > > > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > > > > > of how to set this up. This is what I'd recommend instead of writing your own
> > > > > > scripts.
> > >
> > > i do not fully understand the bootloader spec in the pdf as config file seems to be
> > >
> > > /mnt/mmc0.4/loader/entries/stm32mp157c-dk2.conf
> > >
> > > and then
> > > boot -d mmc0.4
> > >
> > > is run...so the path (loader/entries) seems to be fixed and all files there will be processed (which order)?
> >
> > Yes. No particular order, I guess it would be the order it is on the
> > filesystem.
> >
> > > how is root appended (/dev/mmcblkXpY|uuid|...) when linux-appendroot is set to true?
> >
> > When root is appended it is assumed to be the same fs that also has the
> > bootloader spec file, so the rootfs also has the entry and the kernel.
> 
> ok, then this is not usable for me, as i have a boot-partition
> (bootloader+kernel+dtb) and separate rootfs-partition
> 
> > > this is for testing multiple kernels with changing filenames (very
> > > dynamic process, e.g. using 1 kernel binary with multiple dtb) and to
> > > avoid adding a bootmenu entry everytime....this is not for end-user :)
> >
> > In that case you could also use bootm directly.
> 
> yes but my approach is to list the available kernels before and ask to
> enter the filename to not everytime look for correct commands ;)
> 
> > > and here scripting is imho the best way...this allows me to add extra
> > > params to cmdline too (like debug level,dumping offsets) without
> > > changing a distroboot config
> >
> > Not sure if you know already, but barebox concatenates all variables in
> > the "global.linux.bootargs." namespace to the kernel command line, so
> > you can easily add or remove a variable to add/remove kernel options
> > without affecting unrelated options.
> 
> i know some options from documentation like this i've used to get a earlycon for tftp
> 
> global linux.bootargs.debug="earlycon=uart8250,mmio32,0xfe660000 earlyprintk"
> 
> > > for fixed kernels i have defined an extlinux.conf for uboot, but i'm
> > > unsure if barebox can use this file too. have not found anything about
> > > extlinux/syslinux in barebox yet.
> >
> > No, not yet.
> 
> ok, i created a bootloader-config like described in the pdf:
> 
> cat /mnt/sd.1/loader/entries/linux-gz.conf
> title Linux GZip
> version 5.16
> options earlycon=uart8250,mmio32,0xfe660000 console=ttyS2,1500000n8
> linux /extlinux/Image_5.16.gz
> devicetree /extlinux/dtb_5.16
> initrd /rootfs.cpio.lz4
> 
> but on starting it is skipped due to devicetree mismatch
> 
> boot -d sd.1
> blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
> blspec: ignoring entry with incompatible devicetree "rockchip,rk3568-bpi-r2pro"
> Nothing bootable found on 'sd.1'
> Nothing bootable found
> 
> in barebox i use the evb whereas in linux i already have a separate
> dts. Can i override the compatible for the bootloader or do i need to
> add my board (as copy of evb first)?

You can overwrite the compatible using the of_property command. However,
I really recommend to add a separate barebox board for your board.
Sooner or later you'll have to do this anyway and it's the only way to
properly add quirks for your board.

> 
> btw. don't you get my direct messages (regarding vop2 driver for
> rk3568 and the result of my barebox environment-tests)?

Yes, I received them, but probably forgot to answer them because you
didn't ask a question ;)

Regards,
 Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

