Delivery-date: Fri, 13 Dec 2024 13:16:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM4b5-007a88-2x
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 13:16:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tM4b5-0006kM-I8
	for lore@pengutronix.de; Fri, 13 Dec 2024 13:16:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ceMpQSoVuBbtExNSx3g0WiQbUkV+U0JbUsG0mOT2jNo=; b=zi8kl2hnwVtwAW4enrnCcvTpB8
	YI9QwZ3QtZhWgkxny+HWZZAA6EVWV7dWk8+GOTfgZRqabjDQjMK4IHzFyrctIR84+5ek5F0uI0qP7
	thlDBPrUsMuUcC7PIMfPGw9yy8vm6AMHzabVxGo5+nsRHeNPgYTaz4fjdLoi1oksX7JBefeh4uRq6
	9lyMaxVmKRDDWLVrZQNDBvzXb/x+zuMDVt5O1zhpPe9622PYx0WsEyfNZ9TT+ql2WiHGV2ijYdDbg
	8bqHD+rE9boPVL2Q6P2iVBodc5EX8iufZCX9PB0OIfQR+6OSUiwLYUhm6Xxn8TgOFg6O8vlxteAV/
	ctRQ1mkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4aQ-00000003gGb-26yX;
	Fri, 13 Dec 2024 12:16:02 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4aO-00000003gFU-00Wa
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 12:16:01 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-7e6cbf6cd1dso994794a12.3
        for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 04:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734092158; x=1734696958; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ceMpQSoVuBbtExNSx3g0WiQbUkV+U0JbUsG0mOT2jNo=;
        b=Bm5L1qZasayNNoukg932Ftxo8/VIwiVX42XoZ1QuyrlItTSIytGLCM+uygYjdoQ9iY
         241vnH+UiNxJNhKwTPnv3OreakLtX+4dqCEKD+SsFfn2yg77/4qDIBijL/DKiL/EUK2+
         a1GXSI+m5Mh1E4OsPArzbG3TJJpEVBoLJwkMogD6c+CZ5DyfROih1GVju9cChTdG1O9S
         i6QdQocER3eAQ+l+cE4pdRZH+pPkSIqCHLxD0iW4RPZXEMvL8YZkGTi9RJ4O+sSkhWhD
         Iwb0BLvOA6gBkF3+cegWIfJ8ONXNCsUaHyyQtDIaXw2q5TmIAdBtE0eqAoeXnW9OUJuY
         KEkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734092158; x=1734696958;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ceMpQSoVuBbtExNSx3g0WiQbUkV+U0JbUsG0mOT2jNo=;
        b=bxVu5qXNhPndyu1XIMln9xpeo+o/x+/z5AbY249Mxz6mz6wcOe5Gngc0bLVBbGxSAg
         Osx3ZErUUB+E7j0AK/t0ZXE9mJqdh3Gy6jF2Pn0aeWcDWOhA278Uyf8BwvR3zz20xz20
         o6npTFXWP7/8hL0npfwPwvjOAsVNeetO+XFvLR9GpQkdGfoszrW0e1Lxq6JahL9r+TnQ
         93pO0CuP4/hroLQqnya+loECsL5mSDs1tfkK4tpQbbni41t2E250tXWmOnWX9MtOWXnU
         eNp7LIk019dKwLCNVStcajVGTZ6LmVHSjDpQ9dtHMhV8EFzJTCOiA3Oz/GBo44vIji2R
         fg9A==
X-Gm-Message-State: AOJu0YzY60EbVTTmC7mLnnqOh8q2hFrieOxVDuyvxZhVsxUpegGG/Jpl
	K/HxL6YEHIIhvypBg+0DCgBY73ugCQ9aqSUOfE4jm1HfgUOOE5Tr91eW5k7ghaNwIuzEpFaMPNm
	WXHvpWIMWsGfEt20bsxL49fQnUd2UHLNI
X-Gm-Gg: ASbGncsJJP2d+stQwpPs1RYQ4Zf/ihviL5LX7+6Q3NbAz/ZF0wjnZT2fHQlBh2LhBOE
	atDB8EvxEn2FpC+hxXSj+x3OI7yFeA3zHCKJ9MB4=
X-Google-Smtp-Source: AGHT+IGqnNc85teoqfG1DUI+fI8o/4ehMrRwTcAbQvNw5MW+vt2RAmSLhF1R6LIxHwtCpnm81/GgSdTkYKi3YwF5DJs=
X-Received: by 2002:a17:90b:4f83:b0:2ea:7fd8:9dc1 with SMTP id
 98e67ed59e1d1-2f28fd70479mr3505197a91.18.1734092158225; Fri, 13 Dec 2024
 04:15:58 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
 <Z1MJPVfJY7v2vEgL@pengutronix.de> <CAP1tNvSEpZ_==v4o0Om_vCBoN3iuGGu8Qr1SxGxRy4NqCzOB4A@mail.gmail.com>
 <Z1gqVVWyhdjB-u9w@pengutronix.de> <CAP1tNvQMW5YmrAB0SwXZjmt+RtO7+ihHjBa=WMby4Lsq4UxBUg@mail.gmail.com>
In-Reply-To: <CAP1tNvQMW5YmrAB0SwXZjmt+RtO7+ihHjBa=WMby4Lsq4UxBUg@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 13 Dec 2024 15:15:45 +0300
Message-ID: <CAP1tNvS_BwD_gXcDwMH61DY9Vtg1GSY7gsy8Wr9vaE+KsqabAg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_041600_042791_E833E73B 
X-CRM114-Status: GOOD (  18.65  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All!

Update: I have start the second board and got similar errors.
Analysis of the code (at the 0x3fc000000), before the memory area
that is not available (at 0x3fc000200) is very similar to the code
from sdram-init.bin.
Maybe we are missing a description of some necessary memory area?

Thanks!

=D1=81=D1=80, 11 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 18:52, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> So far I have isolated several memory pages using reserved-memory:
> <0x3 0xfc000000 0x0 0x500000>
> and
> <0x3 0xfff00000 0x0 0x100000>
> So it looks like there is a memory chip bug.
>
> barebox@Diasom DS-RK3588-BTB-EVB:/ memtest -t
> Start iteration 1 of 1.
> Testing memory space: 0x0000000000a00000 -> 0x00000000afcfffff:
> Starting data line test.
> Check for address bits stuck high.
> Check for address bits stuck low or shorted.
> Starting moving inversions test of RAM:
> Fill with address, compare, fill with inverted address, compare again
>         [################################################################=
]
> done.
>
> Testing memory space: 0x0000000100000000 -> 0x00000003fbffffff:
> Starting data line test.
> Check for address bits stuck high.
> Check for address bits stuck low or shorted.
> Starting moving inversions test of RAM:
> Fill with address, compare, fill with inverted address, compare again
>         [################################################################=
]
> done.
>
> Testing memory space: 0x00000003fc500000 -> 0x00000003ffefffff:
> Starting data line test.
> Check for address bits stuck high.
> Check for address bits stuck low or shorted.
> Starting moving inversions test of RAM:
> Fill with address, compare, fill with inverted address, compare again
>         [################################################################=
]
> done.
>
> Memtest successful.
>
> =D0=B2=D1=82, 10 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 14:47, S=
ascha Hauer <s.hauer@pengutronix.de>:
> >
> > On Tue, Dec 10, 2024 at 02:29:59PM +0300, Alexander Shiyan wrote:
> > > Hello.
> > >
> > > The dump does not cause a crash, but the output is very strange:
> > >
> > > barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000100
> > > 3fc000100: 940033fd b0000060 39477ea1 91274c00               .3..`...=
.~G9.L'.
> > > 3fc000110: 17ffffe2 91404001 b9428020 37f80180               .....@@.=
 .B....7
> > > 3fc000120: b9428020 32010000 b9028020 52800020                .B....2=
 ... ..R
> > > 3fc000130: b9420822 32000042 b9020822 b9420822               ".B.B..2=
"...".B.
> > > 3fc000140: 521c0042 b9020822 d65f03c0 52800000               B..R"...=
.._....R
> > > 3fc000150: 17fffff8 91404000 34000081 b9428001               .....@@.=
...4..B.
> > > 3fc000160: 12007821 b9028001 b9420801 121f7821               !x......=
..B.!x..
> > > 3fc000170: b9020801 b9420801 521c0021 b9020801               ......B.=
!..R....
> > > 3fc000180: d65f03c0 d37b7c21 71000c5f 8b010000               .._.!|{.=
_..q....
> > > 3fc000190: 528aaaa1 72bdddc1 f9400400 b900ac01               ...R...r=
..@.....
> > > 3fc0001a0: 529dddc1 72aaaaa1 b90a7c01 b94a2401               ...R...r=
.|...$J.
> > > 3fc0001b0: 321c0021 b90a2401 b94a2403 12147463               !..2.$..=
.$J.ct..
> > > 3fc0001c0: 54000300 52808001 1ac22022 2a030042               ...T...R=
" ..B..*
> > > 3fc0001d0: b90a2402 b94a2401 32000021 b90a2401               .$...$J.=
!..2.$..
> > > 3fc0001e0: b94a2401 360fffe1 b94a2401 121f7821               .$J....6=
.$J.!x..
> > > 3fc0001f0: b90a2401 b94a2401 12147421 b90a2401               .$...$J.=
!t...$..
> > > barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000200
> > > 3fc000200: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000210: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000220: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000230: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000240: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000250: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000260: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000270: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000280: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc000290: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002a0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002b0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002c0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002d0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002e0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> > > 3fc0002f0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ........=
........
> >
> > See:
> >
> > | commit d8a6e1c2662aad2f5d9b4050a276b8e6b9fbb3b1
> > | Author: Jan Luebbe <jlu@pengutronix.de>
> > | Date:   Sun Aug 3 17:51:38 2014 +0200
> > |
> > |     ARM/mem: handle data aborts gracefully for md
> > |
> > |     Sometimes memory ranges contain inaccessible registers which trig=
ger a
> > |     data abort when accessed. To handle this gracefully, we extend th=
e data
> > |     abort exception handler to ignore the exception when configured t=
o do
> > |     so.
> > |
> > |     This allows detecting inaccessible memory from the md command. It=
 will
> > |     show XX for unreadable bytes instead.
> >
> > I don't know why you get a data abort here. The answer is probably
> > somewhere in the DMC section of the RK3588 reference manual.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |


