Delivery-date: Mon, 15 Mar 2021 16:39:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLpJD-0001Kv-DJ
	for lore@lore.pengutronix.de; Mon, 15 Mar 2021 16:39:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lLpJC-0000ll-Jo
	for lore@pengutronix.de; Mon, 15 Mar 2021 16:39:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ottd8DX8xB+EjeXLdD6P7F2Lmq86nKRvEifuIpBH514=; b=UvcJZSueLKPcgh8QlGZ4rCTzb
	Gtn4GWqBJnKvJ3FMHpYyghyYbuurlkXZpaNpRMK6Nx/69vWfVZWoShWZBIcZa5uIToXe3I0zqT+Rx
	0M6M9g9V9h0ZsGPVX5Nk746IsT8yO0q+ox5VH4EMQOmaCA0rxmQC/N7rFRvChyaqNOLRULm9i6vez
	48BAkQDZpftVAqF7JaSTSeL9Q1bLJ+0yBjT5oAyZaO9ljvlfXNJ0jNIt//IOjfa0CnJMUqjSUxOlU
	tek9jolQfeWpPR+UwlkoaniVLSuZvX2e8Fcs6sjotyw8p7eBjRudpjpIbh7sLHPqjdahmJPJur2Qd
	SaewEudrg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lLpHu-00GHIU-IA; Mon, 15 Mar 2021 15:37:46 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lLpHo-00GHHf-5V
 for barebox@lists.infradead.org; Mon, 15 Mar 2021 15:37:42 +0000
Received: by mail-lf1-x130.google.com with SMTP id e7so57607061lft.2
 for <barebox@lists.infradead.org>; Mon, 15 Mar 2021 08:37:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DQm9n6fmsQdSfsev3ZWuCFha4tsWOusz71Y5rUFRZik=;
 b=esAbfslpb3DtNvUTqDXyCapgwv3Cj4NCy/7Dtrj7MI/qm8nzML9bvykON0JN8Pl3VT
 X0mTlWgGUM3S2jwHch+XOu9Klz+sbAUZjceYYR8xZe//uLgM6X7EU/RJbFXN+9eQUbx1
 7G+elVJjhAm45JHCsoxofk2VHIla7oVcg+6Y8TzpFCON+c1tMFLmFZCK7aQEitQ5KV05
 M4KsxPvibxNVFgleuy3imb0lDdQ8rBPZvuswpk5bhpQ1R+bBd6XhrbX/gUS6nsn4UOEP
 tZMJR/KEOroIr3aA5fxkWYblZnBShCj3jUQvcdOyiIpJM7iXfZRN76kq1L8H4zecMuQy
 d+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DQm9n6fmsQdSfsev3ZWuCFha4tsWOusz71Y5rUFRZik=;
 b=FPp5gosagU33KKoXmGT2N6I4a9eMdJcVua2OjgFZTqt60dBO0VIGBlDQ8RLvdrFRfr
 6Cp78Byf7DUzK/U/Ue3DkGI47ooVj08+GAO25s05kLvV+hEKOzolJ6GPgFFgkl8iehev
 0I+UiU3JlKt6VXGu50agOy2jiW5yKvF9wegrO6JbIWSLlKutkjloezFMz3FutL8bWhaG
 2VkgouT+JaJaxvX0LTkSURXbQCf+SpdxGkrERi+BYmn2+IO+WOYpqJFSTpcXljrg9lv7
 F/m6oWq2nEatGMqjWAXabcXxYfC3p3evSq4JXwuzhfExtOBzJ/ZJJBrj9fPNBHy67GyP
 9h5Q==
X-Gm-Message-State: AOAM531rYQxnXPn2UEPubicdh1M1n4EmtwLqQFA42sWLBmYDszvHfTBf
 13jvqVFIZuY6Q3yXpELcYqJGKrdG/56Ung==
X-Google-Smtp-Source: ABdhPJy4U900HW61ej93z9ywLQL5WMQ5HYQlwtM4bov8N2W+9+xqmGzdMp/WN31Zy++tTH7/NbKJ0A==
X-Received: by 2002:a05:6512:11c3:: with SMTP id
 h3mr8135381lfr.366.1615822659392; 
 Mon, 15 Mar 2021 08:37:39 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id k6sm2763699lfm.19.2021.03.15.08.37.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Mar 2021 08:37:39 -0700 (PDT)
Date: Mon, 15 Mar 2021 18:37:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-Id: <20210315183737.22015972e2e058b32f21447c@gmail.com>
In-Reply-To: <fbf9adbc-7ef5-61c1-60ac-91aa7ac38517@pengutronix.de>
References: <20210314122804.4128-1-a.fatoum@pengutronix.de>
 <20210314122804.4128-15-a.fatoum@pengutronix.de>
 <20210315114353.c3bece8ebb5eae822e9349bd@gmail.com>
 <20210315114515.hcqboeb53otdums7@pengutronix.de>
 <20210315150834.2607507ef97f6a63d68494d4@gmail.com>
 <fbf9adbc-7ef5-61c1-60ac-91aa7ac38517@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210315_153740_306199_0BDE0F78 
X-CRM114-Status: GOOD (  18.31  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: MIPS RELOCATABLE: [PATCH 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, 15 Mar 2021 13:40:10 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

> Hello,
> =

> On 15.03.21 13:08, Antony Pavlov wrote:
> > On Mon, 15 Mar 2021 12:45:15 +0100
> > Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> > =

> >> On Mon, Mar 15, 2021 at 11:43:53AM +0300, Antony Pavlov wrote:
> >>> On Sun, 14 Mar 2021 13:27:58 +0100
> >>> Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> >>>
> >>> Hi!
> >>>
> >>>> diff --git a/common/Kconfig b/common/Kconfig
> >>>> index 36207274f07f..37204fb40a44 100644
> >>>> --- a/common/Kconfig
> >>>> +++ b/common/Kconfig
> >>>> @@ -44,7 +44,7 @@ config BLOCK_WRITE
> >>>>  =

> >>>>  config USE_COMPRESSED_DTB
> >>>>  	bool
> >>>> -	depends on ARM
> >>>> +	depends on ARM || RISCV
> >>>>  	select UNCOMPRESS
> >>>>  	select LZO_DECOMPRESS
> >>>>  =

> >>>> @@ -358,7 +358,7 @@ config KALLSYMS
> >>>>  	  This is useful to print a nice backtrace when an exception occur=
s.
> >>>>  =

> >>>>  config RELOCATABLE
> >>>> -	depends on PPC || ARM
> >>>> +	depends on PPC || ARM || RISCV
> >>>>  	bool "generate relocatable barebox binary"
> >>>>  	help
> >>>>  	  A non relocatable barebox binary will run at it's compiled in
> >>>
> >>> Hmmm. AFAIR MIPS barebox is relocatable. Why CONFIG_RELOCATABLE does =
not depend on MIPS?
> >>>
> >> good point, I'll need to test it
> > =

> > At the first glance the only point to enable CONFIG_RELOCATABLE is to e=
nable FS_PSTORE.
> =

> Without having dug into the MIPS code, the main point of CONFIG_RELOCATAB=
LE
> is that PBL can check for it to decide where to copy barebox proper to.
> =

> This is very relevant if there's no TEXT_BASE that works for all boards
> that you need to support with your multi-image barebox.

So CONFIG_RELOCATABLE can be very helpful.

At the moment MIPS barebox is always relocatable.
Sometimes it's useful to run barebox from fixed TEXT_BASE (e.g. during gdb =
debug session),
so this fixed TEXT_BASE behaviour can be introduced for CONFIG_RELOCATABLE=
=3Dn case.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

