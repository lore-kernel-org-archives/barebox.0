Delivery-date: Thu, 06 Jan 2022 11:01:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5PaV-00Cgli-4X
	for lore@lore.pengutronix.de; Thu, 06 Jan 2022 11:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n5PaT-0000sx-Tw
	for lore@pengutronix.de; Thu, 06 Jan 2022 11:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsbjLaDa1tJYdfy273ecp7qK6Zx08xJ2PfKvD1tBHiM=; b=YhgH7Gu9jhFH0S
	02AP8+n278Uaz0im/cxn0u2xd68OFNZJqoTGvhwIEGvE15yXzIFrOADvoGE7Y2tUKo38EyS+zK0Jm
	eU7x8K7ko4TjE2YVNWHBh+lFm9M3mf7Nb3o0BVRgBndtJ2CaU5/ttN+sRpEWN/rp6z6y90Gfs+NVX
	lpbxb9dhrLZmwQ7OYdfqapiYxBGGyjfhZCffbVFd3GOfd4Z4rwuLuYjokjutKe6xPXA/ZcIaUCJW2
	a2Z+/7MWxaLhDj755I9mrs4/bR8db5yeMCfp0A8LvkOjVHGroz9BSGJaaW5RdMYTt4lt48LpdFGA7
	dww/woYdMYOVuZbPUV+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n5PYp-00HIH6-17; Thu, 06 Jan 2022 09:59:55 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n5PYj-00HIGD-0C
 for barebox@lists.infradead.org; Thu, 06 Jan 2022 09:59:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id CE52B40253;
 Thu,  6 Jan 2022 10:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1641463184;
 bh=M0RSITeiTlGgna5qXCIFwQDvGWsnfx92IjSzChlyaHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bzv+JPK8g5aTxxsbJ5TWVkmwbQPp7KsMVug3K2/fUdLfy+I7S0lDgLOfHy57IigqE
 dK5lanXJufQZLQrDuH3NOmDSms8HCugADHbe4QzeS5s62hK/gjk3LpFgEy1Gqienyz
 jH0okLb26EphjNocCzOck3U3JD9OwUKIJrszcaX7DVBLDMawz/cKqgutg2H97OAhqj
 h8bfmaPVHqtNw8tOPx+JvOQcNgjB8+L2tg1dXWaiqOZGXCOOPcuWsnN+94R8Dfv3Cj
 UubJu/oiWf0CyEUNop5pUsKVwmlGhcGR5Z3I/AGoLKdAsnKcGMTfgm5C3L0iYyNDBg
 FipeZ6H5iGBHw==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PMwGjbub_BXl; Thu,  6 Jan 2022 10:59:44 +0100 (CET)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 913D84006C;
 Thu,  6 Jan 2022 10:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1641463184;
 bh=M0RSITeiTlGgna5qXCIFwQDvGWsnfx92IjSzChlyaHI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bzv+JPK8g5aTxxsbJ5TWVkmwbQPp7KsMVug3K2/fUdLfy+I7S0lDgLOfHy57IigqE
 dK5lanXJufQZLQrDuH3NOmDSms8HCugADHbe4QzeS5s62hK/gjk3LpFgEy1Gqienyz
 jH0okLb26EphjNocCzOck3U3JD9OwUKIJrszcaX7DVBLDMawz/cKqgutg2H97OAhqj
 h8bfmaPVHqtNw8tOPx+JvOQcNgjB8+L2tg1dXWaiqOZGXCOOPcuWsnN+94R8Dfv3Cj
 UubJu/oiWf0CyEUNop5pUsKVwmlGhcGR5Z3I/AGoLKdAsnKcGMTfgm5C3L0iYyNDBg
 FipeZ6H5iGBHw==
Date: Thu, 6 Jan 2022 10:59:42 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Yda9jr1/Od0ULKiZ@Hephaistos>
References: <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
 <YbyGBHs1YWVcgE5X@Hephaistos>
 <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
 <YbyczaAWK6juc0VO@Hephaistos> <YcMwk6mncQ8fSwTJ@Hephaistos>
 <c55ef6c5-c7ea-0663-47b9-141773985ba2@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c55ef6c5-c7ea-0663-47b9-141773985ba2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220106_015949_390721_3A99DEB4 
X-CRM114-Status: UNSURE (   6.75  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 05, 2022 at 06:50:17PM +0100, Ahmad Fatoum wrote:

> RAUC hardcodes bootstate, so that's what you need to use, unless you patch
> RAUC.

Dear Ahmad, thanks again for your technical advise.
My wall of text indeed was intended to ask for this detail, I realized.
If this "bootstate" id hardcoded (Yes, it is) I understand, what's going
on. Nice!

Kind Regards
Happy new year

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

