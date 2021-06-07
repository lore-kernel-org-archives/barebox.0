Delivery-date: Mon, 07 Jun 2021 22:07:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqLX0-0006A6-KW
	for lore@lore.pengutronix.de; Mon, 07 Jun 2021 22:07:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lqLWz-0004wU-Go
	for lore@pengutronix.de; Mon, 07 Jun 2021 22:07:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BqszfKQvPdjRbiCfXsWprKbC3CCsNVW/HflbfdH928=; b=Tzti5HysAdYRqC
	LXQ3VgJyzBhdxRTBqBpcLGr6wi2fjv0iPYBIamLvIhpNtFXw1IrRY3MNgKFKKxN6nn5PPyuj02a9F
	bIJiJCc1KngsqIKiPX5jkYtRktW55bII1WrtY7C3c+zNKaBZQKNnIc7KD8qeNuqDJEy/k5tjx8Qee
	uOQnlQigE0UQOAIYkCG7MvVJqn18/gBPDrjzbVK8h8CnYPUs9g+MYNv/vLkA9LaBkZG1YYFxuh5d7
	t5M0VPQqkWreH9ax0YLurG1lvQrE8YRLzSDsuj3A8bepR+FBqrUsFAB/RxEp2mxH8Daq1UBDwaeET
	QwKKXwjbxequssNbvUaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqLUl-005FaI-0z; Mon, 07 Jun 2021 20:05:11 +0000
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqLUW-005FXQ-Lf
 for barebox@lists.infradead.org; Mon, 07 Jun 2021 20:05:00 +0000
Received: by mail-lf1-f45.google.com with SMTP id w33so28342957lfu.7
 for <barebox@lists.infradead.org>; Mon, 07 Jun 2021 13:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uTt5SbnHKq9S65+uMMxthMkwXACw5yu50gyHOUv5Zhw=;
 b=bwdV8Oea8z2NgY6Eymbu6qw0zw7HKZV+wNM2lrfCK115gilpZTYaXQJMFT0ugZT99L
 9fve3ui54Q/l9ebpUYFaO/SL7txIwSyJfwkjR/XX/UQlG0Qol3/rHuxJ8+xgHALA0A/X
 HNkuGeExyGf3AHP6dP4Of7gyHVYYHILhPFfcKk6G+UoNaK9OZYTPfRZBSUeJBpWOH6s5
 fxVPnRjNyR7PDHAjEcXGri3dT23K6ihJXQyWiK849TvOT7u5bJXgIOD3+NpjXcVDD3tj
 l4k0//DA/qhUE5dZE7ICgx0/ZMt9965dfr/xYhi+Vo/btRLzUL3grUCVphT5voqhqTJv
 PMXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uTt5SbnHKq9S65+uMMxthMkwXACw5yu50gyHOUv5Zhw=;
 b=c/OHGrQvZj4XChZdpj9VT0sINMban60sGQeAdckQbBJ8fyJUCL0FjdvAbMI2FCeDRH
 zCOExJT9zSNqQdxCjqptfBbnDQ1mycelgzmjCZP6xR0Qn+FgHvgAIiY+3JpiXd3zixtu
 wQo0w4gKOysAavJEMH7cKFCDI9WhTeoE0inSSb5rNgd4wlW4ubKd9EG5D/0s8Lz2qXhk
 3LRtlcHrpDr37/6K50M7KeHOzhbDbYmNUEoBsA7wtcDN8rf1kI1+/yNI0MBDcBUaa04s
 hP7ulb1xSEpCvlNFbFomm4U9zFM7kks4woORq0H9zU5a6AKQF0J4Uxk0Hds1Its5ktSU
 Qf2g==
X-Gm-Message-State: AOAM530jJkd2iypzcXG5i36EfhT+n3kiZvan+sWqx6Ea7HmgmwOtl4P3
 RFO4godgFaTmQP4gE495YthqzkNkaaMBVbBG3HR+qw==
X-Google-Smtp-Source: ABdhPJxVe9tEibel/8tveLgSSm5XHtgkIkDTRi++vJPvD/DJ2AELeu+G4jgi2n7PwTOLwjx89pmQqHRGZHs3+ztuZMc=
X-Received: by 2002:a05:6512:751:: with SMTP id
 c17mr6983094lfs.605.1623096231968; 
 Mon, 07 Jun 2021 13:03:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210607090951.107269-1-andrej.picej@norik.com>
 <20210607090951.107269-2-andrej.picej@norik.com>
In-Reply-To: <20210607090951.107269-2-andrej.picej@norik.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 7 Jun 2021 13:03:41 -0700
Message-ID: <CAMHeXxNtHQdWBZdDc0fXJ1Q2Fj-=H2anmFGosKGrV12Ux1cncg@mail.gmail.com>
To: Andrej Picej <andrej.picej@norik.com>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_130458_998530_3637F67A 
X-CRM114-Status: GOOD (  23.97  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: i.MX: xload: consider ECC strength when reading
 page
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jun 7, 2021 at 2:32 AM Andrej Picej <andrej.picej@norik.com> wrote:
> Some NAND update tools/flashers do not take the full advantage of NAND's
> entire page area for ECC purposes. For example, they might only use 2112
> bytes of available 2176 bytes. In this case, ECC parameters have to be
> read from the FCB table and taken into account in GPMI NAND xloader to
> properly calculate page data length so DMA chain can be executed
> correctly.
>
> Tested on PHYTEC phyCARD i.MX6Q board with following NANDs:
> - Samsung K9K8G08U0E (pagesize: 0x800, oobsize: 0x40)
> - Winbond W29N08GVSIAA (pagesize: 0x800, oobsize: 0x40) and
> - Spansion S34ML08G201FI00 (pagesize: 0x800, oobsize: 0x80).
>
> All NANDs having set ECC strength to 4 (13 bytes) despite Spansion NAND
> chip supporting ECC strength of 9 (29 bytes).

There is a bug in NXP's latest imx kernel, lf-5.10.y-1.0.0, that
results in the kernel driver incorrectly using the minimum ECC
specified in the ONFI nand specs instead of calculating a maximal ecc
value and using that, which is what prior kernels and the upstream
kernel use.  It was caused by incorrectly resolving a conflict when
they rebased one of their old patches to 5.10.

The common pagesize 0x800, oobsize 0x40 should use 8-bit ECC.  That's
what the uboot, barebox, and linux drivers would do since the first
mxs nand support years ago.  It's only the recent kernel bug in nxp's
kernel that will choose 4.

So rather than switch to 4-bit, it would be better to fix these boards
to use 8-bit like they should.  More reliable ECC, and it will work
correctly on barebox, u-boot, old imx kernels, current upstream
kernels, and hopefully future imx kernels.

Using the FCB data here might not be such a good idea.  While it seems
like the right thing, there are some issues:
The barebox main gpmi nand driver doesn't use the FCB
U-boot doesn't use the FCB
No Linux kernel uses the FCB

If you try to read/write nand from any of those places, it won't work.
The only way to make it work, is to have the FCB match what those
drivers do.

I think it would have been better if the original design had been for
the bootloader to read the FCB, use that to load the kernel, and then
fixup the ECC config into the device tree for the kernel to use too.
One source, the FCB, which is propagated to all users.  Everyone will
agree on the ECC and there are no independent settings to keep in
sync.

But they didn't do that.  Each driver figures it out on it's own and
hopefully they use matching algorithms that arrive at the same answer.
But of course this fails, like with nxp's lf-5.10.y-1.0.0 kernel.
This isn't the first time, this same type of bug appeared back in 2013
in 2febcdf84b and was fixed in 031e2777e.

So while your commit will allow these boards using poorly chosen FCB
values to work with the xloader, they will be corrupted if nand is
written to from barebox non-xload or from linux.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

