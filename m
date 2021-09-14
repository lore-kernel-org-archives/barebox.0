Delivery-date: Tue, 14 Sep 2021 21:14:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQDsY-0002jV-BB
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 21:14:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQDsX-000595-DV
	for lore@pengutronix.de; Tue, 14 Sep 2021 21:14:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2YAwwU9vifQPZI5PZIrH8ZJ2Q+astFduQ3GwrW/qTM=; b=D4KvWXbcTveq4b
	nz99TmASS2qDPtek08ZAaSb3NgSOs12S5a1pZpOjaTuT6r5E3UbtfTIfgc79dFzkYW88TJ9GkIaQq
	lOwJAFZ1CZvS0kOf/3EP6xJyc/HKPSnCDfpjf0IYH3877xekwX857YVBo/WIkWL8jIhvyPAXlsf4k
	VTfiDlgMx8qpClP5ekPo/rP3k9fabBzXSMsSix4fdp8HbZZDkdfeQntkhcRHDRqW39Lfox6wnrIlB
	TsbtgGg0ihJ05e6eISDtKpu8r8SBKRpANP9FffJ+MbGnH3oVqQPAq+eyi0aFDUL5QIW/0teaO2SQr
	RW1wXYshUy8HywaXQdRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQDqo-006tWa-Dy; Tue, 14 Sep 2021 19:12:14 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQDqi-006tVx-PK
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 19:12:10 +0000
Received: by mail-lj1-x232.google.com with SMTP id g14so627375ljk.5
 for <barebox@lists.infradead.org>; Tue, 14 Sep 2021 12:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5hN3SNRd69eWZnCXmEQTtwSY0dBRqMkCxxa+aosDjTw=;
 b=ihgG35d9zA1GboJxLgEoUI5JSJwhUAS0seYt7pf4oKKd5nASkvdxIEQWoctDffQ/5X
 DCdXk5OZN/Frcvr8uZA7NdapQoeWOQW44HOGCoDCIX6B+mjdo4UpYyhwdpVM3bDifvEI
 R8yPH1EOH4n6aHW19KcGB3HmwSH3ZTh4V6nqonQ0iUS+kjclgmVnm5/6gBDb1wPBOkLX
 1WLXZcp3+XDvdUj5l86rFyiAobNTfrmqCR92nADjP+P8hmC8ZzV+Xp4zgPEqt+TeLKCX
 ojOrgna/0JSnJoemaF+w0HiYfZ5ICCdBn8ThEyOvWE1SOBYMQLMv3RLcvamYtk92hShz
 nXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5hN3SNRd69eWZnCXmEQTtwSY0dBRqMkCxxa+aosDjTw=;
 b=TDMBCR9H6IIt6COPExvS9bgBa+KF7d/AqwF3q9DJz9AWIyWm2vyHhf3KFXF5jMul+o
 N/5BmDB+l30eHjwSdpZj7PM4GIcJ27ModNvOF5eL7N6SsF4twWjRt7PLC2YezYAu7zGX
 /jZsLPiyeSP+oeaLCmxew8H7/3KY7+3l1G1Nx1svm93jJc6WbRd1hG1vapf/gNHJ8FfQ
 9kaNpYWQ/l2kRBhZN/cNLrbsBdWYYCH7BJSQDIuaZcBk2lHRBA4ywAl15DRFNNzL9Ad1
 w3OLBvcNYzJ4gXccyiZu0L+vevGWoIDwQzXRdRse2SwIwKIvXU/Q4CvQOKE7OgMTYWOB
 gOXw==
X-Gm-Message-State: AOAM5326nNC7poqy6P+hWkC4CVltdinp01U8RchAKeA2x8YUhs0cci1B
 G9fwCNt8FXxxpEyCXRQTO9FO5ayBRIoPoAK55azPfRYEmZjvug==
X-Google-Smtp-Source: ABdhPJxFZHpViWLyuXviejQW5tikkrkCnKWcJ+m5/T3IMt9mFmfvKib5RyopVRbBEW/raJguFcjQqiIpj5kKi554X/E=
X-Received: by 2002:a2e:8547:: with SMTP id u7mr16702250ljj.188.1631646725727; 
 Tue, 14 Sep 2021 12:12:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
 <20210914132016.22572-4-a.fatoum@pengutronix.de>
In-Reply-To: <20210914132016.22572-4-a.fatoum@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 14 Sep 2021 12:11:54 -0700
Message-ID: <CAMHeXxOisX+Nnqk-5SPF3uDwFH4TGOyNv13fX6vdshXJhm3gog@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, ejo@pengutronix.de,
 rhi@pengutronix.de, uol@pengutronix.de, renaud.barbier@abaco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_121209_042060_64932C63 
X-CRM114-Status: GOOD (  17.19  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] scripts: allow building USB loader tools for target
 as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Sep 14, 2021 at 6:21 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> We currently build the USB loader tools only for the host (build) system,
> but it can be useful to cross compile them as well for the target.
>
> We already have some target tools, but support for those is easier,
> because they don't link against libraries. We use pkg-config to get
> cc and ld flags, but we always assume that pkg-config is for the host
> system and there is no well-defined way to request pkg-config for the
> target system.
>
> Support this by introducing a new CROSS_PKG_CONFIG. This will be
> consulted only for target tools and default to
> $(CROSS_COMPILE)pkgconfig.
>
> Users can override it as necessary, for example, with Yocto, pkg-config
> will be for the cross environment, so target tools can now be built
> with:

I just added support to Buildroot for building imx-usb-loader from
Barebox, since it's nicer than the standalone version of the program.

Since pkgconfig was only used for host tools, I didn't need to make
both host and target pkgconfig work.  But of course that will no
longer be true after this patch.

There is a problem with only supplying CROSS_PKG_CONFIG.  To get both
host and target pkgconfig to work, I also need to supply the env
variables used by pkgconfig, PKG_CONFIG_SYSROOT and PKG_CONFIG_LIBDIR.

The former makes the paths returned by pkgconfig correct and the
latter controls which set, target or host, of .pc files will be used.

Maybe something like this in the Makefile:

CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
CROSS_PKG_CONFIG_SYSROOT ?= $(PKG_CONFIG_SYSROOT)
CROSS_PKG_CONFIG_LIBDIR ?= $(PKG_CONFIG_LIBDIR)
CROSS_PKG_CONFIG_ENV := \
       PKG_CONFIG_LIBDIR=$(CROSS_PKG_CONFIG_LIBDIR) \
       PKG_CONFIG_SYSROOT=$(CROSS_PKG_CONFIG_SYSROOT)

HOST_LIBUSB_CFLAGS := $(shell $(PKG_CONFIG) --cflags)
CROSS_LIBUSB_CFLAGS := $(shell $(CROSS_PKG_CONFIG_ENV)
$(CROSS_PKG_CONFIG) --cflags)

Then use those everywhere someone wants the libusb cflags.  Repeat for LDFLAGS.

You'll get fewer repeated invocations of pkg-config this way too.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

