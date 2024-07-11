Delivery-date: Thu, 11 Jul 2024 13:48:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sRsHp-003k6W-2Y
	for lore@lore.pengutronix.de;
	Thu, 11 Jul 2024 13:48:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sRsHp-00078p-5Q
	for lore@pengutronix.de; Thu, 11 Jul 2024 13:48:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u6ijd898lZP8Kv5aXvBUGJu6kkwTluGf/voqEM4F5sw=; b=UClBgsopL5uXRDubDUxqJEoYKh
	CxWbuFSygQ6G6Ly3FqbhCvo27pjWppQFvmlXeKehiO9Cf0d7m8v+90yJTXaGd/JH8S+nyOPiVsHc/
	co7iqLy0DC5jDjSgAEsGEGG85xYqnjwOY1e7I0IJ38HByYuGEn2uWbix4IVSF5ZFvc9u+0QcC/4MP
	nZ3NHCWeMlLZLxmzADYld1aIR+k84YjUSHOzGQyG80mg8YZV7+O+FPs1a/P+lIL3O8VgmlljAuhtT
	v5qZ9ayEubzXM6fGQPGMvZPyQVCSRF0I8pinnvInASe0hK9GqHNDBTngjvRuMjG1DyAFa5f3ZML0v
	IWv0PpJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsH8-0000000DpjB-2Pom;
	Thu, 11 Jul 2024 11:47:50 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRsH6-0000000DpiK-0ptD
	for barebox@lists.infradead.org;
	Thu, 11 Jul 2024 11:47:49 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-57d05e0017aso1076092a12.1
        for <barebox@lists.infradead.org>; Thu, 11 Jul 2024 04:47:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720698466; x=1721303266; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u6ijd898lZP8Kv5aXvBUGJu6kkwTluGf/voqEM4F5sw=;
        b=ALAdFPtAf+549iBN9C1SPg4yZLO3WlGU+zfjeQ56Q1gXDDBarWyJXM04lib4R8LQTI
         lxoB8mQt3VvVF3DCNIFfivP2Yf5JLFcjp8TOJKrwxOkPFRdu8RjqDYbAUefXB36TP9ts
         bA4BAdPwsBQJvwU6OHmJ9wyzW0fB4VvJC2n4hDMKEiaRWhMjjtOnnAWquwHD5QK5VLgs
         nGD6COe4N/U7b7/mjUlwh1r3UY/dz+c93/9qCSfoRK8Cp6iSBWPMYSiiwar6rm0erqGd
         bt1h5shdQYABsAPLBpOSgwCAHsqiI4LBxYnt781jbtKE+eB68/cmNNpggILOG3o6f82o
         F/fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720698466; x=1721303266;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u6ijd898lZP8Kv5aXvBUGJu6kkwTluGf/voqEM4F5sw=;
        b=f7h7ECoSWFl+LfZKd+R+CTbOvl4gASe3ojSE3GNU4YPA7KtlKd8kovDxPeDGBXQJaW
         x0uq3w1z/oYkuIqXhU8M4cXD5MdcZ/kntgGFOU5vkZy9BdDJTC03vtskPv3bGp5f3LHI
         dM5kNxzdDuzKAL8Yg5pdwsIE/5kud46jL83IeMhHiJRvY4r1Dbgah92OsYwA/dNEW2OX
         JvgUac2uwT4RJxphuw930XS3IsWASttVIYSRVr/efVlqNGBp8OxBjek7YNc1NABvelMp
         XimWsG7WRbbnsYlF35k9rsfjvEx+RyJg7pRIqpz51OCcdmJk1gC5/FP2TsahF7wXbG59
         PaCQ==
X-Gm-Message-State: AOJu0Yw2ULFJk3uzi4HRmbjwXYeS77fz4BqDfexGOJZuouNZD9kq5OJa
	99LvszI7NZy5lFK4Fy/TQLOrc9kOufJuoZGR3cUlYZuFBVPbCLrzL5U1WC99VHrtlnk91+zoAWH
	Ll+9jk+iHm2z7hATwyuzKiefNlqk=
X-Google-Smtp-Source: AGHT+IHLKSHFgFyivNNk2CfFSRZmYQOYNRuASiWm6EyGQtKhwqlfnEKvlHdKtq8HLmeMrD4Gt/up6v7+6N2lDXAwAkQ=
X-Received: by 2002:a50:eac7:0:b0:58e:13e8:dc6b with SMTP id
 4fb4d7f45d1cf-594ba6953b7mr4405919a12.24.1720698465534; Thu, 11 Jul 2024
 04:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
 <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de> <CAGWymk23wmB14DSzHcyjc0eHCVaNgxeG6ykL7WyE_fCCiTsdsw@mail.gmail.com>
 <c1ac0b3f-5a9d-4aab-9f26-d8e0970e959b@pengutronix.de>
In-Reply-To: <c1ac0b3f-5a9d-4aab-9f26-d8e0970e959b@pengutronix.de>
From: Wes Chow <wes.chow@gmail.com>
Date: Thu, 11 Jul 2024 07:47:33 -0400
Message-ID: <CAGWymk38NhebcvNAbDUeXJ+1BRU3V+npCTYjeykca4EoHkiyYQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240711_044748_260498_62CD18B3 
X-CRM114-Status: GOOD (  28.29  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

>
> Not quite. As you see in the overlay, there are two partitions created
> for barebox use: The environment partition and state.

Ah, so I misunderstood the relationship between environment and state.
I had thought that state was the storage mechanism for persisting
things in the environment.


> State is automatically saved when barebox exits, so you don't
> need to call state -s manually to write your changes back.

Got it, yes I can see it working now.

>
> The assumption (that's probably not written down anywhere) is that the
> user would use reset, not poweroff if they want state to persist.

Ah that explains it -- no, I didn't see this in documentation
anywhere, but I'm a noob. I may write up a blog post or something on
what I've been learning.

> Of course, on real boards, both are expected to work, but it's IMO an acceptable
> tradeoff for emulation.

Got it.. that should work for my purposes. I was able to see that the
nv variables persisted after a reboot so that's great.

> > ... but I'm guessing I'm missing a pflash argument. I've been trying
> > various incantations but haven't been able to get Qemu to boot
> > successfully if I supply a `-drive if=pflash,...`.
>
> I think the problem is that QEMU expects you to place a "BIOS" (first stage
> bootloader) into the pflash if you specify it. Unlike e.g. vexpress, barebox
> for Qemu Virt64 only generates an image for use with -kernel.
>
> You can use the second flash though (-drive if=pflash,unit=1) and change
> the device tree overlay to point at.
>
> There's surely neater ways to go about it. What are you trying to do?

Thanks, that's good to know.. I don't think I need to go down this
route though. My high level goal is that I would like to have a
hands-on understanding of setting up an A/B boot strategy, and I
figured I'd learn via Qemu emulation before attempting on real
hardware. In a past defunct project we used Qemu emulation for a lot
of development and testing and then deployed onto Raspberry Pi CM3s,
so I just naturally reached for Qemu again for this personal project.
Ultimately I want to do this with real hardware, likely Raspberry Pis
or something similar.

After I set state:

 barebox@ARM QEMU virt64:/ state.bootstate.system0.priority=30

How do I see that that's been reflected in the state? Is there a way
for me to dump out all state values?

In the target, I'm getting an error with barebox-state:

 # barebox-state -d
 state: state failed to parse path to backend: No such device
 unable to initialize state: No such device

Do I need to configure barebox-state somehow? Perhaps the Linux kernel
can't see the flash?

Thanks,
Wes


