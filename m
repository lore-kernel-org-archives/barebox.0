Delivery-date: Mon, 02 May 2022 08:38:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlPhJ-005k3v-2S
	for lore@lore.pengutronix.de; Mon, 02 May 2022 08:38:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlPhG-0002yz-Hz
	for lore@pengutronix.de; Mon, 02 May 2022 08:38:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GwlF2tqJ5JVdh7RbNhv+NdHtNfpYNtTpD7d4oSvaZ2k=; b=pM3eKCeMWus2Uh
	eiNKMnseFsklr1m06p6LmbE5LlYPXeCKJ6jNmo49gxG5Me1p95wZNGt6dqX63ChwJVVqJHkdHxkO9
	ronznMLgWP30oYg2IttAhMJcHODQndy6Qt66ZuDQZHEkPifNlC+9DdwcHeKsmzIdY0j/sGvKPkGmA
	QRG/zqi7uw8CXGUKWTCKrl6Ai8GB+acZQahVlhx+2DufZ0lwiiJgkWwdyh+wPbpa3yPne4SE6Wjwu
	/8YCghiLAsZlyPytae85T/kG8+r5UTqmzZ87NiKYfU2UAOYPtuYCWaKaZsg0p6vlbUUzghskaCbBj
	ANxlIih90tDDSE7IJ5HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlPfM-0003yZ-8J; Mon, 02 May 2022 06:36:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlPf9-0003xw-5Z
 for barebox@lists.infradead.org; Mon, 02 May 2022 06:36:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nlPf2-0002f9-1b; Mon, 02 May 2022 08:35:56 +0200
Message-ID: <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
Date: Mon, 2 May 2022 08:35:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>,
 barebox@lists.infradead.org
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
Content-Language: en-US
In-Reply-To: <Ym6y6LXmdC9h3u4n@Hephaistos>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_233609_599676_E77C00A9 
X-CRM114-Status: GOOD (  22.42  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot from SD if SD-Card is present - Beaglebone Black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Konstantin,

On 01.05.22 18:18, Konstantin Kletschke wrote:
> Hi All,
> 
> I have a Beaglebone Black whith internal MMC and external SD-Card
> interface.
> 
> I boot from internal MMC always. The system itself aways boots from
> internal MMC.
> 
> Is there a way - may be scriptable in boot entry - to start system from
> external SD-Card, if it is present?

There is, but I'd check first if it's possible to boot from eMMC only
as a fallback if SD boot failed. On some bootroms, this is possible
and can easily be scripted in barebox with $global.bootsource
and $global.bootsource_instance variables.

> 
> Normally I boot this way, bootchooser select system0 or system1:
> 
> #!/bin/sh
> 
> mount mmc1.1
> 
> global.bootm.image=/mnt/mmc1.1/boot/zImage
> global.bootm.oftree=/mnt/mmc1.1/boot/am335x-boneblack.dtb
> global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"

"The barebox way" is to keep this configuration confined to the rootfs
as it makes it easier to change this parameters without changing the
bootloader. We usually do that with bootloader spec file (name it e.g.
/loader/entries/boneblack.conf):

title		BeagleBone Black - M2M
version		5.17
options		rootwait
linux		/boot/zImage
devicetree	/boot/am335x-boneblack.dtb
linux-appendroot true

This way, you can just type boot mmc1.1 to boot. linux-appendroot
will have barebox add a root= option pointing at the device it read
the bootloader spec file from. You'll want to set CONFIG_MMCBLKDEV_ROOTARG=y
to get root=/dev/mmcblk* fixups instead of partuuid (which might be the
same if you have the exact same image on SD and eMMC).

> If I stop autoboot and want to use external SD-Card I manually select
> insidem2m_sd as a boot entry:
> 
> #!/bin/sh
> 
> mount mmc0.1
> 
> global.bootm.image=/mnt/mmc0.1/boot/zImage
> global.bootm.oftree=/mnt/mmc0.1/boot/am335x-boneblack.dtb
> global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootfstype=ext4 rootwait"
> 
> Can this be something like:
> 
> IF external SD-CARD IS PRESENT bootentry is insidem2m_sd ELSE
> bootchooser

boot already accepts multiple boot targets to try in order,
so you could do boot mmc0.1 mmc1.1

Or if it yields better error messages:

  if detect mmc0; then
    boot mmc0.1
  fi

  boot mmc1.1

> Please obey if you are inspecting the CMDLINE, in more recent Kernels
> the mmcblk0 and mmcblk1 numbering is exchanged.

On less recent kernels, the order might change, but at least now it's
fixed (with aliases).

Cheers,
Ahmad

> 
> 
> Kind Regards
> Konstantin
> 
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

