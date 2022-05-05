Delivery-date: Thu, 05 May 2022 09:27:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVtI-002RdQ-UU
	for lore@lore.pengutronix.de; Thu, 05 May 2022 09:27:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmVtH-0002FK-Lz
	for lore@pengutronix.de; Thu, 05 May 2022 09:27:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nrCRpKln1EZu3wa2+klByiYn/110x2VlHFD5ecZeFk=; b=pZJe2hSWzSpzg9
	qQZuY9aVPVC4u8DcyO5vaTyCn1G2q97a/Dr4ZU+WYu/+UeeBdZ3gOJCDyCTe/IPr1+OziG0IT7ulI
	ncb4kKH4wCJDGqkGLTcKiofIz+VDLL9DehBfUUZaWGhMORUYlEqMI90f0tP/IJCOhNZS1D9APswYF
	dWOFUHXjt+fPkWl/GF9KxgRwWUdP0DD/W4StbzaZazsgNGSnBfI5g0oHkJoYSms5La+o4Zmsr23/Q
	bkSi4t4DfST1dOnkqqNgiojqVrpotF+u+sfOR9IcaDozcqGS94V+Kyv//ij+UMcSwkv5F9QSCgJl3
	WlBLrxA1tB1kiZ8RgRpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmVrq-00EODK-3o; Thu, 05 May 2022 07:25:42 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmVrj-00EOAg-NE
 for barebox@lists.infradead.org; Thu, 05 May 2022 07:25:38 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 76169402F7;
 Thu,  5 May 2022 09:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651735490;
 bh=0T3AJivMij/O83E+G8AV0rG/3Cavu4U960gc0VdwK6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JBsa+PncHWRvNs3ByGChyXdIxSeuHlapT/ktiF18728JkuH7IutQ4NlnKt8ndxUCf
 8UWsGCeZrLWEEbtR56nPqMesdCLqpwMxwF6PR7UO/7HS//sREfthwSNz8Qs/ehclz+
 A6JQlM6DUhP65Uq/amrbkzl6dWM5HhLX2nquwAB4gIbZ9qSbGp+lIzIcBUX50nyKux
 tSHCqFhIsFQOIZcY53j9T3WItwPOkHm4RJd+L/l7VaR2dEL+ic7WY1WZGrcFRBUh2y
 CQFSb8p2fnh8wQUqimCICtWn9ltlB93HjnWAHhxmUoq2DxujJ9V2YzgKI35YZRcmJm
 CwcDPeeytqP+A==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cEK92J9KTeYi; Thu,  5 May 2022 09:24:50 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id E7D5640130;
 Thu,  5 May 2022 09:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651735490;
 bh=0T3AJivMij/O83E+G8AV0rG/3Cavu4U960gc0VdwK6M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JBsa+PncHWRvNs3ByGChyXdIxSeuHlapT/ktiF18728JkuH7IutQ4NlnKt8ndxUCf
 8UWsGCeZrLWEEbtR56nPqMesdCLqpwMxwF6PR7UO/7HS//sREfthwSNz8Qs/ehclz+
 A6JQlM6DUhP65Uq/amrbkzl6dWM5HhLX2nquwAB4gIbZ9qSbGp+lIzIcBUX50nyKux
 tSHCqFhIsFQOIZcY53j9T3WItwPOkHm4RJd+L/l7VaR2dEL+ic7WY1WZGrcFRBUh2y
 CQFSb8p2fnh8wQUqimCICtWn9ltlB93HjnWAHhxmUoq2DxujJ9V2YzgKI35YZRcmJm
 CwcDPeeytqP+A==
Date: Thu, 5 May 2022 09:24:48 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <YnN7wHE7AgE0FC0h@Hephaistos>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos>
 <20220505070602.GG4012@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220505070602.GG4012@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_002536_243894_C0D93F9F 
X-CRM114-Status: UNSURE (   8.91  )
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

Hey Sascha,

On Thu, May 05, 2022 at 09:06:02AM +0200, Sascha Hauer wrote:

> It's only "bootsource" and "bootsource_instance", without the global.
> prefix for historic reasons.

Ah okay. Those varables are existing.

If I boot from internal MMC bootsource is mmc and instance is 1.
If I boot from external SD-Card bootsource is mmc and instance is 0.

I hope I did not confuse, my use case is to boot from internal MMC
always, booting from external SD-Card (i.e. use SD-Cards bootloader)
requires pressing a button which is not accessible. Boot from internal
always, if SD-Card is there use its rernel/rootfs.

So it is 100% sufficient (succesfully tested already) doing something like:
* boot.default=3Dinsidem2m_sd bootchooser
** /env/boot/insidem2m_sd mounts and boots mmc0.1
** bootchooser targets (system0, system1) mount and boot mmc1.1/mmc1.2 =


Haken dran!

> Try mounting manually with "mount mmc1.2". What does "devinfo ext40" say
> then? It should contain a linux.bootargs option.

barebox@TI AM335x BeagleBone black:/ mount mmc1.2
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
mounted /dev/mmc1.2 on /mnt/mmc1.2
barebox@TI AM335x BeagleBone black:/ cat /mnt/mmc1.2/loader/entries/bonebla=
ck.conf =

title		BeagleBone Black - Inside M2M
version		5.14
options		rootwait
linux		/boot/zImage
devicetree	/boot/am335x-boneblack.dtb
linux-appendroot truebarebox@TI AM335x BeagleBone black:/ devinfo ext40
Driver: ext4
Bus: fs
Parent: mmc1
barebox@TI AM335x BeagleBone black:/ =


So, no bootargs option :-|

> > Where is this scripting stuff going into? It is not boot.default (gives

> It would go to /env/boot/somename

Thanks for pointing this out!

Kind Regards,
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

