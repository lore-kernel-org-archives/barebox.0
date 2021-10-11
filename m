Delivery-date: Mon, 11 Oct 2021 16:39:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwSp-0006px-Q0
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 16:39:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZwSo-0000bR-VC
	for lore@pengutronix.de; Mon, 11 Oct 2021 16:39:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmdNbTWyiY3dxpwviOgePD79/jDI629pzaJ2RW0IdrE=; b=x7wVhnmXWE8hZH
	+u49hs/Iqw1i/kCCFhNczrPtWRaJvxk6OHlLBo247K6Cd0SfPCAEfznBO0Atv2JX7ew32GsKIJgYn
	8nBz9XYMplpjsenNB5EjbHzpIsfSOyttqtVM/VzMJpAa6DB75Pd9XywNL6h467UM1Al0O0kB6BvRp
	hYNjfNYDyu7awycUNG8MNWgz1DCeM3K0Zy3Y+61u3b74D7IEoGkZ9VtkKPpDeA4gVjOx43YMt8DPm
	DNDZgGR2RZ0dwRimzDBsMLCL2xBPqiuiYTmNAvDkmzizFmHOGkRgPExt39zOegcv7F50gM4U4ORRY
	0PjfE4KSdpLK2zZhBJRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZwRM-009nLh-DD; Mon, 11 Oct 2021 14:38:08 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZwRG-009nKH-OH
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 14:38:04 +0000
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 19BEbk2m016364
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 23:37:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 19BEbk2m016364
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1633963066;
 bh=65lGyZzaI8+sC3tXk2Q4743OCXG5FMTQ0eKBCKfKhCg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=FbdwFlFBHLZemLTgW1tLQdLPA+fOHKD1Hr8nkhR4c3HDqhSh148PZsOETVju7i3jj
 uCE8ptLiqCBcugGhUN4t5bd2dBbfrP1qkDNRwVH+4X58RLkzx5IW9WXzDmenWb5j4T
 BUx500npAzPXqYt5G3mmCQaPe0MOQWg2RQ+O9RZrvAcGzmtzAtvkE+7YmdRDIk19ko
 NeY6Kd5uk/G+5nLoJ47S3/M5aDOwZvIVtmIWuX3I6tX3ZtMi8sOoVUnS5TAs1y+5P2
 /QEcw91MZNIkDrC+HZm4dBmtYE2vi1TbFHQHL8tUA/7geVqb1XeC0wqVuoiSttnGS6
 5f7vYi5/xBrZQ==
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id
 pf6-20020a17090b1d8600b0019fa884ab85so14857943pjb.5
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 07:37:46 -0700 (PDT)
X-Gm-Message-State: AOAM530jTSRBNhK/9Z32sXyJTbpNOdm/YGv78hwyYV2g7HbaF5BVbad2
 gdk3wYVAJW2F8lNOObKqMUuKbm5MINdZEgnBW28=
X-Google-Smtp-Source: ABdhPJxij08D3UYV/lm/WD0AmlrynKyLz0IExBb4Jm8Ra/WlWmit6oqlHFkF1Pg3UDJNqo51nJxezlIq2jW53eRFOX0=
X-Received: by 2002:a17:903:283:b0:13e:f38c:2282 with SMTP id
 j3-20020a170903028300b0013ef38c2282mr24070666plr.82.1633963065825; Mon, 11
 Oct 2021 07:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-3-s.hauer@pengutronix.de>
In-Reply-To: <20211006142254.1751864-3-s.hauer@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 11 Oct 2021 23:37:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNATVZXcPcHMbQ2T2tCa9+id2AY_1RgMe=-XkH=_aoXGc+w@mail.gmail.com>
Message-ID: <CAK7LNATVZXcPcHMbQ2T2tCa9+id2AY_1RgMe=-XkH=_aoXGc+w@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_073803_216700_953B45BA 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] scripts: Add common library functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 6, 2021 at 11:26 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Several functions are duplicated in different host tools. This patch
> starts collecting them in a single C file. We start with read_file()
> and read_file_2(), others follow in separate commits.
>
> It would be great to compile these functions in a separate library, but
> I don't know how this can be archieved in Kbuild. Instead, the C file
> is included where needed. Not nice, not beautiful, but at least enough
> to get something going.


You can try this.


hostprogs-always-$(CONFIG_IMD)   += bareboximd
bareboximd-objs                                 := bareboximd.o common.o


hostprogs-always-$(CONFIG_OMAP3_USB_LOADER) += omap3-usb-loader
omap3-usb-loader-objs                       := omap3-usb-loader.o common.o





--
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

