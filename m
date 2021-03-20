Delivery-date: Sat, 20 Mar 2021 06:57:39 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNUcF-00009T-J3
	for lore@lore.pengutronix.de; Sat, 20 Mar 2021 06:57:39 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNUc4-0006tu-UC
	for lore@pengutronix.de; Sat, 20 Mar 2021 06:57:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZZ0g9S2n2i7OzoY180k/FnGyjbvrMUHWfINwUXCuH/c=; b=ZWJO68RbK+jHkBPDGeOCZLJzi
	CG/hR+CwJ2fXjdzF21EP5xrjPPBwHtJJsutr9jv7OFuEGEGiGyuJaUvochXoo2KOI7/0E22yOmtsA
	wNWLIpUaPZRGP7k6JiEDX9IEJ73uLf+2afep7Wvaczcg5Bfl8/Ovhb6SjDRZG8zu+8tPWQc7HvoPC
	W3yLFn9lWrITJEWwj2hvnU8TbpI0//OrFDJh7TyqFKxxXpJsUeOJmTrb0qeZ5TYHefjw7u+/kMoR2
	so669mHy9uDhdE1lNsttzgNy3fBVuwdXchVqOTtz9tJgqA9FD8j6mpWaGFCcwLty+9qEPyHpqRqAE
	81YnyKhKw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNUaq-008ZBM-6h; Sat, 20 Mar 2021 05:56:12 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNUag-008ZB0-RU
 for barebox@lists.infradead.org; Sat, 20 Mar 2021 05:56:04 +0000
Received: by mail-lf1-x135.google.com with SMTP id b14so70783lfv.8
 for <barebox@lists.infradead.org>; Fri, 19 Mar 2021 22:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SzPRa6WE1ykM6sqle/UTIaHQjsqdpTmcJEyM/fw/8Tw=;
 b=AeTkDX9EvvRjpWFlGtD5Q48xH7GvywLNOqWSVOKyXt/Fhuy/y0jxj8F/X4ycjuNy3Y
 p5S2JNQKQ+2d62EZ1blFVDHPFRn+f+3ugpnQh5VaDsbS5SyexruWEjN3M/yevfhJd9/g
 tBT4adCbkvF/6CjGuFJ/IHojAh8F656d8nlrAokKmBbY9Aw7MshMCoWZguDW4bw1Csu1
 m8W3oHVyTZoTD7nfQGVWWTWBPD5+6fuGLUQATp+aPT3KU672bMQrf1n8rT+mhuFbdRen
 0WKQCkEQdOmG/ba0u9lTzXMrmeW3m6gKohQdxIAf77wi0RwFKE5OIZODBafk/Lnc7AKg
 XeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SzPRa6WE1ykM6sqle/UTIaHQjsqdpTmcJEyM/fw/8Tw=;
 b=H+RQ7YIOcTN6LkTNAh/6SyRwM/pxbnpguEHXG4Yi/D/mlEZu4VkhJgyExjU1HP7Vde
 /lI52NyvwwWjmeH9zYgR6c33DMhIVcPtp1SyWwkEFMPX7NWhZdB+ylW1I98q8kYYSiYh
 4+ZRNMGPIWBTn1q5Y0XUE6OpmFonH7ptM3ZrU9RchWA2QQadoKroIpRUUp24jVXaNvjx
 sP8Ns+BSb+ThjANVDOnv+iDSvmSaKdLdfY2/iTbfhKGIPJHpt1qW0GjIkljSdhKySGrH
 brtWdKUk/cGzYqmtXPLBU5kBdvKOrlx7HcXx76kLMun6tdJREvI1slYwzm7FpeQ0wy1X
 rfsQ==
X-Gm-Message-State: AOAM53371sOGJSchSrORDv3O5ORLhOP7TA3mmJ4Hkh7urAyhOgfhCUHH
 iFmMqb9YrmeMA8JNlLjzGOZUkEWwK+anEQ==
X-Google-Smtp-Source: ABdhPJzThgnf25bcWNo0ReJKKjEmPHnmeFS9nhvLLk+LZTTCqH7mfZwfPu6L9czJ9fUOWohl7kUaKA==
X-Received: by 2002:ac2:482b:: with SMTP id 11mr2810781lft.642.1616219761628; 
 Fri, 19 Mar 2021 22:56:01 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id d4sm864853lfq.270.2021.03.19.22.56.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 19 Mar 2021 22:56:01 -0700 (PDT)
Date: Sat, 20 Mar 2021 08:55:59 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210320085559.05794b95fc0fb6f7a4c2aeb2@gmail.com>
In-Reply-To: <1346e4a9-604a-5e94-3add-226b7ec4619c@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
 <20210316080505.19361-15-a.fatoum@pengutronix.de>
 <20210316171221.d9f38875021a468efdf41dc5@gmail.com>
 <33c77bd7-e4c3-e258-b47b-84bdce1c00ee@pengutronix.de>
 <20210319183705.5164077ba6b130220b8f7cb0@gmail.com>
 <1346e4a9-604a-5e94-3add-226b7ec4619c@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210320_055603_220762_677C3821 
X-CRM114-Status: GOOD (  10.55  )
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
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/20] RISC-V: erizo: migrate to PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 19 Mar 2021 19:28:10 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi!

> Hello Antony,
> =

> On 19.03.21 16:37, Antony Pavlov wrote:
> > The first bad commit is 90cde3b9ff46 ("startup: Execute init scripts in=
 alphabetical order").
> > I have reproduced it with these compilers:
> > =

> >   * riscv32-unknown-elf-gcc (GCC) 7.2.0
> >   * riscv64-linux-gnu-gcc (Debian 8.3.0-2) 8.3.0
> >   * riscv64-linux-gnu-gcc-9 (Debian 9.3.0-18) 9.3.0
> =

> Thanks for investigating. !CONFIG_GLOB && !CONFIG_SHELL_NONE configuratio=
ns
> were universally broken. I just sent out a series to fix this.

I propose to investigate another glob-related issues:

1. there is CONFIG_FAKE_GLOB in the C code but no FAKE_GLOB definition in K=
config.

2. we have at least two fake glob() functions:

   * lib/glob.c contains one glob() definition under '#ifdef CONFIG_FAKE_GL=
OB'
   * common/hush.c contains static fake_glob()

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

