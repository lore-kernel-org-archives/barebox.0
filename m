Delivery-date: Thu, 27 May 2021 10:25:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBKg-0003aL-LV
	for lore@lore.pengutronix.de; Thu, 27 May 2021 10:25:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lmBKe-0007Ip-SL
	for lore@pengutronix.de; Thu, 27 May 2021 10:25:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gw+S+s0VGdtVVpB2GvkbXEjvRBz97LLwDda2kmeSiOs=; b=kNzzcLPk3PGp+7
	Mckc09T3uP+FY2hYvdn/75MARwauvsVpAFAvogXIH2IG8DoMoz1ZOOgNvGP3738wg+8mQKw0GX8KM
	R/2rjsoCbnlVRKHQkf28rkxXOTfh/LLE7nDuZzBLiTSS/uePXVcGB45l+3FaxGvGNo+Sc2HDeEDwo
	IP0KZc+Ds+r3LNFSKF68kNd8LMP0Loo9+KozuTkJn0mWhgLIKP6R0c5i4VX8Y8BxkGVs7rD1cMWOM
	KjXCimV3Ihk7BM1R3SQCeaSWQ9/M9swm2LGfNQ9i73GURQuLn3B/qx8HvNgVPXoU7mu0bUjIBMGx5
	uBxyC69IqoZwC0Ng117w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmBJ1-003pxi-8X; Thu, 27 May 2021 08:23:52 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmBH8-003pAy-KN
 for barebox@lists.infradead.org; Thu, 27 May 2021 08:21:55 +0000
Received: by mail-lj1-x233.google.com with SMTP id v5so5180273ljg.12
 for <barebox@lists.infradead.org>; Thu, 27 May 2021 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t/+hLXxPD4XM8sLEZakSC2MfgUcxumOD7Nix5bPG7qs=;
 b=c8F1W84S20GBnmxesm6vtHwWrBnHkopHRCkxp8z1Dg/z2y7B5XW+O4BXxQl0eGBdqJ
 33wJxXssr7JSzoz66+S/zeScKcfoN9btZpKyI5LBJ67MyZqXwfKVFKXJR4k/wsm8Tflu
 buxUL8IZlxr/pG66Ev2gP6Bvm7BdnQQ+sUiCWE4jcJV7ENV2PO+Et9IKQAfWu/gTX4ia
 DTRJyl6ZfO8UNXthGLw/Zz+udqqaTHR8307I81Ujadvzvld+/SDmJ2dyB3w/AWAAeKgb
 xbTdEQB6BnjDQk8kVMLQP6V+YjzReY/4LhlNTIUoyC8+bxddrHBHk86OzXD98tdskpLk
 p8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t/+hLXxPD4XM8sLEZakSC2MfgUcxumOD7Nix5bPG7qs=;
 b=CddWreZwdsMumHtRb6NzejzBCnGiQdTC8vXPwWGseVkJCyInkpU6iVbF+Owvt7c8Bm
 dIPEgNq/N0mLo92VLoheTBwGQa4KxUDKq2m8/TbF9Wpi5K0eHvT0aIlhzeVR0D44unti
 PQI48xOJ5LHyKwWCe7ZYp/nWNcMb8sDMmU/5B3NCBz4Xad6WJnpimm0WOLGPzAGuk1lx
 STibDJZlsMgMjMfXVoyCDJUMpVhKk4rehHOyIIJn6t1KvxJwB2RD+yzmKvadfDqtJcLu
 COrNhQIZV8Om1ZbFtWFqpu1hmG+B/ji16HqhuRALER96UgFpNpn9sxAkmERJ881/l6G2
 gh1Q==
X-Gm-Message-State: AOAM5305uJF1z8Ubb56++asp/aOGUV0mk5vOaPezX+zOqHKk1gninnan
 kw3PH8gQ3VXsQRdhWZGENb8KW1MwAKzgH40sAikm7Q==
X-Google-Smtp-Source: ABdhPJy3u1w30OAhkxF5Y+YdsQhzQdfJFtrirQXIJRaQY1EMONjiCjckiA2Wn18V4pGn3X18bA9SV9iL5HUX51d9rPo=
X-Received: by 2002:a2e:808a:: with SMTP id i10mr1706086ljg.288.1622103712269; 
 Thu, 27 May 2021 01:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210526064805.367434-1-trent.piepho@igorinstitute.com>
 <20210527071628.GD19819@pengutronix.de>
In-Reply-To: <20210527071628.GD19819@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 27 May 2021 01:21:41 -0700
Message-ID: <CAMHeXxOSO_x6kzvru6pOgr7hAiA2_6_AAHpmob+d+3NQydBQDQ@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Trent Piepho <tpiepho@gmail.com>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_012154_711317_3BDE61D0 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: nand: Add help text for i.MX NAND controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 27, 2021 at 12:16 AM Sascha Hauer <sha@pengutronix.de> wrote:
> On Tue, May 25, 2021 at 11:48:05PM -0700, Trent Piepho wrote:
> s/msc/mxc/
>
> In the kernel this driver is known as GPMI nand driver. Maybe we should
> add that term here as well?

Yes, I can add that.  I think the other one was called NFC in the
reference manual.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

