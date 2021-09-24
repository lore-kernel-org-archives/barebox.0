Delivery-date: Fri, 24 Sep 2021 05:14:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTbfI-00059D-Os
	for lore@lore.pengutronix.de; Fri, 24 Sep 2021 05:14:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mTbfH-00033T-R2
	for lore@pengutronix.de; Fri, 24 Sep 2021 05:14:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OD2po4BzWe3hJC6ZkZ2FmTOnQ5M/uw5bJikSOJH+I4I=; b=PueSv/z5tpllrN
	pKttSBCp5IDPQZBI1K4JZlVYM68iKvXcMi+AJ7sVfeRrSsAqb6sJfUeXZj6MvtFlsqT8+qt28AIEj
	XZw7hdg3SHlMcXMRNevUk/zV20rS7m5G97qEQeVsPwbmvZraqPNLwhT2W8XIftblBV6qNu3n2yJqa
	Ioe19V8y2owyIJVhwGmgMbyk/X/yD2s2+GBdiaaFTZfhonKl2Uy2BiuegslqoJ1eFpdxWD/MD6BeE
	Btjhp2HmoaCGR+w5Fu7H+NYyM70GiEG+5jslqkz5ez+OjaAEL2jBw1c2azqkOB3EeEu/qkcz/OOlX
	dkKqekFNCh2FsjllrFhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTbdX-00Cy77-Op; Fri, 24 Sep 2021 03:12:31 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTbdT-00Cy6d-Dk
 for barebox@lists.infradead.org; Fri, 24 Sep 2021 03:12:28 +0000
Received: by mail-lf1-x134.google.com with SMTP id g41so34269818lfv.1
 for <barebox@lists.infradead.org>; Thu, 23 Sep 2021 20:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ndCTBsWnYuoTtth/fNlm8y+YBfkYd2dPnRbRdjOzV1w=;
 b=vu2WSwV2k8lOE1DEI1fnikghidg8198rG3k6m1iYFxN8FuoXGdneqJB1GUk1Nui3Ah
 cVT5hCVAfcRvhpYo1bPZjRY/thyDwxJyVrvej9LAASQMTcAxNFO+qL5+dq52TsZ25rQQ
 6v8jf4HAZ3RHxiiFfPdvIsbNVs0D5A43X6olkcVl+eBHsnsbGFiNQZ8nQ9f1FhgnELOY
 98NYzHfDxsKOuOw3UOiyb6kPfusZXD/TDc1T5NzrbonZUQd0ayaAfx/wHKeKgJJWrbAb
 R1Xvc+/qMGU3COvlV8WTUKESfXokKuAEymdabvFG2x6auRcA2GHSREgKLve6wuvtMeqH
 XIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ndCTBsWnYuoTtth/fNlm8y+YBfkYd2dPnRbRdjOzV1w=;
 b=JeqmtNZ5cChqAsv2dRdhVgSRqn+3uh65aELiVzztzt+swcBnyDbPgd4vFF4Sl+OyrU
 OBYETpKP2Nr5Zk+tLp9OTk1eTa8/1bwrfNgbsyBdp062anTpaMRi1MgaBabf1bsoCZ7u
 aXbP5tSAGljaOaC01/oP1hOD1TNiTczBmYxMmhalhKp4Ox17vj6+B3Rnd0dvAvDvfzYO
 g4n+f1sXGMyvskyLQGUgDajGVw/acNUx2Far7EQZyr0ftQHZYC20LctHFtfn16QKBLXq
 bQoBZGb219tT5RLbLXMflxI6saFyYryu4bKzu7RSdHO9INFhPpMdm9LaGauYi42/YlvG
 qD5A==
X-Gm-Message-State: AOAM531dsoY93sr57IDubFY8FG+NtIMSw+uB9QZYA45rJdvjKgDuLdJE
 NoJzLPYFMpKdrb4zgyUpjLJal1/6pjZE1GUusrjn+g==
X-Google-Smtp-Source: ABdhPJwUNzcEeWYHN1ONuccZt0js65lU8yhwKJ3Cg2MoZ4r3OxTn5zDemY7WJfU/xoxyKTo5RLUQ1JZho/R1VSRYn34=
X-Received: by 2002:a2e:9ad7:: with SMTP id p23mr8814827ljj.527.1632453144557; 
 Thu, 23 Sep 2021 20:12:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
 <20210905135122.7038-6-a.fatoum@pengutronix.de>
 <CAMHeXxPV_5mzAH3gbpy4WrL16kSstkLhJvx-VUQqbmy9C1r6WQ@mail.gmail.com>
 <CAMHeXxOmYuM9+ucqiXEzSSJ7z_0xgRLSE4BYG7GVNCFT0PR3xg@mail.gmail.com>
 <2d727028-03bb-9b19-3c1d-1c430c793889@pengutronix.de>
In-Reply-To: <2d727028-03bb-9b19-3c1d-1c430c793889@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Thu, 23 Sep 2021 20:12:13 -0700
Message-ID: <CAMHeXxOvuTP=FzXek0X_YB1u41+VnLh9LZTg=djcQx2fPX91Mg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210923_201227_647805_C460261A 
X-CRM114-Status: GOOD (  23.70  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/9] ARM: i.MX8MM: correct unrecognized fracpll frequency
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 15, 2021 at 3:39 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> On 08.09.21 21:00, Trent Piepho wrote:
> > On Sun, Sep 5, 2021 at 6:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>
> >> Correct the value in imx8mm_fracpll_tbl to match the one expanded by
> >> MHZ(266) macro, rounding it down to MHz range only.
> >
> > It's not really "correcting" the value, since the value is wrong.
> >
> > 24 MHz / 9 * 400 / 2^2 = 266666666.6 Hz
> >
> > Maybe it would be better to say, "make the value in imx8mm_facpll_tbl
> > incorrect so it matches another incorrect value used elsewhere."
> >
> > In which case, one has to wonder why it would not be better to use the
> > correct value everywhere?
>
> Fair point. I just ported the patch and called it a day.
> Looking further into it, the rounding is strange as well.
> 166.75 MHz is rounded to 167, but 266.6 is rounded to 267.
> It would be cleaner to just use MHz values through out and don't use
> Hz values at all and always round up. This makes the code diverge
> from U-Boot, but I guess that's acceptable. Works for you?

I think the original patch was sort of a "not my code base, don't
care, minimum effort" kind of thing.  I see the issue with diverging
from u-boot, but also one hates to be stuck with bad code because of a
low standard elsewhere.

I looked through this entire module and there is no reason to use Hz,
rounded or not, for these values.  It is just a symbolic identifier
for a supported DRAM speed.  It makes more sense in this case to use
an enum, start at zero, and have the value of the identifier match the
location in the table.  Then no more table search is needed.

I re-wrote this to do that.  I'll send a patch.  It's 20% less code.
But really it's even less code, since I can't help but to write
comments, something the original authors were able to largely avoid.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

