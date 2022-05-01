Delivery-date: Sun, 01 May 2022 18:28:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlCRH-0056l6-Fq
	for lore@lore.pengutronix.de; Sun, 01 May 2022 18:28:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlCRE-0008DV-S3
	for lore@pengutronix.de; Sun, 01 May 2022 18:28:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MZ5qG+34hiaAg/wwdc2HAFS06PGlzv1CU7V8xdxCzVg=; b=ui4zvfLDl6bwQ+
	LS0v0oMX6m8YR6TAjsSBXneBTMcEcEGBPsQUcLyHeUJb7QMASTlxg9zFDTTuSPeUUmWWqPE+NA6we
	/eISCMskFwyU3Sv2X67YH8BrOOTjpwrtaeElBnC/00ElrJKlzld+EdxNk7s1FibP8j71xsrxTLuVG
	w+ZdOJTlQqmMiBRHQBvbb/+UX3UCPQzd3LHtBCzH+xblN7A44MELzhcCkILvQiiN/QWy0MhNeYUhJ
	DbeiwrPlihjIYAcay7+GI037Ub2QhOAfryD/Xg5ASYcQS3L+/1gc4Utg/VIUzJiDx163V3g2/oyaT
	tFRTg90yrT6iMHFCKggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlCPW-00Ga2a-29; Sun, 01 May 2022 16:27:02 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlCPP-00Ga2A-IM
 for barebox@lists.infradead.org; Sun, 01 May 2022 16:26:58 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id B78F4403FA
 for <barebox@lists.infradead.org>; Sun,  1 May 2022 18:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651421929;
 bh=qJJ9LHg94RjclzQSpnKIaRHHaF7eaKis/9sXYPgo4PU=;
 h=Date:From:To:Subject:From;
 b=KvM0qn53URHnXVoUfkMfQsjx5X9+4J9jNAndO6sb01xUC1FsZMIKM17BFEWhEs4xI
 jC5bHSVh6ppUJf2ppdOrAauVNhqjBp8NPouc3DjlHBzwVLIHJCBxlPKupT32Z0TzIP
 SbFR/1zgtHpUcYgGlUAeOkoMGRFSSgkg3coNGaGGBrsvOSv6w81JHUbv2mZoMVsE7k
 FYXBMiSLztFB9ONRvlOpRnhb4BtN1v3Aat6EdhkexNHFSpaYWdCzo4wsIsW1weADCu
 PVaV9C94/tR66CCUpqDrGpMHf9EQG3UX16IQeVLZd//AV7JUUl7SeAv+B+aS5DIfu6
 46OF377RX7B/Q==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R2DNlnBKml2l for <barebox@lists.infradead.org>;
 Sun,  1 May 2022 18:18:49 +0200 (CEST)
Received: from Hephaistos (unknown [94.31.102.219])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 5C21B403DE
 for <barebox@lists.infradead.org>; Sun,  1 May 2022 18:18:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651421929;
 bh=qJJ9LHg94RjclzQSpnKIaRHHaF7eaKis/9sXYPgo4PU=;
 h=Date:From:To:Subject:From;
 b=KvM0qn53URHnXVoUfkMfQsjx5X9+4J9jNAndO6sb01xUC1FsZMIKM17BFEWhEs4xI
 jC5bHSVh6ppUJf2ppdOrAauVNhqjBp8NPouc3DjlHBzwVLIHJCBxlPKupT32Z0TzIP
 SbFR/1zgtHpUcYgGlUAeOkoMGRFSSgkg3coNGaGGBrsvOSv6w81JHUbv2mZoMVsE7k
 FYXBMiSLztFB9ONRvlOpRnhb4BtN1v3Aat6EdhkexNHFSpaYWdCzo4wsIsW1weADCu
 PVaV9C94/tR66CCUpqDrGpMHf9EQG3UX16IQeVLZd//AV7JUUl7SeAv+B+aS5DIfu6
 46OF377RX7B/Q==
Date: Sun, 1 May 2022 18:18:48 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <Ym6y6LXmdC9h3u4n@Hephaistos>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220501_092655_782693_E1318D9A 
X-CRM114-Status: UNSURE (   5.47  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Boot from SD if SD-Card is present - Beaglebone Black
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

I have a Beaglebone Black whith internal MMC and external SD-Card
interface.

I boot from internal MMC always. The system itself aways boots from
internal MMC.

Is there a way - may be scriptable in boot entry - to start system from
external SD-Card, if it is present?

Normally I boot this way, bootchooser select system0 or system1:

#!/bin/sh

mount mmc1.1

global.bootm.image=3D/mnt/mmc1.1/boot/zImage
global.bootm.oftree=3D/mnt/mmc1.1/boot/am335x-boneblack.dtb
global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk0p2 rootfstype=3Dext4 r=
ootwait"

If I stop autoboot and want to use external SD-Card I manually select
insidem2m_sd as a boot entry:

#!/bin/sh

mount mmc0.1

global.bootm.image=3D/mnt/mmc0.1/boot/zImage
global.bootm.oftree=3D/mnt/mmc0.1/boot/am335x-boneblack.dtb
global.linux.bootargs.dyn.root=3D"root=3D/dev/mmcblk1p2 rootfstype=3Dext4 r=
ootwait"

Can this be something like:

IF external SD-CARD IS PRESENT bootentry is insidem2m_sd ELSE
bootchooser

?

Please obey if you are inspecting the CMDLINE, in more recent Kernels
the mmcblk0 and mmcblk1 numbering is exchanged.


Kind Regards
Konstantin


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

