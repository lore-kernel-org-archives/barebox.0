Delivery-date: Thu, 05 May 2022 10:26:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWos-002Vvj-5m
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:26:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWoq-0003rN-C6
	for lore@pengutronix.de; Thu, 05 May 2022 10:26:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyV08Ot0ABvxC+qo1+M77N8Dala620IH1G9/VH5bdzs=; b=FUrUtj6HblY8TL
	o3UuFaQPXTHEcS0wt9h91ZdO3ubfEhGFVK9PoSHIAvM9GYMlsM3dbTLEsG578O5H0bmSq9pWyxuNT
	Qt88QuK4V8HTPmL2ADXuOutWGq5wlNLAAn3mlJqtEEIvZOPZqH/oaQ77jhP8/n2lnbPgIsXZlP7yx
	ifE6YdPVr6Z+LtjJLv99P3A04MGIwjug6X+/U755SAyY6/wJ/Mc3xjTZtZ5dOfOfMcLFIC6i5gPtw
	Qw/7Y9+4AmpIPD/qMwl4pPvZbjN+/+PhfjyE9i4ymz9xkN/2TpefMaXyUmb9bnlpKMCRnRHcnx6oc
	qJhrZPAw9GtGvmorOEbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWnS-00EfSf-PM; Thu, 05 May 2022 08:25:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWnN-00EfRh-Cy
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:25:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWnL-0003TB-TP; Thu, 05 May 2022 10:25:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nmWnL-0004my-K3; Thu, 05 May 2022 10:25:07 +0200
Date: Thu, 5 May 2022 10:25:07 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220505082507.GM4012@pengutronix.de>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos>
 <20220505070602.GG4012@pengutronix.de>
 <YnN7wHE7AgE0FC0h@Hephaistos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YnN7wHE7AgE0FC0h@Hephaistos>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:22:10 up 35 days, 20:51, 84 users,  load average: 0.11, 0.14, 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_012509_481900_E9283951 
X-CRM114-Status: GOOD (  23.23  )
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

On Thu, May 05, 2022 at 09:24:48AM +0200, Konstantin Kletschke wrote:
> Hey Sascha,
> 
> On Thu, May 05, 2022 at 09:06:02AM +0200, Sascha Hauer wrote:
> 
> > It's only "bootsource" and "bootsource_instance", without the global.
> > prefix for historic reasons.
> 
> Ah okay. Those varables are existing.
> 
> If I boot from internal MMC bootsource is mmc and instance is 1.
> If I boot from external SD-Card bootsource is mmc and instance is 0.
> 
> I hope I did not confuse, my use case is to boot from internal MMC
> always, booting from external SD-Card (i.e. use SD-Cards bootloader)
> requires pressing a button which is not accessible. Boot from internal
> always, if SD-Card is there use its rernel/rootfs.
> 
> So it is 100% sufficient (succesfully tested already) doing something like:
> * boot.default=insidem2m_sd bootchooser
> ** /env/boot/insidem2m_sd mounts and boots mmc0.1
> ** bootchooser targets (system0, system1) mount and boot mmc1.1/mmc1.2 
> 
> Haken dran!
> 
> > Try mounting manually with "mount mmc1.2". What does "devinfo ext40" say
> > then? It should contain a linux.bootargs option.
> 
> barebox@TI AM335x BeagleBone black:/ mount mmc1.2
> ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
> mounted /dev/mmc1.2 on /mnt/mmc1.2
> barebox@TI AM335x BeagleBone black:/ cat /mnt/mmc1.2/loader/entries/boneblack.conf 
> title		BeagleBone Black - Inside M2M
> version		5.14
> options		rootwait
> linux		/boot/zImage
> devicetree	/boot/am335x-boneblack.dtb
> linux-appendroot truebarebox@TI AM335x BeagleBone black:/ devinfo ext40
> Driver: ext4
> Bus: fs
> Parent: mmc1
> barebox@TI AM335x BeagleBone black:/ 
> 
> So, no bootargs option :-|

Is this a DOS partition table or GPT on this card?
I assume it's a DOS partition table in which case you should have a
variable mmc1.nt_signature. Set this to some arbitrary 32bit value.
Several partitioning tools set this automatically, but not all it seems.

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

