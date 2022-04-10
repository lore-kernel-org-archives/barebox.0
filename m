Delivery-date: Sun, 10 Apr 2022 22:38:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndeK6-00Eqj0-PP
	for lore@lore.pengutronix.de; Sun, 10 Apr 2022 22:38:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ndeK3-0002BB-VD
	for lore@pengutronix.de; Sun, 10 Apr 2022 22:38:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ovegfbuGVavXdIonbeS03D3FeaTwpuaZ3UbG/ZpHb5Y=; b=f5CtSWvsJOAIrG
	cumXuYk35NeereZ1qSx65xPzJvaismCJyRTgigSmMUzMAeoAgSxLWvQaAMKZYxujWlUuY2hs3lunY
	Hx/5rTjbAqSs9BNjLulaBcXkJ0n3K7J+1EOrP/8lgdE3wwKkailssGfX+B2jK0akitUHaig8r9spQ
	SZ5u3BebJWPO8ZfTwO4+j35TnF31Hybapt/nVbLyb2aoTgSFsRgU9C08iCZ7Nh6HRT4NJxzhPSBVS
	Udo3UB1nbvRzEEiRLnXrD23fuVL/DM5yjMjeuPdAM17pqTJH+vuVBuTdDhrb5j+Ie53j4MupPFpFp
	B9t5of0od7dPEQ4/5KSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndeIM-005Smf-R4; Sun, 10 Apr 2022 20:36:26 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndeIH-005SlN-9o
 for barebox@lists.infradead.org; Sun, 10 Apr 2022 20:36:23 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 17so17835279lji.1
 for <barebox@lists.infradead.org>; Sun, 10 Apr 2022 13:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DXIfJ9hmrsKotoFf6r/SN2Am5jafQD+2NvkON1VvXtY=;
 b=LWCVia0IMSc4ipKXjCp186N9DAVLACsfRbroKl8durXDbg3/3Qs7p1FURAh77YjMCc
 PfsDqWPAyVgFlSQK2u0qeJElwyhp48QhvS3nXkY/5k2QGOzq/fsC76Ah/vMonKvn3rhl
 jScXAi1SVW6ohUgAx/hTgsUVVp22jixQTQuroXC/14fP5bhkI3uG4vP5sVrbp78HYfJP
 9di3shMtziAbv2TmF+cIPNfbP3iwzv26EJ0hReajyhQAV0tcIYCiyTHSivWPPT7BsyXp
 YMWiQVX79+B/N2Dne99FWN9pWTF8bVJfkZfUPHefxFn/EICcwHZs3zHAmg9M9Yu4JJ2c
 EJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DXIfJ9hmrsKotoFf6r/SN2Am5jafQD+2NvkON1VvXtY=;
 b=pNe3b5w+yUNjpFDkcTNlE910cge4rC3qUFA74TYfwFx388wLVmEeCsFuUo75fXW2fn
 f7BvYyhe9dN/SHPvbf12IbY7Xa4l0kEqOXd6CMmQmW6vgUDYeWMYKLKjd2Dcc8BqWrN2
 r+MJdAjFQ/oRRQVNQ8xOJxopFEUigangcjj1tY0MkIxrbWM/hC4RLN0XK4b7ms2YkIFA
 /0kmjTtcEv9LuC882gcat7tw0b+WjpNJAhl0h0KhIWQkfPncjASWE8OnNuFaAlrjDXZA
 Cs0+RMa43cysGaqOeX/cq7ZsmgTspdtN0dqpI522SAKbN5rYFQzB+DXfSqDAyRUZax9F
 09KA==
X-Gm-Message-State: AOAM532QAaEPIkI6qc0iWRtxVTmyo/dd2+tLDhaDmYAHCOW9QkPKMjA/
 ixY6dYyByKQskG0p5jHzamAAEMI4lqgoQJNiv/nHEA==
X-Google-Smtp-Source: ABdhPJzVTO0dUZSNBRnUnirFBEZOfa5DOlT9HuGEVbxizpW9fn9vMTGEwbx+LjUYniJsK0YeT6huybTbTwHyeVm2f3U=
X-Received: by 2002:a2e:9e95:0:b0:249:76e0:e86 with SMTP id
 f21-20020a2e9e95000000b0024976e00e86mr18070594ljk.232.1649622977864; Sun, 10
 Apr 2022 13:36:17 -0700 (PDT)
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
 <CAMHeXxNuqjfkdoJ=pLLjbv60hzqx6cT1EzegX0ryAeYTBa9vdA@mail.gmail.com>
 <286876ce-e2bb-4a67-7db4-8a4bb9ecf142@rempel-privat.de>
 <CAMHeXxP6Mam1KL3p0R3yBe0gdBj931RwUNe_M9sPV6E8NVsy+g@mail.gmail.com>
 <6e8479f5-2081-b786-5c9f-298dac95984b@rempel-privat.de>
In-Reply-To: <6e8479f5-2081-b786-5c9f-298dac95984b@rempel-privat.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Sun, 10 Apr 2022 13:36:06 -0700
Message-ID: <CAMHeXxP3OeqMFDL_Ry81X80vjKu-G8FDHtwrDJprKOmFc-pTEg@mail.gmail.com>
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_133621_746083_5942B3D5 
X-CRM114-Status: GOOD (  15.14  )
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

On Sun, Apr 10, 2022 at 8:00 AM Oleksij Rempel <linux@rempel-privat.de> wrote:
>
> The PHY id is hard coded, so we can find the datasheet:
> http://pdf.eepw.com.cn/i20090903/8d594ec98b62289dd0d3cd17fc8ffdd1.pdf
> Page 46:
> Ts3,
> - if TXPHASE_SEL=0, then clock is shifted by -0.65 ns
> - if TXPHASE_SEL=1, then clock is shifted by  1.35 ns

I do not think that is what they are saying.  Page 38,

TXPHASE_SEL  1: An intentional delay is added on GTX_CLK/ TXC (about
2ns delay in 1000BASE-T, and about 4ns delay in 100BASE-TX and
10BASE-T)

So they add 0 or 2 ns, which makes sense for internal delay added or not.

The table on page 46 is not clock shift, but the required setup time.
The sign is backward from how I would have expected it.  But if the
sign is inverted, then setup time + hold time is constant for both
values of clock delay, which is how it should be.  So when they say
-0.65 ns, what that means is TXD must be stable 0.65 ns before TXC
edge.  RGMII spec is that min setup time at receiver is 1.0 ns, but a
PHY can be better than the spec.  ~0.5 ns is typical.  If TXC is
delayed by 2 ns, then TXD can be stable 1.35 ns _after_ TCX edge and
this still meets the setup time of 0.65 ns.

> So, why mediatek,tx-delay-ps = <1530>? 1.5 is not enough for RGMII.
> In case of rgmii-rxid internal PHY clk skew will be -0.65 ns. Hard to say, if it is typo, but 1530 +
> 650ps will be 2180, which is enough for RGMII.

It doesn't make sense to me to add setup time to delay like that.  It
does produce a value that is the right range, but I think this is just
a coincidence.

>From PHY spec, we have 0.65 ns setup time and 0.2 ns hold time with 4
ns clock period (DDR), with 5% allowed variation (per RGMII).  So the
valid delay range is 0.65 ns to 3.6 ns.  But there are other factors
that reduce this range.  See calculation in section 3 here,
https://www.ti.com/lit/pdf/snla243

So maybe they did this and determined 1.53 ns delay will maximise
setup and hold margin.  Or maybe they copied that value from somewhere
and there is no good reason.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

