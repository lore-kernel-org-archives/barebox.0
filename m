Delivery-date: Fri, 17 Dec 2021 13:53:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCje-009SlK-Cu
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 13:53:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myCjc-0003SC-Up
	for lore@pengutronix.de; Fri, 17 Dec 2021 13:53:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N+5o76i+E+sO7FZFJ6OSrzPOcjh+psGIQ5qTblo/T4=; b=0y+H1/PsvaMfzU
	VaRu8i8Pl9bxWv4IIqWGGZ4hmxgI8XbILW+TXd34vaaOH2kF2ZWKnX6Gxy5AGmBMAlb81R9KZvKWz
	lXry4lDgXI0gJlj8PQUTuoeCI3wdHSx9C4o4h1xXLBPwLfPaO6n6jru669gtIRizh2Wl2xAPdKAdT
	s7CW6wqDEJlmLmIcEZhg2bwFWrbsyXi9dhxRYTdY3PudwORG0kDvz9kWj6XAgYhfa7bn5A39322u0
	F8uWMBol/LSGW5KoSzfZG+LwQGE8B+gNNN07N9uFVq+LkcRJoa6jPCVF6h3fKP7cmn9e/h/RFQaib
	l+WymSCOmBVzTKPy3cdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCi8-00AFWo-3w; Fri, 17 Dec 2021 12:51:44 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myChp-00AFT2-Bd
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 12:51:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.inside-m2m.de (Postfix) with ESMTP id 976A34020C;
 Fri, 17 Dec 2021 13:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639745453;
 bh=eThE0kF58SkvbUKyS8SWYSJU+wdYlE5E2ImaiQ41tBI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G5OxgBKAWLuiN+5d1/zjrbYGqMKtHTVhYq0DdJDOmxo5BJw8quGdHJvtv6o3uYHnt
 XPEZbTRlCFgRUGnXX9kLITcBWD+qyRB4rtbz4aMim98KudYI/gBVS1zs1D+/JnYn4A
 VliL9vUBbVVld5TDbT9h/7cXlZTP+eag+6gq8BW585iNGefHmYOQpjl1e9gznyEWxW
 46zQhPQOdBIUbNk9pFJrpkCAzxtZzWRtKVBczmkStnXrLyIw/TV/FpJktZgf4PUkSK
 BUfi6Y1Bwv3oYbmbHntKDZUodHYWmtwClCjWferiQytfWzhy6UZMrIqqePkTv9mAHI
 WpTQ5NHgkIISA==
X-Virus-Scanned: Debian amavisd-new at mail.inside-m2m.de
Received: from mail.inside-m2m.de ([127.0.0.1])
 by localhost (mail.inside-m2m.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZnMEFLBcpyO; Fri, 17 Dec 2021 13:50:53 +0100 (CET)
Received: from Hephaistos (pd95bb737.dip0.t-ipconnect.de [217.91.183.55])
 (Authenticated sender: konstantin.kletschke@inside-m2m.de)
 by mail.inside-m2m.de (Postfix) with ESMTPSA id 141AC40082;
 Fri, 17 Dec 2021 13:50:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
 s=default; t=1639745453;
 bh=eThE0kF58SkvbUKyS8SWYSJU+wdYlE5E2ImaiQ41tBI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G5OxgBKAWLuiN+5d1/zjrbYGqMKtHTVhYq0DdJDOmxo5BJw8quGdHJvtv6o3uYHnt
 XPEZbTRlCFgRUGnXX9kLITcBWD+qyRB4rtbz4aMim98KudYI/gBVS1zs1D+/JnYn4A
 VliL9vUBbVVld5TDbT9h/7cXlZTP+eag+6gq8BW585iNGefHmYOQpjl1e9gznyEWxW
 46zQhPQOdBIUbNk9pFJrpkCAzxtZzWRtKVBczmkStnXrLyIw/TV/FpJktZgf4PUkSK
 BUfi6Y1Bwv3oYbmbHntKDZUodHYWmtwClCjWferiQytfWzhy6UZMrIqqePkTv9mAHI
 WpTQ5NHgkIISA==
Date: Fri, 17 Dec 2021 13:50:51 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Roland Hieber <rhi@pengutronix.de>,
 Trent Piepho <trent.piepho@igorinstitute.com>, barebox@lists.infradead.org
Message-ID: <YbyHq7vEIh/TuUWh@Hephaistos>
References: <9215c9815f25cc3328a05d6c9553ac36@inside-m2m.de>
 <CAMHeXxOoXjqtSGXdE73oROUk9ybFmFv7gi8PtzLsKn=iH+FXLA@mail.gmail.com>
 <20211205225529.5rf5zqpbg7trovst@pengutronix.de>
 <c4d432350649f31dbc9b732e96034785@inside-m2m.de>
 <527cfa29-69bf-876b-b716-4ed1180b0166@pengutronix.de>
 <0af65ce5839f3990206a5b9ac94d00ac@inside-m2m.de>
 <3e8efae8-2c97-1359-cc0d-acbb17b555e8@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e8efae8-2c97-1359-cc0d-acbb17b555e8@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_045125_590657_785127EE 
X-CRM114-Status: UNSURE (   7.93  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Howto implement bootchooser <-> rauc interaction
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 17, 2021 at 11:00:28AM +0100, Ahmad Fatoum wrote:

> You need to tell bootchooser which state to take via bootchooser.state_pr=
efix,
> but that's it. No need to mess direclty with the state variables.

Okay, this sounds reasonable.

> See https://elinux.org/images/9/9d/Barebox-bells-n-whistles.pdf Slide 26 =
for an example
> /env/nv for a redundant boot setup.

Thank you, I will investigate.

> It's a two step thing. First you define your targets, e.g. system0 and sy=
stem1
> Then bootchooser knows the name of the state variables to consult and then
> basically does boot ${global.bootchooser.system0.boot}.

Okay, I need to figure this out.

Thanks again for your patience, I will test out all your hints and
examples and instructios, thank you!

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
http://www.inside-m2m.de

Gesch=E4ftsf=FChrung: Michael Emmert, Ingo Haase, Dr. Fred K=F6nemann, Dere=
k Uhlig
HRB: 111204, AG Hannover


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

