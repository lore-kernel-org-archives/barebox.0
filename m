Delivery-date: Thu, 03 Apr 2025 16:02:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0L93-007qda-0r
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 16:02:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0L92-0003CK-NN
	for lore@pengutronix.de; Thu, 03 Apr 2025 16:02:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ssLMV3u1UlvXPVKSI5WAkpi5PTsw9AOluGfDcFi0vME=; b=pn7/u8QuB+zgrR/CeK++hOm/9H
	ku9AhPdmAWpBb9v4Q3AbBE0PaoGOtmyN6xagiXIE/dgfYu7l7cSbEbLFSqeeKN5bqN/Cafv4nHoFS
	0oJu+cHsjcYS32ZETCYROX+xcuSTVNtIkpkGNSVrZXIgmRFIalISZYGz0ztT9NelJsi03a44I4Yni
	puQ6eouSRnUq936fZf8ntOsKOeViGVNeGZBQZlrIIY/yhzWD2h9Ibydd26dcPY0lqQa0wkx93lIGT
	5UUDMsJkZVHCyBYOkqk0i8jNdbtgHq62eBf1uuYwwjIZigXM6vvUYqlBaSwXNlhS41Ds+vnQYzYsL
	pim7lbXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0L8N-00000008zZO-0rq5;
	Thu, 03 Apr 2025 14:01:31 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0L89-00000008zV8-3PO0
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 14:01:19 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-af9925bbeb7so751164a12.3
        for <barebox@lists.infradead.org>; Thu, 03 Apr 2025 07:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743688877; x=1744293677; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ssLMV3u1UlvXPVKSI5WAkpi5PTsw9AOluGfDcFi0vME=;
        b=f7y1OosrJTgwBqOHu0DwiatqACQDYCNAtyJ3IxttgDTELYDvAtkN0hjHZZY5J2Xdit
         dQvH5s3C+4zcxJAFwB/2VAkCVSxSOCkdfou+Mn6A0OeRWXFaNGde5oonkANJmluar5id
         9pfPOqYIh8IZZpDc3h8kkDi5dwPrk3yYYw+3axVP4eIHSL5da394rqWGidtxZ4Kg/c0y
         MMzS831aQLJ83Lnx2Wgx+BgyBBcZDcIvcCuAG41tfpu+uWU/hxbbXeVWzXv7DdjuPGnB
         lNdGv/Q/8yYkFA+blWFKBQL0LElJSF5Hh34bmyyPM172Gnv4vxOxm72ocNGAPA0kMWOv
         KGTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743688877; x=1744293677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ssLMV3u1UlvXPVKSI5WAkpi5PTsw9AOluGfDcFi0vME=;
        b=V++LFnn5KH28XnbWGOyKbJbnoUlSelgml7dOZulNPRS1IJe9XBFyKQERv0e1qFy136
         yKxx0V3LpApysvHhxskKQZLS8awjiaqMBMLKVgi4ZYo3MwyXFWg9WW11k5SpvawA9v1P
         0jAttWMtw3LqAJTQescUZKygozfiLUTCZ6+/7flfltilNw9mBKbjx0BnMKRinNsJezKR
         79vRhTYJ+v3KiSIz8c2r+1pKI7WsrvKws+rXPTQhkRosDknIbfanncxJ0jFiGOaK0UEu
         4lA5iPAetDW5GvQvMxJFGikcfm8O2DQSSeT0gXGJOpCJnAu/3IeTqtXO3HWPmCR2UBEQ
         1rWg==
X-Gm-Message-State: AOJu0Yz5o7EO8R1V3ley2Yn5sNKLsIItvwe97gA1xjFTTVh/g3Ur0Hx/
	uVdDYUOOfd/CJo/CVgnxFvhswed820lBeypaDUHJfMixVkPi6Ax7NLy7HMd0aUBvucDVCHIIO4y
	JedvOmEZST3BeLks6bCZQtk1QgEXZH87z
X-Gm-Gg: ASbGncsLp6GjB+zam1XNqvkRg4IMo0i6BU7yw051fT4FkTXueGAx1yobcwPc/VkxXeZ
	Kzpw9pi5Vx9xifTLeRROnHsFJBO3EFsvoj9xfZGGui8y1Aak7oZbcrrXcjtlQtRqBjFJB9G6oFP
	17GkybfVjHODf9ZdimzdNryWE7aFUfsIo2jNAt7w==
X-Google-Smtp-Source: AGHT+IFz9EMURjokGSCU2nq/5kLUg2M2ArYeX4FQqC9X5ilPROQXUTfv/to7Kw1mvvTEN4XU4ENeMgOF2zotF3/4iqg=
X-Received: by 2002:a17:90b:5407:b0:2ee:e113:815d with SMTP id
 98e67ed59e1d1-3057cbf40a2mr4063237a91.8.1743688876801; Thu, 03 Apr 2025
 07:01:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de>
In-Reply-To: <Z-6TBYRYiazahICg@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Apr 2025 17:01:05 +0300
X-Gm-Features: AQ5f1Jp7MLtGW-CnBKuEbmaAhGJqqy01oQO9th0IUcprpwf-7_l1eAWdViS2dVw
Message-ID: <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_070117_853623_153F7FE9 
X-CRM114-Status: GOOD (  16.60  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Thanks Sascha!

So something is wrong here.
At least the GMAC0/1 interfaces end up with the wrong frequency.
I have another image with u-boot and Rockchip kernel where CPLL
is 1.5GHz and network is ok.

At this time I have not an idea...

=D1=87=D1=82, 3 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 16:54, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Thu, Apr 03, 2025 at 04:43:19PM +0300, Alexander Shiyan wrote:
> > Hello All.
> >
> > Who has a board equipped with a RK3588 CPU?
> > I need to check the cpll frequency. Now on my system (by clk_dump)
> > this is 750 MHz,
> > although it should be 1.5 GHz, otherwise all other frequencies are divi=
ded by 2,
> > which is critical for network interfaces, for example...
> > Can anyone test this?
>
> It shows 750MHz on my board as well.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


