Delivery-date: Sat, 13 Jul 2024 00:36:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sSOs0-004EZQ-03
	for lore@lore.pengutronix.de;
	Sat, 13 Jul 2024 00:36:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sSOrz-0000oO-GQ
	for lore@pengutronix.de; Sat, 13 Jul 2024 00:36:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uNM7NkiMB795TfJFzgxJvqs48aaTzdTA6T5SCMrd2F8=; b=1tJ6XO+iE3Uz0L79y12Q7OVoNe
	lq5P6DImyzqdA0NRxKkEVRVGXXWnWP3beLQiCtDBexCGD2Rd57mz0AxpsbQrB9x9udzGAnCONtsss
	dYSIWCxRU0uHoe/Zu+LlOrpzwhc+Q0aFrGnPVw55mOJLSGMlGE5hrpRlboaufWJsuVlKKpzWC2rSn
	o7gAzxnJoFR1qWhg6a2cUeD/espiidzol+bu2StWJduf86UZ6RTjDWzxx6bpZiJ1igqJY//b25+CJ
	eB+E3+TlljXlfI78efbJdM4gx8ktzEOIYNUlS+2vhQHhAjZKs4AHsf53u7ybhqyYubxG1Xs8k50qA
	eJoWP/bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSOrF-00000001PDY-00w2;
	Fri, 12 Jul 2024 22:35:17 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSOrC-00000001PCx-1BM1
	for barebox@lists.infradead.org;
	Fri, 12 Jul 2024 22:35:15 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-59a47d5c22aso1203911a12.1
        for <barebox@lists.infradead.org>; Fri, 12 Jul 2024 15:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720823712; x=1721428512; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uNM7NkiMB795TfJFzgxJvqs48aaTzdTA6T5SCMrd2F8=;
        b=YJQlcvKNzUgiALyEgl2Kk/hitQOB1dliCLPIHSrau4pkJ+aqn0PkFEUemHvTcO3rrt
         lhVsd69IXg8EwNIID78CcZ0MPfk5qe4GBCMWX0xIS6BdarPjrs2RjppQ/g5AOJKoabRy
         GnNfUM5sUa8gfQi4WtRQy3KVuER6mFFYjWs1qdXTHcYYKqtuAIeQb9ZAD1UKeQTM5QcZ
         JLV7XlpUDZJotX6k687RdJgnZswuOGhqu64yrKmOb92S5IZ8/jl77TdRYdS5yeG4Rv9v
         WhtimLvRP69xbOHnjCUlngaMdKUOyPa2mRHTW+Vxk/pWfHOAIY89x23F5LUdPSDJ6bSg
         m+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720823712; x=1721428512;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uNM7NkiMB795TfJFzgxJvqs48aaTzdTA6T5SCMrd2F8=;
        b=I8RU3ubb/05v44ttALTgNcQb9ngLz5arex5aV7MTCIuUrXowGZRIIyW9o1OT0EZo6I
         xqcTMcy8LqIc7KOhpZVbIPMcCrkVYYlwb4OlVXWW/akj6Wl89NNYjmLPLvRVAIaBXsV2
         31p5SiQh/fujJeeuHMvI5B3Zd2U25HlX4FeHNm6OC8Sbn6kBDiPTxpoV/CKdNwvXePb7
         C7QBf4aoRxWk13qouoppUeH+IMktNuJ9MbeWrDabPrglv7GzHyYqrznoYxYv93PcF5J9
         EKkJEdOLBDghiXaMSTV0pLh8QFkkR17ooVuuTj/2eJ3t/wUrifmuRudjapy/C+vBKKqh
         ScuQ==
X-Gm-Message-State: AOJu0YwFMj6huPWwdUCz0wMUqzGk7ac83kwheJmOme8PoL9aTcHANkJv
	nxL91pkCveHV63NrFHDnaXonsLiq6S0FSeSd6SfbeKFf935n8pCiPIt4O+ilHJCRP38c4WPf0h5
	YC2LOpHZXhJkJPZZaqDUhaUSBn3k+AZfE
X-Google-Smtp-Source: AGHT+IE0oO7J0dDAB/3AdJY67XPKZ896IF2p+MSn7OAP4BfYGQFHK2MOBGxeaxWyiKe8LlaqQs0jG8kwkzDoLvylJsw=
X-Received: by 2002:a05:6402:42c5:b0:57c:a478:2ff4 with SMTP id
 4fb4d7f45d1cf-594baf87479mr10122348a12.11.1720823711662; Fri, 12 Jul 2024
 15:35:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
 <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de> <CAGWymk23wmB14DSzHcyjc0eHCVaNgxeG6ykL7WyE_fCCiTsdsw@mail.gmail.com>
 <c1ac0b3f-5a9d-4aab-9f26-d8e0970e959b@pengutronix.de> <CAGWymk38NhebcvNAbDUeXJ+1BRU3V+npCTYjeykca4EoHkiyYQ@mail.gmail.com>
In-Reply-To: <CAGWymk38NhebcvNAbDUeXJ+1BRU3V+npCTYjeykca4EoHkiyYQ@mail.gmail.com>
From: Wes Chow <wes.chow@gmail.com>
Date: Fri, 12 Jul 2024 18:35:00 -0400
Message-ID: <CAGWymk3srm=hZ85_jGGPt5Xzp117YDY7Y+v+a7mk+rU2MO-0Cw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_153514_346536_52B58BFD 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> In the target, I'm getting an error with barebox-state:
>
>  # barebox-state -d
>  state: state failed to parse path to backend: No such device
>  unable to initialize state: No such device
>
> Do I need to configure barebox-state somehow? Perhaps the Linux kernel
> can't see the flash?

I discovered the problem.. I'm using Buildroot with the
qemu_aarch64_defconfig and I needed to add these Linux kernel config
options:

CONFIG_MTD=y
CONFIG_MTD_CFI=y
CONFIG_MTD_OF_PARTS=y
CONFIG_MTD_CFI=y
CONFIG_MTD_CFI_INTELEXT=y
CONFIG_MTD_CFI_UTIL=y
CONFIG_MTD_PHYSMAP=y
CONFIG_MTD_PHYSMAP_OF=y

I can successfully run barebox-state on the target, dump, and set
state variables. I'll submit a patch to Buildroot.

Wes


