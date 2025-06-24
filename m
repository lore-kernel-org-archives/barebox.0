Delivery-date: Tue, 24 Jun 2025 11:20:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzpl-00AYZR-0F
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 11:20:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzpk-00080F-Ey
	for lore@pengutronix.de; Tue, 24 Jun 2025 11:20:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTNyoHR8DoV3C8aJ4Dk0zN0BuIdO8XVrwuu9ofSY2YE=; b=vS44trhY0z50UQ
	nTC+C++2G6AWFGDlZgybkZ8yDzStBO5ntsSG5NOganKpD6LNNCy1e9/KROiQDNv0uyqsG7bk457Zj
	5usgxsK6D92gPrNZcHOt2mmt9jW1xoK/KKmLmo6tjxSQaHmjAGTNhrXYan+VpWV/+nkTUfUnQzLoj
	RkeAbtpokxa/IaJpi/PJuNR43D6vYSinK+ETqyYUp/bE4H2X1UBVnZFLAFByS0Z6ulu+F1kBQ2SKX
	b/2fsQzT7uY5iJ29Q3ab+3UNfgAHgRYCuUdRnHJxUYy9V1S7ueKfR1ouYhcPZ6VyPs0/gqhXt/oaX
	+oteICdx/kTRMaulahug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzpF-00000005A74-2ddO;
	Tue, 24 Jun 2025 09:20:21 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzjc-0000000592g-13dL
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 09:14:33 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-b3182c6d03bso250163a12.0
        for <barebox@lists.infradead.org>; Tue, 24 Jun 2025 02:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750756471; x=1751361271; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTNyoHR8DoV3C8aJ4Dk0zN0BuIdO8XVrwuu9ofSY2YE=;
        b=ZpLNj27QKJhr3MHfoS0vFJZY182Z9txqRDW7QOWkyWV/NBKkEINQhd1fe66DAzXY6Q
         Sk5KuyXfkV2kfeRuDb6L9dP7FUvlmpm/D1sJnDPbPuE0eRB9R3S58xJxl9+4CNe0WK07
         mb0eUF4/8gunI+8BGomA905kW9I3/dGUJw9vtp1jn3QO/DcfnwuzcqS1LwJ+UGqyFcHs
         UxDfBxZC2+aCZ9lwUVWhRGbchANVhvmvR3FNiZ+eXuwM1CTZZHHSgWomsT3bpLuYq8ES
         p5Qjl+/4EA6IYIuKHkmu2fgOhT+N1GasLYwaRPrgPLjsA5j2eap9ZaJs8/vC65JgF0OF
         PgzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750756471; x=1751361271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aTNyoHR8DoV3C8aJ4Dk0zN0BuIdO8XVrwuu9ofSY2YE=;
        b=tsrhvrCGwE0EiS+TswVLnQTNE154V0OpK1TjnRlfoU4eW9EzB12vFWjHvVSIaQvjsq
         aDUA8WNZOWBn0qGMUHyigRpZUTm1xvCTgLSGE9E934FuaDP7kD+f4UOAkcIa3I+Rj/8v
         zASYXgpIDDJhmsInIsDF9kF2xG69WDwaZpbVmr8Hl8JQnBDXG8gMLsa5PsMSrZlWgWNF
         cepzjCFdcRZl1lUoNOlht9v7vsKZs/Lal16SicthAKZbNr2N7iaf0dGfv3X9hoamtpCo
         hkzH9yNgIhEKcynBYV5tu+N40TycU27gBsWLYaqEyx+H56SPg/7c6PuOeLKhWCuJYfpe
         x5/A==
X-Forwarded-Encrypted: i=1; AJvYcCVas5LYZ/VO6AEk88YxWHe4tREGFA9rB+PTciS4C4uPC9faGrjDLSutGEH9751VplOQJYnMxBgV@lists.infradead.org
X-Gm-Message-State: AOJu0YyBfQM6jBl4dWLlSoxUBnt7D6Z+9re6m7ZoEWOQNUsVSwnlUAE5
	W1gbz5la1kHaNUVLDClmRsgJVo4TT4pxlPH0nUMOu7CAe+F+aMaEXaQRtoTMOVnRigy6O75Fy5j
	NjKqAEl+hf9EJZVWZTkeb74O7I8Cv0dgOWacs
X-Gm-Gg: ASbGncuk61hNuaXM95zHwdsoJkDhQeL1bg81s8PHxRNa5JwrsdMTNUgDTnQF9qoMUAM
	75Q6MawuWi8u4C8GpROzvVIzxDuc8K9J5huuCRSog2Oa9scDBV5JGaA5wXo2cK9JiZ4iJ9bArK0
	hOMpGW3PpuLYfD5enepo6utc1zZEElFrEuPP6s/w08L7g=
X-Google-Smtp-Source: AGHT+IFwuR8qEDJ6RFIVQU766g0BErP3uyTyvQ9HoexvwNio/RekE3KJnOGENx79tPQhD73t9GtmIHIzBmrbfI574j4=
X-Received: by 2002:a17:90b:3e81:b0:313:1ea2:a577 with SMTP id
 98e67ed59e1d1-3159d8d16c2mr21595824a91.29.1750756471059; Tue, 24 Jun 2025
 02:14:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRTbyB7NXoaLOid9-7jH5Jxfa5MB6LGVfyZYwc7y+Sq_w@mail.gmail.com>
 <aFke1jEhe1ICGEmG@pengutronix.de> <d1c20ac9-1d97-46c0-851a-2a15fb2b79ce@pengutronix.de>
In-Reply-To: <d1c20ac9-1d97-46c0-851a-2a15fb2b79ce@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 Jun 2025 12:14:18 +0300
X-Gm-Features: AX0GCFvwzMYVsYfIXJ8lCDCKuaQZrLx7eGd5TlTXnUjovZk8jgMJURMTkPZZ22Q
Message-ID: <CAP1tNvS1hTatpg71qTb-0x-N0cH3fdpdN1DAn8cmy+8L9UBVCA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_021432_291279_AD85AD85 
X-CRM114-Status: GOOD (  24.79  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: SAMA5D3-xplained board cleanup question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

I'll do it now. Thanks!

=D0=BF=D0=BD, 23 =D0=B8=D1=8E=D0=BD. 2025=E2=80=AF=D0=B3. =D0=B2 13:16, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hi,
>
> On 6/23/25 11:31, Sascha Hauer wrote:
> > Hi Alexander,
> >
> > On Fri, Jun 20, 2025 at 03:21:56PM +0300, Alexander Shiyan wrote:
> >> Hello All!
> >>
> >>  I would like to propose a cleanup for the SAMA5D3-xplained board supp=
ort.
> >> The board currently has code in board.c that configures the
> >> at91sam9-smc (Static Memory Controller).
> >> However, since the board uses devicetree, this configuration should be
> >> handled by the MFD driver
> >> that is responsible for the SMC and is devicetree-based.
> >>
> >> Therefore, I think we can remove the SMC configuration from the board =
file.
> >> But I don't have a SAMA5D3-xplained board to test this change.
> >>
> >> Could someone who has access to this board please test the removal of
> >> the SMC configuration?
> >
> > It's rather unlikely that someone gives a positive answer here.
> > I'd say just send the patch and add a note that it's untested.
> >
> > That said, we @Pengutronix should have such a board, at least I can fin=
d
> > it in our inventory list. Not sure if I can motivate someone to connect
> > it for me.
>
> I have one at home. If you send a patch, I can give it a test.
>
> Cheers,
> Ahmad
>
> >
> > Sascha
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


