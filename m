Delivery-date: Mon, 09 May 2022 10:06:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nnyPi-006vTL-Ur
	for lore@lore.pengutronix.de; Mon, 09 May 2022 10:06:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nnyPh-00021K-Ng
	for lore@pengutronix.de; Mon, 09 May 2022 10:06:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E52gCeVA33PeW9dP77s4/m04qHxCdl8h5edZzvsTcHo=; b=pJHBboVIngiXik
	Zk/KWb1GSmJouro/tptAic+qGtBx9JqyOUSGNU5dI2hMz35vfQflCCHsO0SZmjA5TZgbgXqPj3ofq
	HDrSZ3RAGZCcmMPP5RRNPpvuXO2j/17dFihR0zPGjT+UO9GTjsKpsJx7mY0gew03kTf6ZkW2g5adQ
	CvhVEhs3SL3+RSF2EVytHS0DF/uftWU1C9bywxzsN3gIynvWq9gJ/Igl3aDmywWhRHrgfeP9Vl3K4
	jqMiY9Y3Cc2m0RLF+HE4kZi8RpSddIxl1MoWaFqvz/wC1CFRBEtkFiwBkghP6obdDO8WAmmraxqHu
	SwZ7xfjGgi0E5ixQkchQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnyOJ-00D2lj-MT; Mon, 09 May 2022 08:05:15 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnyOD-00D2k0-CE
 for barebox@lists.infradead.org; Mon, 09 May 2022 08:05:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id B10164034E;
 Mon,  9 May 2022 10:04:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1652083470;
 bh=shGvAbzhnv+prZXpwfTMS3CfJIwhz5fdlhAkkz5jMJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dnasr4Tp0T6Y+txiCpjuaTv/Nb8++BWlaWcymTdmsfwV0B9jvT/06TZCcojAp5STP
 tmBR7fIqAM+Igxs3hFrQcBvhjV+ce5F8H53X60muR4fpb3KXD8mvK74kl1JbIhSvZV
 jzp2fq+QlCBE3vvJ781M3OBZZCgOLH/2AJic7NIsjQfD6sk+yVc1kZZNGkPl/N3l11
 k0NjknpYvRtLfyFbN0y543tKFSjAw/gKjUrX1cz97eTgZIiCsJEJlWs/RbXcEz5rFa
 BHgZb5G336HP3g6dP+x8SZYiB+M0pmDVdj2SksrIHdJDxKKgxk7WDmZaWOBW+VxJFo
 rZpr5I+7dZBXw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pNLITGSTJKWJ; Mon,  9 May 2022 10:04:28 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id A3221401A1;
 Mon,  9 May 2022 10:04:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1652083468;
 bh=shGvAbzhnv+prZXpwfTMS3CfJIwhz5fdlhAkkz5jMJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AiRkq4DnNFf+sdtUZOd92oNSFHUJXQKnpsunlqJTGdYOqDDcpUVN891H/EcGcrvRl
 JpmD36JpreJVFQQlc85u6Cea+QoGXr0EZWzxhtw69hkQMSQ34jRRm8hEOhoWGMp66F
 XAP3YQ2tyImA6e4Xek5FXdyQprWeyxpPpeQnI24VWQdFOlregpFyo9tCpL2fyrrNFh
 SyFwKeJBxkyqUM9lBcrlBiMQL7WBWhuzE4yyJkcllE/Jn3OoPAOMJcPAc6AuHI+7Ay
 3wDhOqfoxkQaLA2QF72eH4rXocpW87qXYRgqY5zqOBYDaT9ehTZo6GtR0mZgjBfk+A
 cgdZoFw3rzk3g==
Date: Mon, 9 May 2022 10:04:27 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <YnjLCw6F+WAn9AqI@Hephaistos>
References: <Ym6y6LXmdC9h3u4n@Hephaistos>
 <6d70e56b-1d6f-64dd-65f5-c8235803d6db@pengutronix.de>
 <YnE4zTD4Klact2eQ@Hephaistos>
 <20220505070602.GG4012@pengutronix.de>
 <YnN7wHE7AgE0FC0h@Hephaistos>
 <20220505082507.GM4012@pengutronix.de>
 <YnObAylvwzObEn+2@Hephaistos>
 <4df2b2cc-8153-43f8-ee79-86f3423563d7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4df2b2cc-8153-43f8-ee79-86f3423563d7@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_010509_912605_A3578339 
X-CRM114-Status: UNSURE (   5.66  )
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

On Fri, May 06, 2022 at 02:20:04PM +0200, Ahmad Fatoum wrote:

> Great that you got it working. I'd still suggest that CONFIG_MMCBLKDEV_RO=
OTARG=3Dy
> be used for new projects with new kernels an with the same aliases hardco=
ded in

Looks great, works:

barebox@TI AM335x BeagleBone black:/ boot mmc1.1
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'BeagleBone Black - Inside M2M (/mnt/mmc1.1/loader/entries/bo=
neblack.conf)'
blspec: booting BeagleBone Black - Inside M2M from mmc1
Adding "root=3D/dev/mmcblk1p2" to Kernel commandline



Thank you!

Regards
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

