Delivery-date: Thu, 05 May 2022 11:00:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmXLI-002XQv-01
	for lore@lore.pengutronix.de; Thu, 05 May 2022 11:00:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmXLG-0000np-4x
	for lore@pengutronix.de; Thu, 05 May 2022 11:00:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kZ4l1h2uk/6LBFBbFOd0qrELVmAGth+mlGqWqUSRX64=; b=KFLVCrOOPXXJTR
	CzOXCbwJ+Di4RYAQxkt311iCqGsr1Z05d1nMRzWfBmwLseKeO5or4B/qXcBXGiCVkmnlZFLZ1zyf8
	s/CHopcEvppnC8qfn84s1gFCkYvRythgCCM7yXcvUoyPZq+np2OsCQCuUb+12BDsliYzzKX8yZS1k
	NhYF3FG3uQEw4m4j28KuR/R4hHR9wAKpi4oKBDR3ocCgIB6pVSmlcla/Pq3025QFdarSPvX0kasyh
	iGq5dUGnP0YCauq2FivILAZ3ENerIJehxVxQchVYG7hVMIQr2rHr6uukv0TZQfDSwZxA22hy/qSvC
	eSQ8mtr0LjJdv1zllUPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmXJj-00EtRS-5K; Thu, 05 May 2022 08:58:35 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmXJd-00EtOU-3Y
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:58:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id A2682402F7;
 Thu,  5 May 2022 10:58:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651741102;
 bh=RgjD5zx9fT+/xN0xl5zgBlupPrprT6vsM9GLbPQ4k7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HG1PBwm5jjV6styPBh15gYXuRx+4MB4srqwiBfDRBp3/SswO4RM1c67N7W5hdcLJd
 CfhyZZKCLH7s6CIcSnWTvVUcEWnBYmVozIMapDYeE8L3senqfwTJqm0rp1fBIS1TBa
 zF3LzzyIA1zfZ6BNHQ49cKRcLjTUS8/rjMrL5LE3huqoQLPBNPfhWtfeVI8UCuitfS
 w6ea8iPThAo2GxdxXDDrMqUYozgVJrc06x/0s5XNbH9dFuKA49JSEiELwcJC9NS7aC
 d8u78oi30Q2zckppWZ48w8KvXrcziKuSFSozboYZ78DW8z4ZEQtoGa5QPjcwESlqk+
 y8SKKNdIfcWSQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-_gRQdptJDg; Thu,  5 May 2022 10:58:22 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id ECECC40130;
 Thu,  5 May 2022 10:58:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651741102;
 bh=RgjD5zx9fT+/xN0xl5zgBlupPrprT6vsM9GLbPQ4k7Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HG1PBwm5jjV6styPBh15gYXuRx+4MB4srqwiBfDRBp3/SswO4RM1c67N7W5hdcLJd
 CfhyZZKCLH7s6CIcSnWTvVUcEWnBYmVozIMapDYeE8L3senqfwTJqm0rp1fBIS1TBa
 zF3LzzyIA1zfZ6BNHQ49cKRcLjTUS8/rjMrL5LE3huqoQLPBNPfhWtfeVI8UCuitfS
 w6ea8iPThAo2GxdxXDDrMqUYozgVJrc06x/0s5XNbH9dFuKA49JSEiELwcJC9NS7aC
 d8u78oi30Q2zckppWZ48w8KvXrcziKuSFSozboYZ78DW8z4ZEQtoGa5QPjcwESlqk+
 y8SKKNdIfcWSQ==
Date: Thu, 5 May 2022 10:58:20 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <YnORrP0yMWAtYkW+@Hephaistos>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos>
 <20220505070602.GG4012@pengutronix.de>
 <YnN7wHE7AgE0FC0h@Hephaistos>
 <20220505082507.GM4012@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505082507.GM4012@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_015829_342588_0C66A54E 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

On Thu, May 05, 2022 at 10:25:07AM +0200, Sascha Hauer wrote:

> Is this a DOS partition table or GPT on this card?
> I assume it's a DOS partition table in which case you should have a
> variable mmc1.nt_signature. Set this to some arbitrary 32bit value.
> Several partitioning tools set this automatically, but not all it seems.

I investigated from running system:

/dev/mmcblk1p3: LABEL=3D"rootfs.1" UUID=3D"6bd1a1f7-f1cb-4121-b1e1-4abe41aa=
05e6" BLOCK_SIZE=3D"4096" TYPE=3D"ext4"
/dev/mmcblk1p1: SEC_TYPE=3D"msdos" UUID=3D"ACC9-583C" BLOCK_SIZE=3D"512" TY=
PE=3D"vfat"
/dev/mmcblk1p4: UUID=3D"348c5617-7055-44f9-a658-562d8bb299a1" BLOCK_SIZE=3D=
"512" TYPE=3D"xfs"
/dev/mmcblk1p2: UUID=3D"e15c856f-aa7f-46b2-9f2e-58672eaaeca5" BLOCK_SIZE=3D=
"4096" TYPE=3D"ext4"
/dev/mmcblk0p2: UUID=3D"f4c88afd-2420-4d50-8672-9ed4cd2d3ff9" BLOCK_SIZE=3D=
"4096" TYPE=3D"ext4" PARTUUID=3D"eaabcc21-02"
/dev/mmcblk0p1: SEC_TYPE=3D"msdos" UUID=3D"CBEC-9FB6" BLOCK_SIZE=3D"512" TY=
PE=3D"vfat" PARTUUID=3D"eaabcc21-01"

You mean this PARTUUID stuff, right? Interestingly the external SD-Card
has something like this. So I tested bootloaderspec booting from there:

barebox@TI AM335x BeagleBone black:/ mount mmc0.1
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
mounted /dev/mmc0.1 on /mnt/mmc0.1
barebox@TI AM335x BeagleBone black:/ devinfo ext40
Driver: ext4
Bus: fs
Parent: mmc0
Parameters:
  linux.bootargs: root=3DPARTUUID=3Deaabcc21-02 (type: string)
barebox@TI AM335x BeagleBone black:/ boot mmc0.1
Booting entry 'BeagleBone Black - Inside M2M (/mnt/mmc0.1/loader/entries/bo=
neblack.conf)'
blspec: booting BeagleBone Black - Inside M2M from mmc0
Adding "root=3DPARTUUID=3Deaabcc21-02" to Kernel commandline

Loading ARM Linux zImage '/mnt/mmc0.1//boot/zImage'
Loading devicetree from '/mnt/mmc0.1//boot/am335x-boneblack.dtb'
commandline: root=3DPARTUUID=3Deaabcc21-02 console=3DttyS0,115200n8 rootwait
Booting Linux on physical CPU 0x0

[...] blablabla [...]

mmcblk0: mmc0:aaaa SC16G 14.8 GiB
 mmcblk0: p1 p2
EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (null)
VFS: Mounted root (ext4 filesystem) readonly on device 179:26.

Thanks for pointing out to the root cause!
Either I change my sfdisk scripting to create partitions including
PARTUUIDs or... is utilizing this "variable mmc1.nt_signature" a
sufficient workaround in barebox? I can not handle this information,
yet.

Kind Regards
Konsti

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

