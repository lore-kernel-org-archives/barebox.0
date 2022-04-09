Delivery-date: Sat, 09 Apr 2022 19:12:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndEdZ-00DLiy-6W
	for lore@lore.pengutronix.de; Sat, 09 Apr 2022 19:12:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndEdW-00047n-PI
	for lore@pengutronix.de; Sat, 09 Apr 2022 19:12:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRi9cx5bdM1e0WC0LB0U/N2WoItJrwtSz7fUaASKkYg=; b=bQ53upepd4Oai+
	uVmG4bxHqUsHpf44Du2yh8I8Be1M27iUr7wDu2RDAY1mOWmqdP5XQjAHaYIKSZracSAxSygEWp/xG
	wzrbAp8jvogINBe7vV3FvGffjGqk2NPmN5NkE88apM6y+Cg6IodD5E/AWeATrYoFxG+P7BZCHjhyF
	mHug1WCSV3xINdFUKO/XT4GTIiL45A+gm9ThSdmEDgxYEIZY98N+tyg8aD5qNSxHprPZnuQ+JLWwB
	vERJKNtlPslm70cu2X2C3EdfYDFKTGRbjd0pdKBU9gIFTkRrBjN0xrhhN2dWVtiswaV9eKRHqxz52
	79LqvM/nb4Oon984shxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndEaK-003Xyu-0c; Sat, 09 Apr 2022 17:09:16 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndEaE-003Xxq-OO
 for barebox@lists.infradead.org; Sat, 09 Apr 2022 17:09:12 +0000
Received: by mail-lf1-x12a.google.com with SMTP id d40so12369047lfv.11
 for <barebox@lists.infradead.org>; Sat, 09 Apr 2022 10:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NvfJpaeLLQyAIDRkNieLaVoO15Y5dnj8aKk9ROPA16I=;
 b=JvbwlgY01WhKvfdg0pzWt5dXHSiTodE9/Rkcr9I0Xc47XXzgf2iLTne37iG/wZnJxg
 mzgvehoBa/mtNkhS2BG0UYJlRSYH2Nm48fJUU6vWuzquUf3kyyjzst65+Tl4uO5su7ZB
 MA3qe7FkR3XXT4UuPM5yt6mFWgppui6BCelRjLmc3fYSZWr3l8qBY3zPItcNkQ3SekFT
 /VRWxcYm5ROSAh0g3M2z9vVrmHdsl0HiuyeZSrEel4pQjad993pop62Q5K3UiuILZSDV
 twXspdj4Ol8Rthg1jaT9wjzGr/IMZtMmXNd71pGkegmAbipqVKhiMIXmFmBoiKX0dSJd
 2Kuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NvfJpaeLLQyAIDRkNieLaVoO15Y5dnj8aKk9ROPA16I=;
 b=3GMVcEfqQFiDBgxjRE3O4fbiyiLcPdUclFqgtk/4tib4Nq/ayYSBokJjpAv8OOKx5A
 Aa8wGK09qrd6r7gvA+yH95cii3n1aitGtHGO+bvYSjTwG+aRQAQ0Zz1JdIYZnytdGHn4
 RPlwj33cqDGW5/Lv/RCNN63NVLFa65mFRQitiYDxDwmQCLLKO1ly/qvN6DTv92EyZW5J
 aoqNcWKUHHyPUO/l1pcImZrIln4kyb9VPES4sYMW+WxT45g8q7E2DEb33O81wAZIsd9L
 WyrOds/1kXtKb9vx8PWU+FJwvNik6UX+a3YADIrt2HjhwbNG4Tomh1oWyKB8Tihlfiz1
 8oHw==
X-Gm-Message-State: AOAM531H39z2O55VI/0a6Ol5RwEOJulhsjVZTrzKw05Y9NowsSa0OWIE
 +EVlsVGSrQP0emKKknqhQYd0ulwfha/ThuMP73wZIQ==
X-Google-Smtp-Source: ABdhPJzn8F49/iy8bXDmPrQV/dTTIe4rpy2SWo4E1qDsdAAzHRF1J5rrQducs2/GFeCYz7ndRWQxGJohQmkU67YSkBI=
X-Received: by 2002:a05:6512:c23:b0:44a:3191:b65c with SMTP id
 z35-20020a0565120c2300b0044a3191b65cmr15642137lfu.636.1649524147410; Sat, 09
 Apr 2022 10:09:07 -0700 (PDT)
MIME-Version: 1.0
References: <6FA3446D-797C-4DA1-A2FA-BAC5B213A65A@public-files.de>
 <2620f87b-ec79-7184-cd8a-d29c39938001@pengutronix.de>
 <trinity-82311693-b8da-49e3-a71c-d577df7e4021-1648021632406@3c-app-gmx-bap36>
 <747cc560-0ff4-da39-6076-7348fc312052@pengutronix.de>
 <trinity-76ce1194-1e72-4cce-81ae-529407eb0ae0-1649415827026@3c-app-gmx-bap48>
 <7f97de95-9fc0-11ba-c06a-d4f38f41d521@rempel-privat.de>
 <314D87C6-FA2A-4A23-8962-5BCDC83BA9E0@public-files.de>
 <0333df9f-5ef7-fc60-4ebc-81bece1781a3@rempel-privat.de>
 <trinity-f3d7c3fc-0418-4509-8b61-8d9c0f65d56c-1649493318641@3c-app-gmx-bap35>
 <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
In-Reply-To: <1b2a8dc2-629d-6c76-207b-d1d78de4c458@rempel-privat.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Sat, 9 Apr 2022 10:08:56 -0700
Message-ID: <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220409_100911_017592_7C508B00 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: change r2pro dts to public hw version (was "Board code with 2
 dts" )
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 9, 2022 at 9:02 AM Oleksij Rempel <linux@rempel-privat.de> wrote:>
>
> In this case driver will set some default values:
> priv->tx_delay = 0x30;
> priv->rx_delay = 0x10;
>
> No idea what this values mean.

They are supposed to be delays in picoseconds, but sometimes driver
authors are lazy and just use whatever goes into their device's
registers.  That creates a dts binding that only works for one
specific device.

> >> I would suggest to take an oscilloscope and measure rgmii clk and data lines. Make sure it is using
> >> correct frequency and the clock skew (delay between clk and data)
> >
> > have no oscilloscope here as i'm a private person and do this as hobby
>
> i have private oscilloscope, no idea what to answer :)

I also have a scope, but mine does not do picoseconds!  Those are expensive.

What you can do, is just write a test program that goes through every
delay value and measures how many packets it was able to send or
receive.  The success rate will probably look something like this:

0% 0% 5% 99% 100% 100% 100% 100% 99% 0% 0%

If the first value is for delay = 0 and they go up by 1 , then
probably delay = 5 or 6 is the best value to use.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

