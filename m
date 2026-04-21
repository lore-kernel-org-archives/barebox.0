Delivery-date: Tue, 21 Apr 2026 15:49:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFBU9-00Ejq9-1t
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 15:49:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFBU8-0001gs-T1
	for lore@pengutronix.de; Tue, 21 Apr 2026 15:49:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FlSOM+zy4M9xSWnkVhyT33wCvD1J1AmqtD+BWspyMpM=; b=zo/M1Chc1NrYNCxAhLsrKx4TnY
	H/4xhJYlFa+YbClgUuTXqreu0GFXo+V++KdpHWkXtGz05ZkHqMxqe0C4/lrG+vrIATXsTkalIyR4g
	dl21fxDQTvJZYBgOaPUdRdfn6JRpq+cZtNK6E9IKKmHB3iQcQlmdxZVLiqZbNEvXSqlfZQyWdxg3n
	1naTkf4EvnQunvM9m/BwWgQFMllfdBH5CQFeq7JYGx6dMPR3Bx/I+siMHhSD87OZz7is8zVqvvvf7
	ezziaBc3VYNHOWAlaZGQNYEee7e2cza/hivNp0Gv40CgGD1TVtu33qJVqpv/ZlWzQQZfmyJsfZvk6
	sGWKDM3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBTU-00000008gpf-1Laj;
	Tue, 21 Apr 2026 13:49:12 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFBTR-00000008gpB-0a64
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 13:49:10 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2dec803f9f0so2455813eec.0
        for <barebox@lists.infradead.org>; Tue, 21 Apr 2026 06:49:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776779348; cv=none;
        d=google.com; s=arc-20240605;
        b=AYmUX9XCrFTImdHYRGnKJePj2IGPoAtyJF+EmFVe56MI6pjVA2D17EYvh/KQpah2mg
         cmP272UWrojA5yU6RyynPFJTLFxBfYLej67co3ud/OA1gXBggmWDQJT+7i54dgSXYx8O
         rV0fH6S2QCjIsbCspygr5Ra5gzEHDOFvZ1pk7JJOLQOQqh3qdpUrEiRhbtV+doFTVpUW
         U5TFWQ4yn2VT8hXohFDxx/FeLswXBJHGYZA3aXxTgnxPnkCYYoKGZLgHUcqxyv2xLcKL
         sy6KzRPbPQWsqEbP6ev2G/0u/lJ3FGvDFS3eJ3ePk9RGc4/9cv8A+Kd4FvT6u5OPD3a4
         /zXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FlSOM+zy4M9xSWnkVhyT33wCvD1J1AmqtD+BWspyMpM=;
        fh=QXxF0yowHjQ/AtJcV83rBRZEr3WZeusZoVw9LhUoqsQ=;
        b=fSK6mchwQiVRCtHrGghGJJoNcjJ9CCjSxPY42dECEucVBLkKfyyEOY2YAebZOJdtge
         essxApjKKLFtW9MKyJystbUUqFhzc/otuT1fDzGQFZwqvvE4Jzv6Awt/JnVJrKaJgfJ3
         1Fzt1EYquKQ/uAPPMx/SzOKtrLctaVYwIhvQKgcrvuam7JQlMbTNDWCffirdvH+h2UA0
         xQbr3jXagdySzIk2+3ZK0khvlM7mS9ks1tUWhcLMIeQsm9lB0AOCbLb+YQWNHgYMdilO
         NX3wbLZ9gvGS44Giz83Iz8x6Bkmfod6Bn71UTDR9V4Y//YqtQSq/N5ks+byQGwbZl0zO
         Ht1A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776779348; x=1777384148; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FlSOM+zy4M9xSWnkVhyT33wCvD1J1AmqtD+BWspyMpM=;
        b=aCM6Sy1fmpWJS9CqZ1BL7ZMFHiZZPewGX/5DFo+v9+gj7TV6XyWom5iT04kTDbBpss
         BMzHOGv3tekv1YlAaSOp8cqslVzQ8h2S+N3LeE2NPCNdiWFO9jsJZGdELL9C6E4S46Jw
         amskikQx2QP5vGWi+FUalxmJpQudIBiW4v2JLq8OtsKiAyyx5H94qvbo8OZUEelZwWi5
         oVpRrgkoYS6Wi+vjqjHtHE+GJaC84Sy4sJ0pbu9F8pRSxSaLeD0W2dS/0Rf34m3b+dOe
         ENcM2WBUOPxDc5ZrERF6QWHlo6PP/WwuZw8EnlvY5ik+wxBMYNX6wBcAzEbaMdZ9DW84
         MTDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776779348; x=1777384148;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FlSOM+zy4M9xSWnkVhyT33wCvD1J1AmqtD+BWspyMpM=;
        b=TNWCZ4ATzQk/rJrjXxtRIBL3zi3Du+LR4B2WXOCoolGRgg4CF2mgsqSH4SuwTltgXa
         MF5J1PdgRlM0MbETST9jr03qWfJ714J3jOYFswtyi7yVLOgRT9ut438rACS8A9wcE3Wq
         Vecs04pKkPRXLhdc2CBDb+zobuIYsMzQd1HNPBUz8x9TQS+Hi1E7d5T8TK1i39QE8yIK
         Im6fE5BFt40E0RZgD0Rq+Z0HNHrlFSJ995RchTGCuKBZfZKvb7z98tPvz0my/usaTD+/
         3lDz7yzh1oAaSIjKH72PuBX5N6vUV0n0eIe15tZRd0ELdz3LA2YjkZE30zvSWm6iwL64
         oOJw==
X-Forwarded-Encrypted: i=1; AFNElJ982CXxVEANfcsb/dBqOpedVEFeoW3iq07ZjPVeD4vy5FzTY+d3dd6zcg5mUY1TFa/psJx87/Cr@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ3gX9A6nVi2bbTc0Qxqs922DAxsf1aHkGFyyVXW0bS9JnsgGA
	JdL+K7sQAUTm4lEmfIgXbc+W35DTIU5ZRtg9w9BvNy5Ka/8I9vVhWY75LTDJ7W8yvyK/8C8Yv8r
	3GltuVQdrpNDcjb0DKYwBpyqq/cmGiU5e8HC9Lxk=
X-Gm-Gg: AeBDietTvjaGEfQkurHeDTqwJuzVHfKcJbWIBEO1DyAVfUhMnAgRwI/uqTCHO6LKCOB
	nhS1U4H+eLtZFAY8/dt3HilO39QUld/E10rxWMjUoDlJpw3hNBN1xnwKKDvBNbtbZ+l0EQ9wpvO
	NZlcSX3bSJr4rRHtLn20m1jdGdppK2hWviByF5iNwQTQHesUJKdGiXUZvsskDKZiQI4uD6B4Ic8
	qemoL21GXoyVtpAdK7QjKp59nABQe0ceQ4Zer3ngj8c/HKGDcGW7TcXdbfJumB0cSuoPs5ImYuP
	nWwA3iyU2KibNd1dTlbJdDbDgR3/aAxvpchj7FYo8H8ZV3XcilQ5ne2K+j4ykbiBihg0XuM1CQw
	hyhvNAwF9seMUBbEtnJ07OQqjZi0uHg==
X-Received: by 2002:a05:7300:fb83:b0:2be:17b1:e49f with SMTP id
 5a478bee46e88-2e42c251424mr7974819eec.4.1776779348134; Tue, 21 Apr 2026
 06:49:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260420-usb-dwc2-usb-c-stick-v1-0-c86f733f24f8@pengutronix.de>
 <20260420-usb-dwc2-usb-c-stick-v1-1-c86f733f24f8@pengutronix.de>
 <439e4d93-0b31-41a5-93a4-3e0456e60a7b@pengutronix.de> <aeYZgSySnesKe_L0@pengutronix.de>
 <22ce3b8d-b01f-4566-895d-c175c33a7e26@pengutronix.de> <CAL+1fyAnh3D1p=yj8+Fgj8CsjE6R0Jsfc5XbwyZYKhK797QQ8w@mail.gmail.com>
 <CAL+1fyCYo3ZATq8d3Tv5fy_OcGVo2J3q3853-LqxgLqXNEahiQ@mail.gmail.com> <aectQyiyowJc1DCH@pengutronix.de>
In-Reply-To: <aectQyiyowJc1DCH@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Tue, 21 Apr 2026 09:48:56 -0400
X-Gm-Features: AQROBzBG-YYhMgaypm5gSyXqLMQH8N4IT0Fj9UAHFxL4ktx3vrCxm7T_wI9XGqM
Message-ID: <CAL+1fyDxHcRg-V2pbQgZKrb5p+3p3Z_jL52yC3q=RDA4nYrLEg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>, 
	"Claude Sonnet 4.6" <noreply@anthropic.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_064909_216362_D48AAAAC 
X-CRM114-Status: GOOD (  20.04  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usb: dwc2: handle NAK when CHHLTD does not fire
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

Le mar. 21 avr. 2026 =C3=A0 03:54, Sascha Hauer <s.hauer@pengutronix.de> a =
=C3=A9crit :
>
> Hi,
>
> On Mon, Apr 20, 2026 at 10:28:58PM -0400, anis chali wrote:
> > Hi.
> >
> > On Raspberry pi cm 4, with only the patch usb: dwc2: handle NAK when
> > CHHLTD does not fire,
> > the usb controller does not work and displays indefinitely the message
> > below even if no usb storage plugged in
> > ERROR: dwc2 fe980000.usb@7e980000.of: Timeout on bulk endpoint
> > I did the test with the patch series and I get the same behaviour,
> > console continuously displaying the timeout error.
>
> I just tried with only your patch applied and it doesn't work for me. It
> seems there is some timing issue involved, because when I add debugging
> output at the right places then it works.

Do you have logs, to check whether I had the same ?
I got the same behaviour when I added debugging messages.
We maybe try a combination or add the retry.

> I haven't gotten further so far.
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

Anis C.


