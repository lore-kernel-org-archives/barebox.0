Delivery-date: Thu, 05 May 2022 09:07:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVaL-002QNj-Ra
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:07:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVaK-0008HN-8t
	for lore@pengutronix.de; Thu, 05 May 2022 09:07:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZMyseF9dAwmdeiXkGjZ+OHT9SA6kM4QZm9ZYxMrcIqM=; b=nEhwWxpSLmb+xYx6+CzlPMBI8y
	kh76x2W98X0kEzsNnvNN/RwuoCrncGEwUCJq7I2uzqp64AcMW2cqSvgvzKANRjFxbyWZiT339HrrU
	axsMntz2MGnlPbtI9gJXV6wJjK0FIQIPXYKyCJ4PGFVCVk0PthAyEou8jl+ilyNHL87pTYOOe6MW+
	srh2xkJxSpTAX2FsOK1/K7vb89vtdJfrAo+9b39JhPaEILZfxQg3dzmoaRDhrDXK7MUgXzaF8jnIl
	pE7ii7JFOEWWldm3E7a3yMu6I6R0pCQz0efmBBdYJdRS72pqhoLAcP0zJETUF9G5Ud7HQ7xR3mNNP
	9JeNujDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVYx-00EKY4-8W; Thu, 05 May 2022 07:06:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVYq-00EKXP-8X
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:06:08 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVYo-00086r-OJ; Thu, 05 May 2022 09:06:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmVYo-0006vm-C2; Thu, 05 May 2022 09:06:02 +0200
Date: Thu, 5 May 2022 09:06:02 +0200
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220505070602.GG4012@pengutronix.de>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YnE4zTD4Klact2eQ@Hephaistos>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:16 up 35 days, 19:14, 75 users,  load average: 0.10, 0.11, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_000604_343707_D192AEFD 
X-CRM114-Status: GOOD (  37.68  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot from SD if SD-Card is present - Beaglebone Black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey Konsti,

On Tue, May 03, 2022 at 04:14:37PM +0200, Konstantin Kletschke wrote:
> On Mon, May 02, 2022 at 08:35:55AM +0200, Ahmad Fatoum wrote:
> 
> > There is, but I'd check first if it's possible to boot from eMMC only
> > as a fallback if SD boot failed. On some bootroms, this is possible
> > and can easily be scripted in barebox with $global.bootsource
> > and $global.bootsource_instance variables.
> 
> When I type "magicvars" I have no global.boosource. Is that a "no
> bootsource in your bootrom" or has this a fetaure to be enabled as
> a CONFIG_ at compile time?

It's only "bootsource" and "bootsource_instance", without the global.
prefix for historic reasons.

> 
> However, booting from internal MMC is normal use case, SD-Cards are only
> inserted for updates and if some invalid SD-Card is inserted and system
> does not boot because of that I can live with that.
> 
> > title		BeagleBone Black - M2M
> > version		5.17
> > options		rootwait
> > linux		/boot/zImage
> > devicetree	/boot/am335x-boneblack.dtb
> > linux-appendroot true
> > 
> > This way, you can just type boot mmc1.1 to boot. linux-appendroot
> > will have barebox add a root= option pointing at the device it read
> > the bootloader spec file from. You'll want to set CONFIG_MMCBLKDEV_ROOTARG=y
> > to get root=/dev/mmcblk* fixups instead of partuuid (which might be the
> > same if you have the exact same image on SD and eMMC).
> 
> I already investigated bootloader spec but have it much more complicated
> in memory. This is darn simple and allows me to boot from different
> partitions with this same identical setup, right? I will go for it.
> 
> I have no CONFIG_MMCBLKDEV_ROOTARG=y, UUID is fine since all roots are
> individually formatted, no same image.
> 
> But alas, the rootfs is not appended. I created an entry just like you
> proposed and this happens:
> 
> 
> barebox@TI AM335x BeagleBone black:/ boot mmc1.2
> ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> Booting entry 'BeagleBone Black - M2M (/mnt/mmc1.2/loader/entries/boneblack.conf)'
> blspec: booting BeagleBone Black - M2M from mmc1
> 
> Loading ARM Linux zImage '/mnt/mmc1.2//boot/zImage'
> Loading devicetree from '/mnt/mmc1.2//boot/am335x-boneblack.dtb'
> commandline: console=ttyS0,115200n8 rootwait
> [...]
> Waiting for root device ...
> 
> What could I do about this? 

Try mounting manually with "mount mmc1.2". What does "devinfo ext40" say
then? It should contain a linux.bootargs option.

> 
> > boot already accepts multiple boot targets to try in order,
> 
> Okay, I was just not aware somehow. To use it for that.
> 
> So /env/nv/boot.default will take "mmc0.1 bootchooser" with bootchooser
> deciding between internal mmc1.1 and mmc1.2.
> If i get bootloader spec booting to fly.
> 
> 
> >   if detect mmc0; then
> >     boot mmc0.1
> >   fi
> > 
> >   boot mmc1.1
> 
> Where is this scripting stuff going into? It is not boot.default (gives
> me errors like "no entry if ... found"), is this going into entry
> boot.default points to?

It would go to /env/boot/somename

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

