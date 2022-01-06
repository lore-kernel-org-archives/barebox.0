Delivery-date: Thu, 06 Jan 2022 09:10:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5Nqw-00CbWs-Eh
	for lore@lore.pengutronix.de; Thu, 06 Jan 2022 09:10:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5Nqu-00080w-Rm
	for lore@pengutronix.de; Thu, 06 Jan 2022 09:10:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ne9YDRo6E8wvDRg4f/fInrruu+fCRfEPa1rIFVWOnJE=; b=Zh322jlLv5f3WBDsIpU7OSV63o
	/goY2hmNtXvQ0c65xSEFhAZriAv91dhUshIgivEtUp0X+UGzXOEN+5m4nlCBZ+R1WdOWuI91PtciV
	IqGT+iu1yaZiwzzd6xRUHmUCK30XVruTUeZmIFRwZvDNw1bAhffuGKHP/jekwI5AABiuFjelilCJW
	+WtdXGis6JbWmVM5Fd2jZq2A47upzzTqlRtouvcR1qN+B5R5w5ec+ZAFDPjCqP99yZkGejPrxQU3E
	EgvUJYnh4QzNXXCMC5s3uVDizgerMJ1AV1wMe58Jjf+8IoJpy61P3H/86K0UzDb92yh85FuLhguUW
	17JOlPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5NpG-00GxTr-NQ; Thu, 06 Jan 2022 08:08:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5NpB-00GxS2-5M
 for barebox@lists.infradead.org; Thu, 06 Jan 2022 08:08:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n5Np9-0007m8-17; Thu, 06 Jan 2022 09:08:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n5Np8-00015H-Bz; Thu, 06 Jan 2022 09:08:38 +0100
Date: Thu, 6 Jan 2022 09:08:38 +0100
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20220106080838.GV6003@pengutronix.de>
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
 <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
 <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-48d6bfb8-862a-4bdf-9146-e208983a61b5-1641406402672@3c-app-gmx-bs58>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:37:23 up 26 days, 16:22, 59 users,  load average: 1.30, 1.17, 1.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_000841_234671_0A6B1CDE 
X-CRM114-Status: GOOD (  51.38  )
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
Subject: Re: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 05, 2022 at 07:13:22PM +0100, Frank Wunderlich wrote:
> Hi,
> 
> > Gesendet: Mittwoch, 05. Januar 2022 um 17:07 Uhr
> > Von: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
> > An: "Frank Wunderlich" <frank-w@public-files.de>, barebox@lists.infradead.org
> > Betreff: Re: barebox extending boot-scripts
> >
> > Hi,
> >
> > On 05.01.22 16:20, Frank Wunderlich wrote:
> > > Hi,
> > >
> > > i'm making my first steps and try to add more boot-scripts (to land in /env/boot)
> > >
> > > i added a scipt in
> > >
> > > arch/arm/boards/rockchip-rk3568-evb/defaultenv/mmc-linux
> >
> > This should be defaultenv/boot/mmc-linux instead.
> >
> > > and set
> > >
> > > DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]
> > >
> > > but if i boot the board /env/boot only contains the 2 default scripts
> > >
> > > barebox@Rockchip RK3568 EVB:/ ls /env/boot/
> > > bnet    net
> >
> > Try ls -R /env, you should see mmc-linux at top-level with your
> > current setup.
> >
> > > so maybe the dir/config-option i used is for defining variables only right?
> >
> > Top level is only meant for directories. There are directories for the different
> > stuff, e.g. variables go into /env/nv/
> >
> > > should this point to an directory or a file?
> >
> > The config option is meant for use with external build systems, e.g. buildroot
> > or PTXdist. For boards in-tree, you can add bbenv-y in the Makefile and call
> >
> >   // assuming directory is called defaultenv-myboard
> >   defaultenv_append_directory(defaultenv_myboard);
> >
> > in the board code, see e.g. arch/arm/boards/embest-marsboard for an example.
> >
> > The reason for avoiding the config option for in-tree boards is that a single barebox
> > configuration can build multiple boards in one go:
> > extreme case: imx_v7_defconfig, which builds marsboard also builds more than 100 other images.
> >
> > The config option is global, but by explicitly calling defaultenv_append_directory,
> > you can have board-specific environments.
> 
> will try this approach, thanks
> 
> > > i see this file which looks like the source of it
> > >
> > > ./defaultenv/defaultenv-2-base/boot/net
> > >
> > > I've put them there and they appear, but this is not board specific
> >
> > Ye, you can use this for debugging, but stuff upstreamed there must be generally
> > applicable.
> >
> > > so if i later want to upstream one this is maybe not the right place.
> >
> > Boot scripts for publicly available evaluation kits are often not good candidates
> > for upstreaming, because everybody using the EVKs has different thoughts on how to
> > boot. The best way would be to use bootloader spec. It's one or more files you
> > place at a known location that describe where your kernel and device tree are and
> > what command line arguments to use and barebox can then automatically generate
> > boot entries from all available bootloader spec files.
> >
> > See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
> > of how to set this up. This is what I'd recommend instead of writing your own
> > scripts.
> >
> > > ./defaultenv/defaultenv-2-menu/menu/10-boot-all/net
> > >
> > > seems to be a menu entry, but have not yet figured out how i can define one to add my scripts too
> > >
> > > have not found anything for it in the documentation yet
> >
> > The default boot menu is populated with the boot entries extracted from
> > the contents of $global.boot.default.
> 
> currently only net is listed there
> 
> barebox@Rockchip RK3568 EVB:/ echo $global.boot.default
> net
> 
> but in /env/boot i have my 2 new scripts
> 
> barebox@Rockchip RK3568 EVB:/ ls /env/boot
> bnet          mmc-linux     net           tftp-linux
> 
> > boot -m will display that menu. It will also include all bootloader spec files.
> > If that suffices, you won't need to create your own menu. If you want though,
> > check the help text of the menutree command.
> 
> needed to add this option, and now it prints only "net" and "back",not my own scripts ;(
> 
> do i need my scripts to ./defaultenv/defaultenv-2-menu/menu/10-boot-all/ too?
> 
> > To boot into the boot menu, set nv autoboot=menu. "Detect bootsources" will
> > list boot sources known to the barebox boot command.
> 
> is this stored anywhere so that is persistent on next reboot?

Variables beginning with 'nv.' are stored in the environment
automatically.

> 
> btw. how does saveenv exactly work (which part/filename/offset is
> used)? sasha told me that device will be enumerated to the current
> boot device, but where on this device is the env stored?

Normally it's described in the device tree:

	environment-emmc {
		compatible = "barebox,environment";
		device-path = &environment_emmc;
	};

The device-path property points to a partition on the eMMC:

&sdhci {
	...
	partitions {
		compatible = "fixed-partitions";

		environment_emmc: partition@408000 {
			label = "barebox-environment";
			reg = <0x0 0x408000 0x0 0x8000>;
		};
	};
};


> 
> > See magicvar for a listing of all magic variables, or refer to the documentation.
> >
> > > btw. is there a way to use ls with wildcard without printing the path?
> > >
> > > ls /mnt/sd.1/extlinux/
> > > Image_5.16            Image_5.16-next.gz    Image_5.16.gz
> > >
> > > ls /mnt/sd.1/extlinux/Image*
> > > /mnt/sd.1/extlinux/Image_5.16
> > > /mnt/sd.1/extlinux/Image_5.16-next.gz
> > > /mnt/sd.1/extlinux/Image_5.16.gz
> > >
> > > i want to list only files matching Image*, but without path....number of columns does not matter

It works for example with:

for i in /mnt/sd.1/extlinux/Image*; do basename $i b; echo $b; done

But anyway, I'm with Ahmad here, you should rather look into bootloader
spec. The shell is nice to have, but it's even nicer to not have to use
it.

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

