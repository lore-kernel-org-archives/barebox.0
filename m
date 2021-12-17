Delivery-date: Fri, 17 Dec 2021 15:24:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myE9T-009WoJ-BA
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 15:24:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myE9R-00084w-PQ
	for lore@pengutronix.de; Fri, 17 Dec 2021 15:24:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/KP6jPyriNUkHnLEKSHATFh/dw4IbkYDfu8dVLqbHk=; b=uGv+QV+S7oFGf9
	rji46k1kJEbdE2jx6IUaNhC1T3obFnJsd3i5no5cXD9DNJ0LtIzSuYEnptOk628OqWspZlssyPqoG
	I5ZFM43rHskCRvsSK1Bgr/C/caTdqllfGbRRjmHhNyp7OFFZkjTC1gXWRicr73ecuwFGREqTXXev7
	txYQ1YEydoNe9dABQqgsd0p3KHqgCfdWv7BCN/hqgLmPBqILk5b/Sb9JqUV9ZFaSVyUqEDawsys7S
	tfDpk7aAEiW/vwKs5tfAMiUx6n42hqNaY7nJCQC5b0e9Lwkq4kugO3RNY0XHcpuEgdeKfLMPJaeld
	spSbuMETtyEImRJLYixg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myE7m-00Abgs-AA; Fri, 17 Dec 2021 14:22:18 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myE6b-00AbHO-VE
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 14:21:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id BB0D44020C;
 Fri, 17 Dec 2021 15:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639750862;
 bh=GREEWedn1vNSrrynsb15ZkDKTfFpD14ztJeBU03zdtw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cPzVYjrxmZh7QnjrnHaq25hs0oor/y/rNJfRHMqjk200mYNFlsM3mHdXMCf9ZeJIR
 xHph/oHzyVfQhayqcZgA2TO0agMcv1cMmZLW0f60DZSO4n3abllvoftBmzr09gF4hg
 Iqxjc5HzWvb+TRtdUAHAtISJ8Br9gCSdRikBosZxlutdLXMKEWITIXj1K4gE4my+JH
 hfLXJ0/vWFXMDEyGhBAxBbetVp2i4V42749T5A6Uy16LfaYYo0boLK6JctT0cdQDd2
 4ZN2hIvGMae955zCmMGNV9N0DUp/OiqD2CQ+qki+X0HNe3nWpa4GPlBBcWYtC5Z5wp
 h87CRqmaEL9lQ==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GikCcT6hvoEe; Fri, 17 Dec 2021 15:21:02 +0100 (CET)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 526E940073;
 Fri, 17 Dec 2021 15:21:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639750862;
 bh=GREEWedn1vNSrrynsb15ZkDKTfFpD14ztJeBU03zdtw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cPzVYjrxmZh7QnjrnHaq25hs0oor/y/rNJfRHMqjk200mYNFlsM3mHdXMCf9ZeJIR
 xHph/oHzyVfQhayqcZgA2TO0agMcv1cMmZLW0f60DZSO4n3abllvoftBmzr09gF4hg
 Iqxjc5HzWvb+TRtdUAHAtISJ8Br9gCSdRikBosZxlutdLXMKEWITIXj1K4gE4my+JH
 hfLXJ0/vWFXMDEyGhBAxBbetVp2i4V42749T5A6Uy16LfaYYo0boLK6JctT0cdQDd2
 4ZN2hIvGMae955zCmMGNV9N0DUp/OiqD2CQ+qki+X0HNe3nWpa4GPlBBcWYtC5Z5wp
 h87CRqmaEL9lQ==
Date: Fri, 17 Dec 2021 15:21:01 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <YbyczaAWK6juc0VO@Hephaistos>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <c4ae26b8698992ad37f201101795b1bb@inside-m2m.de>
 <53bdfd89-f363-5cec-4cb1-417c25c90eaf@pengutronix.de>
 <297b3425baa118783dccb6446900fbfa@inside-m2m.de>
 <cf1e6cf6a51dc13ec5275d94e18d23c1@inside-m2m.de>
 <ef8a2a82-91f5-5401-a564-a0ab20da4772@pengutronix.de>
 <YbyGBHs1YWVcgE5X@Hephaistos>
 <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68358567-7665-bd5c-00fe-b410b4ec2518@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_062106_185765_87E58FD8 
X-CRM114-Status: GOOD (  10.42  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 17, 2021 at 02:08:01PM +0100, Ahmad Fatoum wrote:

>   git remote add stable git://git.kernel.org/pub/scm/linux/kernel/git/sta=
ble/linux.git
>   git fetch stable --tags
>   git cherry-pick 663a18271
> =

> Or just update to a more recent kernel release.

I need to figure out how the cherry picking works and for updating the
kernel I need to cope with "my" yocto framework I already deployed here.
The 5.10 branch seems to be the hottest shit, I will figure out how to
implement my own linux based upon the existing build framework...

>   reg =3D <0x300 0xffd00>;

I forgot to substract 0x300 from the length, of course!
Thanks for clarification.

> Could be. You'd have to know how the on-disk partition table looks like,
> but I'd guess that partitions are aligned to 1M boundaries and this is
> as you describe directly beneath it.

Of course, I do not know their layout neither, just to understand the
addressing/length theme.

Thank You Ahmad!

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

