Delivery-date: Fri, 07 Jan 2022 14:10:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5p0U-00Dk0x-Lp
	for lore@lore.pengutronix.de; Fri, 07 Jan 2022 14:10:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5p0P-0003gs-IJ
	for lore@pengutronix.de; Fri, 07 Jan 2022 14:10:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IMUDp2cz3lDZd5qUfrF/pFHatiAM2gQbJQes6EiFZkI=; b=Vv7N1e/WIbCJR/
	XbV8+4B6cmo94eqQanmIQuldTYsJOYiexbcKRafzPsdlceflGaNXFNzK2wa1X+eVxglbfgN9X/TZZ
	j6U6QqNlS/3r9nOsVDehfOaqGYjimXV8FcjWP+VDiIkQaJXOZJe2eiNtb10znSL3zp02ltjlnQwdm
	9VcBenyECE3HNlU+FUTVbk6m4ZAlAOM74ZeEp733WtmraxAArcgiACi2LT5myM44sgzo2GdtGRAU1
	inqOqJF6pmsHAZh90elMk2+SvxtEP5lCfPHU3U27NC/FP5ezPLuXnGu6M0hZxpl6Tu5Yi5IZXMPi2
	WGKnBDtzh3mMpXzV6fiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5oya-003wUN-H9; Fri, 07 Jan 2022 13:08:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5oyS-003wTA-N8
 for barebox@lists.infradead.org; Fri, 07 Jan 2022 13:08:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n5oyG-0003bz-BV; Fri, 07 Jan 2022 14:07:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n5oyF-0005Li-NU; Fri, 07 Jan 2022 14:07:51 +0100
Date: Fri, 7 Jan 2022 14:07:51 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220107130751.GW6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
 <20220106080838.GV6003@pengutronix.de>
 <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-7a53a76e-9836-482e-861e-31439f242e2d-1641472899713@3c-app-gmx-bs51>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:51:31 up 27 days, 21:37, 81 users,  load average: 0.02, 0.08, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220107_050804_793244_32AD30C9 
X-CRM114-Status: GOOD (  53.88  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 06, 2022 at 01:41:39PM +0100, Frank Wunderlich wrote:
> Hi,
> thanks for answer. tried to strip mail it a bit down ;)
> > Gesendet: Donnerstag, 06. Januar 2022 um 09:08 Uhr
> > Von: "Sascha Hauer" <sha@pengutronix.de>
> > On Wed, Jan 05, 2022 at 07:13:22PM +0100, Frank Wunderlich wrote:
> 
> > > > > DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]
> > > > The config option is meant for use with external build systems, e.g. buildroot
> > > > or PTXdist. For boards in-tree, you can add bbenv-y in the Makefile and call
> > > >
> > > >   // assuming directory is called defaultenv-myboard
> > > >   defaultenv_append_directory(defaultenv_myboard);
> > > >
> > > > in the board code, see e.g. arch/arm/boards/embest-marsboard for an example.
> 
> if i understand it right i need to create a dir
> 
> arch/arm/boards/rockchip-rk3568-evb/defaultenv-rk3568

Yes.

> 
> with dirs nv (variables) and boot (bootscripts)
> 
> and add
> bbenv-y += defaultenv-rk3568
> in
> arch/arm/boards/rockchip-rk3568-evb/Makefile

Yes. Furthermore you have to add to the board code:

	defaultenv_append_directory(defaultenv_rk3568);

> 
> > > > Boot scripts for publicly available evaluation kits are often not good candidates
> > > > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > > > boot. The best way would be to use bootloader spec. It's one or more files you
> > > > place at a known location that describe where your kernel and device tree are and
> > > > what command line arguments to use and barebox can then automatically generate
> > > > boot entries from all available bootloader spec files.
> 
> is extlinux (i used in uboot and conf-file is already present) supported here?
> 
> > > > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > > > of how to set this up. This is what I'd recommend instead of writing your own
> > > > scripts.
> 
> i do not fully understand the bootloader spec in the pdf as config file seems to be
> 
> /mnt/mmc0.4/loader/entries/stm32mp157c-dk2.conf
> 
> and then
> boot -d mmc0.4
> 
> is run...so the path (loader/entries) seems to be fixed and all files there will be processed (which order)?

Yes. No particular order, I guess it would be the order it is on the
filesystem.

> how is root appended (/dev/mmcblkXpY|uuid|...) when linux-appendroot is set to true?

When root is appended it is assumed to be the same fs that also has the
bootloader spec file, so the rootfs also has the entry and the kernel.

> > > needed to add this option, and now it prints only "net" and "back",not my own scripts ;(
> > >
> > > do i need my scripts to ./defaultenv/defaultenv-2-menu/menu/10-boot-all/ too?
> 
> do i need to propagate my own scripts somewhere to be listed in the bootmenu?
> 
> in cmdline i had tried this:
> 
> global.boot.default="net mmc-linux tftp-linux"
> boot -m
> 
> which works, but how can i set this variable at compile-time?

By creating the file defaultenv/defaultenv-2-base/nv/boot.default with
the content "net mmc-linux tftp-linux". Alternatively you can also
create your own board specific env overlay like discussed above using
the bbenv-y approach.

> 
> is the right way creating a file
> defaultenv/defaultenv-2-base/nv/boot.default (or arch/arm/boards/rockchip-rk3568-evb/defaultenv-rk3568/nv/boot.default)
> with the content i want? so it looks like in the pdf above ("global.variable s, these are initialized from the
> correspoding non-volatile nv.variable s")

Yes.

> > &sdhci {
> > 	...
> > 	partitions {
> > 		compatible = "fixed-partitions";
> >
> > 		environment_emmc: partition@408000 {
> > 			label = "barebox-environment";
> > 			reg = <0x0 0x408000 0x0 0x8000>;
> > 		};
> > 	};
> > };
> 
> thx, if i understand it right, then it's an offset/size defined in dts by reg-property. My board uses the same values which is iirc a bit above the 4M position (0x408000,4M=0x400000).

Yes. It's the fixed partition binding normally used for raw NOR/NAND
flashes.

> As i don't have a real partition there (first partition is at 8M), so i guess it is directly written (no file, like ENV_OFFSET in uboot). The 0x8000 should be the size (32kByte like ENV_SIZE), right?

Right.

> 
> > > > See magicvar for a listing of all magic variables, or refer to the documentation.
> > > >
> > > > > btw. is there a way to use ls with wildcard without printing the path?
> >
> > It works for example with:
> >
> > for i in /mnt/sd.1/extlinux/Image*; do basename $i b; echo $b; done
> 
> nice, that makes it a bit more usable like using numbers to choose
> 
> i=0;for f in /mnt/sd.1/extlinux/Image*; do basename $f b; echo "$i:$b";let i++; done
> 
> > But anyway, I'm with Ahmad here, you should rather look into bootloader
> > spec. The shell is nice to have, but it's even nicer to not have to use
> > it.
> 
> this is for testing multiple kernels with changing filenames (very
> dynamic process, e.g. using 1 kernel binary with multiple dtb) and to
> avoid adding a bootmenu entry everytime....this is not for end-user :)

In that case you could also use bootm directly.

> 
> and here scripting is imho the best way...this allows me to add extra
> params to cmdline too (like debug level,dumping offsets) without
> changing a distroboot config

Not sure if you know already, but barebox concatenates all variables in
the "global.linux.bootargs." namespace to the kernel command line, so
you can easily add or remove a variable to add/remove kernel options
without affecting unrelated options.

> 
> for fixed kernels i have defined an extlinux.conf for uboot, but i'm
> unsure if barebox can use this file too. have not found anything about
> extlinux/syslinux in barebox yet.

No, not yet.

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

