Delivery-date: Thu, 05 May 2022 11:40:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmXy7-002ZmZ-I1
	for lore@lore.pengutronix.de; Thu, 05 May 2022 11:40:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmXy6-0006Zw-24
	for lore@pengutronix.de; Thu, 05 May 2022 11:40:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5aMSOqk0S9lPzsAcsWwGFSN/b5kotKNt37pI8tpdWE=; b=Dirlau3iG3KPi1
	R5ttZtJVwBU1ZZpK3ulpwYiC4n4J1RxfYQ1Rmeuw/LJuB7/JddckCy7ckeiKDL9mbvvma9xpHNXr+
	1RibvEqvj0Cjv0nfh8pr41CdcN8CH9QXNxairb5/oIOYnG34P0EzFbv7VXFpg/OOGjZpkHWdSu2qE
	7uU9VbmwwV3QEF68W75yMXPehOYHLFbP1SI2lSL857VnBx9dtXm98gPAwWHkcnUT1KCo+22QMuNwN
	WZ3XrMjqGp/F+Nszx3ABrdR5YRYoWCS08SRs/0GqlYUDV1cfYW80Tr1nEMsewU7aZd68QBcPQQl+0
	c7MtSk1QxC+ueaOM+jAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmXwg-00F4gI-6S; Thu, 05 May 2022 09:38:50 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmXwb-00F4fp-DE
 for barebox@lists.infradead.org; Thu, 05 May 2022 09:38:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 68583402F7;
 Thu,  5 May 2022 11:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651743493;
 bh=2CVAmInssmnRQzmwnWTckK9lMcnKSJiWlz7MzHQwlK0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bUEEz8bwH8ztbQCRK4vc6Vk1+K17nKFjJ9sDOQHk3GDzpv1y4g0m2QfLS+dCIhwN+
 jag5uMQCNu6FXaF12xqqI9QqfNPXy0o+WWrCSEBjj5OZ7rgFsF4tJ1L6gIWGpLWX7P
 xi5eA/Oz3gwX7hxonFhcbqB4B+PY/2AAMPqJZWSf2l1q3w2aJwkYkFRmALba6f2ROF
 nx5JRxHi3DA2kYOjVfW5y9xP+XjvOl++97O56DDtj+CVa6wj1gw8/k6/RRzIBNDqpP
 2VIqkErmQAemS6i7s+iH3QUfFn+v0nECOjzQ1Jvl9n4reVNWeFY6XOP56JEoJsiElI
 GlMdfe5+/fxDw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VO1jOMmHmfCS; Thu,  5 May 2022 11:38:13 +0200 (CEST)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id DBF0940130;
 Thu,  5 May 2022 11:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1651743493;
 bh=2CVAmInssmnRQzmwnWTckK9lMcnKSJiWlz7MzHQwlK0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bUEEz8bwH8ztbQCRK4vc6Vk1+K17nKFjJ9sDOQHk3GDzpv1y4g0m2QfLS+dCIhwN+
 jag5uMQCNu6FXaF12xqqI9QqfNPXy0o+WWrCSEBjj5OZ7rgFsF4tJ1L6gIWGpLWX7P
 xi5eA/Oz3gwX7hxonFhcbqB4B+PY/2AAMPqJZWSf2l1q3w2aJwkYkFRmALba6f2ROF
 nx5JRxHi3DA2kYOjVfW5y9xP+XjvOl++97O56DDtj+CVa6wj1gw8/k6/RRzIBNDqpP
 2VIqkErmQAemS6i7s+iH3QUfFn+v0nECOjzQ1Jvl9n4reVNWeFY6XOP56JEoJsiElI
 GlMdfe5+/fxDw==
Date: Thu, 5 May 2022 11:38:11 +0200
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <YnObAylvwzObEn+2@Hephaistos>
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
X-CRM114-CacheID: sfid-20220505_023845_635640_ECF37A19 
X-CRM114-Status: UNSURE (   5.39  )
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

> Several partitioning tools set this automatically, but not all it seems.

I got it. The partitions are created via sfdisk. No PARTUUID.

If I change the disk identifier with fdisk afterwards, the partitions
magically also get PARTUUIDs. This can be scripted (by me):
Something like
fdisk /dev/mmcblk1 =

x
i
0xaffedead
r
w


Problem solved, with this the bootloader spec is working and I will
implement that!

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

