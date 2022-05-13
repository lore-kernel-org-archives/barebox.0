Delivery-date: Fri, 13 May 2022 20:06:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npZg4-00CBee-66
	for lore@lore.pengutronix.de; Fri, 13 May 2022 20:06:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1npZg2-00019B-DV
	for lore@pengutronix.de; Fri, 13 May 2022 20:06:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LXiGeiL62EofSvRmHWROZMG0gCmTNFb04Zj2LvDFtE=; b=dLl01ILhVXE5MZ
	EvSkRXtbdY2Yfnp+EiBakaazdwBL1r1sp4XudhlLoacZJNd7RmmoBb/0aEeTG4bYuDjuqK+Vp75AQ
	PPGDG34T1z7TFAWb3Kvs86dhC5ck0b+MtwUyX26c7jtYkKODXWgm++jler0gwUgPZo76+9U+ylEQ2
	BI9nMfst5EKUNFKGJQTKYgH8pRItiofvPwgU+2ZYPST/KXmQxuBSivTmP/1upFzDQDucxhRDemVhj
	JvBc0UVSeaAsPgyslOnGPyU2CIDgYmsTKt4XIQnadJ2A/NJ80N4aNGCBVNav1c+bdbw1uSJJZUsY7
	GFb+MyeCloVbEWrD10KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npZd9-00HAX5-39; Fri, 13 May 2022 18:03:11 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npZd4-00HAWi-0F
 for barebox@lists.infradead.org; Fri, 13 May 2022 18:03:07 +0000
Received: by mail-lj1-x235.google.com with SMTP id g16so11189394lja.3
 for <barebox@lists.infradead.org>; Fri, 13 May 2022 11:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=canFWERaYHoVcBz7AEQk0a5Vn8cAabOS1IXT/PAQl7o=;
 b=Ctz69mhUxPZtMh6Qe6JaT7cOpNY/MSObLWaoZQ7gkePeLeYUqCpRIh2Dm/FnVgp6HG
 +Mg5OaVKz8Wc1Zd3Ai2/q0rLmdN4OsyvJm5ofEl6uZArvSkE/lSm/9rrMuiEVYf5aBLi
 efMrnkBccF2Pb+QZhPbWiyyJ3T8DIFI1bnbv/kvWj5YsglzwLJTy4XqQuSnw1T+D/Dzh
 gYAFES7kHlZq1qHuUrL52DeMZMe3yKD5I5MKLaRE181Swifdldym27Wwfv+bOgLq/kKK
 1qK9z+qH3HDx0CzXRGZ8Kt0wa9TVr7IAIbeOmIAWTqCFVBMi9mwwo8sv/Mp0DKL/oje3
 dPBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=canFWERaYHoVcBz7AEQk0a5Vn8cAabOS1IXT/PAQl7o=;
 b=0vXcGKPBF0AFpXMTYOuZ2TI3NqveB6Q3xWIxbcFUmV14WqO1Pi/uyO5xMSym1iHFMh
 U7CtraI8cGsiMblt47bwXO3czF5B3HuH6DLXmMYT/pT4pcTIk0GYrsQFSUZLjwXBJMlu
 qcSBRrildO0TCmUb/fqY5v7jIkqrV24F2G/DB537JkfB4FTTHNoo/R95IDnweo+oib39
 X/TBFJ8ya/XumxY3OXnmxiv2YhLXn/rF2qa92Q11G6/1+JEOwhxfpRIU41y1nhArknYV
 EXDTJ50hyMJN3DuOxhQkcEcZb3E1pReqMDDQWVTl1uU3rjZf+hZHbk4jV/tQ/flyF2w6
 +1nQ==
X-Gm-Message-State: AOAM532tnx+awH7IKRpuimjZ+SR4cTq8WYGUAR3RVTFBz5uR40B8qY+J
 8KqLJ9U4WgKgvZqG9BEirQTsYg6rbXiGV/dM/2NQ/g==
X-Google-Smtp-Source: ABdhPJyUBqOWnJjl7p0kQDQnjskiSWyLYsIN0hqR9o513yFjQLAzC0MomCb0TwYFK+CwswhEmxOF2TjEqodRhOt57Rg=
X-Received: by 2002:a05:651c:b90:b0:250:7fa3:b234 with SMTP id
 bg16-20020a05651c0b9000b002507fa3b234mr3806741ljb.188.1652464981223; Fri, 13
 May 2022 11:03:01 -0700 (PDT)
MIME-Version: 1.0
References: <1607cab4-d2d3-b5be-99f1-f9f7347d1888@emfend.at>
 <Yn4zMYZte5E6XBXl@ravnborg.org>
 <2d23b3c4-8374-6e17-05ab-ed3829d985a0@emfend.at>
 <8ac33383-0da9-7609-0ba0-61cf02fd4034@pengutronix.de>
In-Reply-To: <8ac33383-0da9-7609-0ba0-61cf02fd4034@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Fri, 13 May 2022 11:02:50 -0700
Message-ID: <CAMHeXxPobn72Gt4OGkZW42_ALQUS-QXaOKEfGffSOgxvcMSkpA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Matthias Fend <matthias.fend@emfend.at>, Sam Ravnborg <sam@ravnborg.org>, 
 barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_110306_290741_6726AF58 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: One barebox image for multiple boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 13, 2022 at 5:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> >>
> >> Not what you asked for but maybe duplicating the minimal set of
> >> infrastructure allows you to determine the board type anyway in lowlevel?
> >
> > Thank you for pointing out this interesting example.
> > Since in this case things like I2C devices are needed for board detection, I think putting them in lowlevel init is not a good idea.
>
> The i.MX8MN-EVK uses i2c to differentiate between two variants,
> look for power_init_board_pca9450 and power_init_board_bd71837.
>
> We don't pass different device trees there, but this can easily
> be retrofitted once it's useful (i.e. once we have PMIC drivers
> for one of these chips).

Something I've done is to modify the unflattened device tree
programmatically based on board type.  For instance, set one device to
status = "okay" and another to status = "disabled" based on board
type.

One needs to do this before the driver(s) for those devices are
initialized.  But other drivers can be initialized first.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

