Delivery-date: Tue, 03 May 2022 16:17:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nltKv-000cFG-FU
	for lore@lore.pengutronix.de; Tue, 03 May 2022 16:17:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nltKu-0002vA-0E
	for lore@pengutronix.de; Tue, 03 May 2022 16:17:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifvLeNuZXcmLgNYVL1XZ+7d6jJyY9ehrqk3GRYVVr24=; b=RKop2uPEEGJow9
	exxQ93o03McOsuuunSqFK5si+XoBJPzV6lA7Dv30BuNzfCMdZ/koopgrj+PWtQE84MfGoJNtQy4US
	0CCW8Bb0jz5yrUXog22oqtNZ/K077VPupRugoNn33c8TIu5bcA8t3prfvvBdOPtd6vswA2S5mUGW+
	hmyFs5mqF7kWq/bsNeOmPd3ph4BWrv5QcqAywIWp9pM6vUu6V6XcaWtk/i8qaxiLTU0YeiLcMUKfW
	IbPOS//Y5Fizgcj3oiq1dJEmV8GlPSbbk0O2Bknhlme/WkyaIyw59G3YoB2UCT/UIa14ktv/2B5ZL
	0wO5HjtE5vO+5wPvlVPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nltJE-006Bqj-Pf; Tue, 03 May 2022 14:15:24 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nltJ6-006Bkr-EZ
 for barebox@lists.infradead.org; Tue, 03 May 2022 14:15:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id EF0224019B;
 Tue,  3 May 2022 16:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651587279;
 bh=/SpfLieuIkTbCt9/7SwswxRJPCwDCSsYo411t6+nn9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lYSU2VYLRa6KCHGvK2NAIPIVx80Pdflypc2dyQ5usg/ntryPp1aXGJWtNgbrqjGff
 GA981F6OWmTJwC6HmpG1dgZPedj8ws26/CWmTptEjroAooY0oqK5KKNf/yZrW0ZUG4
 L97DFmmKRRee9XHNy91ZBlNQxZGTkIf0FvnbEgZUo+e+x3i/ZLjUV+L9etN3WHSw/+
 mg5ATt8nW2gZ9tM7agWAjawq9f1KP4hMFCwB/Df2ODS+KFvsZjsYEyBA1lpjDeqPFs
 fmZxIPA0NKwK2PhaG/DLSl/SXsAuZ7CPq2tV+AIK8hrG0JWjW4eG2d4AxlAbiT9526
 jOy3tLAl8gqZw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gO7Bm891OpJe; Tue,  3 May 2022 16:14:39 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 4AA83400B1;
 Tue,  3 May 2022 16:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651587279;
 bh=/SpfLieuIkTbCt9/7SwswxRJPCwDCSsYo411t6+nn9I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lYSU2VYLRa6KCHGvK2NAIPIVx80Pdflypc2dyQ5usg/ntryPp1aXGJWtNgbrqjGff
 GA981F6OWmTJwC6HmpG1dgZPedj8ws26/CWmTptEjroAooY0oqK5KKNf/yZrW0ZUG4
 L97DFmmKRRee9XHNy91ZBlNQxZGTkIf0FvnbEgZUo+e+x3i/ZLjUV+L9etN3WHSw/+
 mg5ATt8nW2gZ9tM7agWAjawq9f1KP4hMFCwB/Df2ODS+KFvsZjsYEyBA1lpjDeqPFs
 fmZxIPA0NKwK2PhaG/DLSl/SXsAuZ7CPq2tV+AIK8hrG0JWjW4eG2d4AxlAbiT9526
 jOy3tLAl8gqZw==
Date: Tue, 3 May 2022 16:14:37 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Message-ID: <YnE4zTD4Klact2eQ@Hephaistos>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_071516_988380_E39FD218 
X-CRM114-Status: GOOD (  21.17  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot from SD if SD-Card is present - Beaglebone Black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 02, 2022 at 08:35:55AM +0200, Ahmad Fatoum wrote:

> There is, but I'd check first if it's possible to boot from eMMC only
> as a fallback if SD boot failed. On some bootroms, this is possible
> and can easily be scripted in barebox with $global.bootsource
> and $global.bootsource_instance variables.

When I type "magicvars" I have no global.boosource. Is that a "no
bootsource in your bootrom" or has this a fetaure to be enabled as
a CONFIG_ at compile time? =


However, booting from internal MMC is normal use case, SD-Cards are only
inserted for updates and if some invalid SD-Card is inserted and system
does not boot because of that I can live with that.

> title		BeagleBone Black - M2M
> version		5.17
> options		rootwait
> linux		/boot/zImage
> devicetree	/boot/am335x-boneblack.dtb
> linux-appendroot true
> =

> This way, you can just type boot mmc1.1 to boot. linux-appendroot
> will have barebox add a root=3D option pointing at the device it read
> the bootloader spec file from. You'll want to set CONFIG_MMCBLKDEV_ROOTAR=
G=3Dy
> to get root=3D/dev/mmcblk* fixups instead of partuuid (which might be the
> same if you have the exact same image on SD and eMMC).

I already investigated bootloader spec but have it much more complicated
in memory. This is darn simple and allows me to boot from different
partitions with this same identical setup, right? I will go for it.

I have no CONFIG_MMCBLKDEV_ROOTARG=3Dy, UUID is fine since all roots are
individually formatted, no same image.

But alas, the rootfs is not appended. I created an entry just like you
proposed and this happens:


barebox@TI AM335x BeagleBone black:/ boot mmc1.2
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'BeagleBone Black - M2M (/mnt/mmc1.2/loader/entries/boneblack=
.conf)'
blspec: booting BeagleBone Black - M2M from mmc1

Loading ARM Linux zImage '/mnt/mmc1.2//boot/zImage'
Loading devicetree from '/mnt/mmc1.2//boot/am335x-boneblack.dtb'
commandline: console=3DttyS0,115200n8 rootwait
[...]
Waiting for root device ...

What could I do about this? =


> boot already accepts multiple boot targets to try in order,

Okay, I was just not aware somehow. To use it for that.

So /env/nv/boot.default will take "mmc0.1 bootchooser" with bootchooser
deciding between internal mmc1.1 and mmc1.2.
If i get bootloader spec booting to fly.


>   if detect mmc0; then
>     boot mmc0.1
>   fi
> =

>   boot mmc1.1

Where is this scripting stuff going into? It is not boot.default (gives
me errors like "no entry if ... found"), is this going into entry
boot.default points to?

Since I have bootloader spec not running yet, I have "insidem2m_sd
bootchooser" in /env/nv/boot.default. This works well, if no SD-Card is
inserted and I get a nasty red error with both variants.

Without the detect mechanism in insidem2m_sd I get

Booting entry 'insidem2m_sd'
mount: No such file or directory
could not open /mnt/mmc0.1/boot/zImage: No such file or directory
ERROR: Booting entry 'insidem2m_sd' failed
Booting entry 'bootchooser'

with this detect mechanism I get

Booting entry 'insidem2m_sd'
detect: Connection timed out
ERROR: Running script '/env/boot/insidem2m_sd' failed: error -127
ERROR: Booting entry 'insidem2m_sd' failed
Booting entry 'bootchooser'

Each time it goes to bootchooser which successfully boots internal
MMC... When SD-Card is inserted it chooses it successfully in both ways,
so both variants work well.

> On less recent kernels, the order might change, but at least now it's
> fixed (with aliases).

I spent the whole day to update Kernel, bootloader, rescue SD-Cards,
Install scripts so now internal mmc is mmcblk1, external SD-Card is
mmcblk0 (5.10.12 -> 5.10.63). Like barebox was alaways.


Kind Regards
Konstantin Kletschke

-- =

INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Stra=DFe 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de =


Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, Dere=
k Uhlig
HRB: 111204, AG Hannover


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

