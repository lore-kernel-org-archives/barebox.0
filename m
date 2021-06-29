Delivery-date: Wed, 30 Jun 2021 00:00:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyLma-0004Jz-CL
	for lore@lore.pengutronix.de; Wed, 30 Jun 2021 00:00:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyLmZ-0001O7-GE
	for lore@pengutronix.de; Wed, 30 Jun 2021 00:00:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OjLDEp+r8t2LZztNoznridp6YgosFAkhj1r0yrsoYX8=; b=LYHIMDKXKQpujG
	nSfmzk8GtKGv6Fee7KECei55LLZItNZxz9r2rrKRUUYigd7vw24Fxz6hJ63y8Yk4KknEFYszoBR8b
	Bb6v9f7BXtoM3mDOzPOAW33TSObAyhQc0pN9+vZLA/HFGGQht06rDuMo6wNW0n3OZOD+n5nS5g6DL
	PagVr++i5XajjiIqWAUZxaozuDN+CHRuy7f28lQED+GhmnN6M9iKX8cWzuBJRY2hyRqsJ4Qts0kuW
	imtJlZNYIAsbXl7eb2fDO8Oa0UuLe9YV8cddoa88MXXdDWmKTaiPJMrRcHXjCR7EJT0RrYD1R9mUw
	JxnsrD5s5aqoscYqxn+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyLkj-00C6zo-C3; Tue, 29 Jun 2021 21:58:45 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyLkd-00C6zD-CV
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 21:58:40 +0000
Received: by mail-lf1-x135.google.com with SMTP id u13so1050926lfk.2
 for <barebox@lists.infradead.org>; Tue, 29 Jun 2021 14:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R4XqkxZcw4s4FOB/Xc3cpZ11TCpa9OPQUGco0n0aNvs=;
 b=RuUK5FvCqWiY4i2Z1JRZjA5aaM1oOUh6YGgP/FytO8E0uTY7Z3l7YqILJ+o1RjZkYa
 uKrC2EcTO+HUT0M7boIfzjs5HoK29FrlR1CsmDoZdmB6UNgBacbveKlNCJPcEre78Utm
 2ZbS49coO3TiPuDoJ6tPakFsaG876Ji+FM94wcSgQ6hWn9+wDwLZEgdxO3z2U9ArONDg
 VyYAHCZWAn+lzC6J/sNjD953hFc5Zxc5SrDzL9rg59ZHNtKAdCEptEXsuyegsA16fjhC
 yISb+RtblN8MyY6X7vhZlKPR7Jq9BVJQff201OPGk9BzQh2NkgbapJbRMrHwpPijXuDf
 QVkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R4XqkxZcw4s4FOB/Xc3cpZ11TCpa9OPQUGco0n0aNvs=;
 b=bm60q+4G14l+4HK/3iobQ2s8lhamOuI7qEaTDA3Y5BDuCsTElzQWxMRVPZEH5jsWSL
 xxue4bjsHnhdye+UnHDww2nAt9g7thDumlRht1pTiGS+cQaMy9Z/R+QxtZRMjs5dftiC
 HhYPZRVRF76rcp2bIH+aSY9BXwceqKX02exXfrchOaVAiHDGc4QWd5ayO4yGExlDBNBv
 b2Rlv7PnMjH27+KLH2OAJAcP8BC8UFzrzqjskSMOCAF+8cM+gCFvvaTCuPaRYYRr9QSz
 l+CERR6VQeXwrzRkQ6SrhsPLzz4GhRBTHQEt8lDeivGObsjLT+HHzqr2L1EQ+Axi+uX2
 ozPA==
X-Gm-Message-State: AOAM5308Cwo0e9vx8V6/+l4P7MJ9QY5q2P4RUbPgBZLpBcOSaani59Is
 MDb+KJC0DHzCufsnlUw5sZWtI/dEzOCoxOy2+8t5Zg==
X-Google-Smtp-Source: ABdhPJyEw/W9jr8ktUAfEuBMxTbyEsmdyN7VgiUl0gHHbEnsrXpJlen4WuNynG4+NISEZQYPArwvk2fw2byfOOkg9Zw=
X-Received: by 2002:a05:6512:2208:: with SMTP id
 h8mr25223989lfu.113.1625003917062; 
 Tue, 29 Jun 2021 14:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
 <20210629123104.13818-3-michael.riesch@wolfvision.net>
In-Reply-To: <20210629123104.13818-3-michael.riesch@wolfvision.net>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 29 Jun 2021 14:58:26 -0700
Message-ID: <CAMHeXxOxXLKQWnhQ2Z++Gou=+XVm1jL+U1kGGWm7zzZByEV6UQ@mail.gmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_145839_647986_9F9142AC 
X-CRM114-Status: GOOD (  12.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 2/2] arm: rockchip-rk3568-evb: apply dt overlay for
 evb7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 29, 2021 at 5:32 AM Michael Riesch
<michael.riesch@wolfvision.net> wrote:
> @@ -63,6 +64,9 @@ static int rk3568_evb_detect_version(void)
>                 evb_hw_id = 6;
>         } else {
>                 evb_hw_id = 7;
> +               setenv("global.of.overlay.dir", "boot");

Hardcoding the location of boot files in the rootfs into board code
doesn't seem right to me.

Seems like either creating a nv/global.of.overlay.dir file in the
default env for the board or creating an init script that sets that
variable would be the way to set this.

> +               setenv("global.of.overlay.filepattern",
> +                      "rk3568-evb7-overlay.dtb*");

What if one had a board magicvar, something like:

globalvar_add_simple("board.variant", "rk3568-evb7");  // Or just evb7
if rk3568 is already somewhere else
BAREBOX_MAGICVAR(global.board.variant, "The board variant");

Then an init script could easily construct the overlay:

env/init/board-overlay:
global of.overlay.filepattern="${global.of.overlay.filepattern}
${global.board.variant}-overlay.dtbo"

Since every overlay file is added to the same variable, some care
needs to be taken to ensure different initscripts work together.  Thus
the append in the above script.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

