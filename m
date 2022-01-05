Delivery-date: Wed, 05 Jan 2022 17:08:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58qP-00BvwR-Ku
	for lore@lore.pengutronix.de; Wed, 05 Jan 2022 17:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n58qO-00055o-3A
	for lore@pengutronix.de; Wed, 05 Jan 2022 17:08:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iTTNCry6P2yzxk2kFHyM1gyDiYNGoSJEnZogUcd3xIA=; b=4hdYkFaHoyTQv7ZlEwxogvlGVJ
	iesovPUg3VhegJTWQDYjwxV+JaBSIOKGix2U/AcQF9dZ0udz4ypwvRPvn13TQgtKMzfXroKc05Xxq
	2lcmGV2dGapJP0vaWy9g76MRY4Lj4Q2f1R7IOt94m2QA9YOCqLmHUA/xiFup4vEBxOiMJEC/JCn54
	ZiBPQi43bbgTib4PyRU2kqh+Cb451CeeYaZCEjpN1kOGlGhIlOxtxrHS0AuFzXfJ0hbySQ0pMz/6v
	vvjhmqmwoxT+3Io4639JgOMM6a0CsLHFEB9oW+zuvyEFG1oX2c+bngZgIj/M00Vx5ArNs3bvseTMd
	lhq/6A/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n58p0-00FHD6-RN; Wed, 05 Jan 2022 16:07:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n58ov-00FHBI-0Q
 for barebox@lists.infradead.org; Wed, 05 Jan 2022 16:07:26 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n58ot-00051y-4f; Wed, 05 Jan 2022 17:07:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Frank Wunderlich <frank-w@public-files.de>, barebox@lists.infradead.org
References: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
Message-ID: <65c439c2-d82a-5cc7-133b-aae7df21b610@pengutronix.de>
Date: Wed, 5 Jan 2022 17:07:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <trinity-236a89db-cfb0-4d29-bf25-44dc71d5d143-1641396043420@3c-app-gmx-bs58>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_080725_089030_7A9F0510 
X-CRM114-Status: GOOD (  29.57  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox extending boot-scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 05.01.22 16:20, Frank Wunderlich wrote:
> Hi,
> 
> i'm making my first steps and try to add more boot-scripts (to land in /env/boot)
> 
> i added a scipt in
> 
> arch/arm/boards/rockchip-rk3568-evb/defaultenv/mmc-linux

This should be defaultenv/boot/mmc-linux instead.

> and set
> 
> DEFAULT_ENVIRONMENT_PATH [=arch/arm/boards/rockchip-rk3568-evb/defaultenv]
> 
> but if i boot the board /env/boot only contains the 2 default scripts
> 
> barebox@Rockchip RK3568 EVB:/ ls /env/boot/
> bnet    net

Try ls -R /env, you should see mmc-linux at top-level with your
current setup.

> so maybe the dir/config-option i used is for defining variables only right?

Top level is only meant for directories. There are directories for the different
stuff, e.g. variables go into /env/nv/

> should this point to an directory or a file?

The config option is meant for use with external build systems, e.g. buildroot
or PTXdist. For boards in-tree, you can add bbenv-y in the Makefile and call

  // assuming directory is called defaultenv-myboard
  defaultenv_append_directory(defaultenv_myboard);

in the board code, see e.g. arch/arm/boards/embest-marsboard for an example.

The reason for avoiding the config option for in-tree boards is that a single barebox
configuration can build multiple boards in one go:
extreme case: imx_v7_defconfig, which builds marsboard also builds more than 100 other images.

The config option is global, but by explicitly calling defaultenv_append_directory,
you can have board-specific environments.

> i see this file which looks like the source of it
> 
> ./defaultenv/defaultenv-2-base/boot/net
> 
> I've put them there and they appear, but this is not board specific

Ye, you can use this for debugging, but stuff upstreamed there must be generally
applicable.

> so if i later want to upstream one this is maybe not the right place.

Boot scripts for publicly available evaluation kits are often not good candidates
for upstreaming, because everybody using the EVKs has different thoughts on how to
boot. The best way would be to use bootloader spec. It's one or more files you
place at a known location that describe where your kernel and device tree are and
what command line arguments to use and barebox can then automatically generate
boot entries from all available bootloader spec files.

See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf for an example
of how to set this up. This is what I'd recommend instead of writing your own
scripts.

> ./defaultenv/defaultenv-2-menu/menu/10-boot-all/net
> 
> seems to be a menu entry, but have not yet figured out how i can define one to add my scripts too
> 
> have not found anything for it in the documentation yet

The default boot menu is populated with the boot entries extracted from
the contents of $global.boot.default.

boot -m will display that menu. It will also include all bootloader spec files.
If that suffices, you won't need to create your own menu. If you want though,
check the help text of the menutree command.

To boot into the boot menu, set nv autoboot=menu. "Detect bootsources" will
list boot sources known to the barebox boot command.

See magicvar for a listing of all magic variables, or refer to the documentation.

> btw. is there a way to use ls with wildcard without printing the path?
> 
> ls /mnt/sd.1/extlinux/
> Image_5.16            Image_5.16-next.gz    Image_5.16.gz
> 
> ls /mnt/sd.1/extlinux/Image*
> /mnt/sd.1/extlinux/Image_5.16
> /mnt/sd.1/extlinux/Image_5.16-next.gz
> /mnt/sd.1/extlinux/Image_5.16.gz
> 
> i want to list only files matching Image*, but without path....number of columns does not matter

Yes, cd /mnt/sd.1/extlinux

Cheers,
Ahmad

> 
> regards Frank
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

