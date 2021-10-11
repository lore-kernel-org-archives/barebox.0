Delivery-date: Mon, 11 Oct 2021 18:41:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZyMX-0004Vu-Mi
	for lore@lore.pengutronix.de; Mon, 11 Oct 2021 18:41:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mZyMW-00062C-ON
	for lore@pengutronix.de; Mon, 11 Oct 2021 18:41:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrTXWHajF9rE6/TE2bQxiON9RcvcebcXymOO8N4eUzw=; b=Dm2XWHpzihSulW
	uknILoTVvp/mqK7SHBsGXzAf1tAeMEhJ96f/wR61O1tZE7GunGD/NMEWb/9SlX5/svRwKGSNw5l6j
	5e24tKazBwAbAjX2KPKBxyqEBp1xjmc748ANwXxBZPMDJrty7b2X8zalYWaZZNKu4pwrat2sCSNim
	EjFWLrx/s51pdiyoYSmfM5DvsJbLFYDdUitoMhCSMo7MmUdDh/uuHXQwLNDxyGzf0q42C5PGSy9Au
	7Y7y6GUCEUqejh4MkkGsVQF/otCSbmiOeMCWXjui0V9viCwL0ydeGINN5g0uXvQpxlNJaXibFmdD/
	alg5rBzu7CsihNIGsw5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mZyKu-00A71W-49; Mon, 11 Oct 2021 16:39:36 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mZyKo-00A70l-JA
 for barebox@lists.infradead.org; Mon, 11 Oct 2021 16:39:32 +0000
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com
 [209.85.210.174]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id 19BGd5ex011181
 for <barebox@lists.infradead.org>; Tue, 12 Oct 2021 01:39:05 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 19BGd5ex011181
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1633970345;
 bh=i++DA27+XREYPUxbn2obnVOpWSBUhH63JsJROLS0oFw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=01Hr6ABdc4nPpikotDXSzVRYxSaeIcLdU1k9t4JCJBkJNW4IUC2xWc3dYdFQvMsGy
 hE4tr/i5lOYsJZ/NFniRdCAg9iWKbgdhgQ0ArR+B3XmpOIWQkIiZtwHnIckEsY9kKp
 b/rekx7HvQUmKScBm49zVIQpzP/I8+N/19j8TKBV3VPVyvenFStesLtPRgUcOsTVBH
 3uBsYz8W2YxmKl3PKRP7wdk9pffGjKQgMQ3m1VRLGu/eFxuSrOscqlwHf47oHkGfe3
 uzR0I5Jc2nesxNF4SA1uScBbcs1FbVsB4vrOzArVT0VDyyfojX/hBLLgW7ayWN1zcW
 t4Cy6D0oAG30w==
X-Nifty-SrcIP: [209.85.210.174]
Received: by mail-pf1-f174.google.com with SMTP id t15so1593012pfl.13
 for <barebox@lists.infradead.org>; Mon, 11 Oct 2021 09:39:05 -0700 (PDT)
X-Gm-Message-State: AOAM531ojDf0hrOzqDx6/JEjQk06i11TMGWss5sr6qmJkBnZ6xuaLh7d
 b7xh8YiaUlPc8hbgb+grriaZXmqkqe13XcaZu6c=
X-Google-Smtp-Source: ABdhPJwPZ4fMVGW10CY1N72L1OP7TzNQFqMonfoCyxzDfz6zqnlVs3uHhh4+1wXpqyjc/LwdP72QucpW8VZqtlaFkp8=
X-Received: by 2002:a65:530d:: with SMTP id m13mr19075541pgq.128.1633970344687; 
 Mon, 11 Oct 2021 09:39:04 -0700 (PDT)
MIME-Version: 1.0
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
 <20211006142254.1751864-3-s.hauer@pengutronix.de>
 <CAK7LNATVZXcPcHMbQ2T2tCa9+id2AY_1RgMe=-XkH=_aoXGc+w@mail.gmail.com>
 <20211011145248.GE28453@pengutronix.de>
In-Reply-To: <20211011145248.GE28453@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 12 Oct 2021 01:38:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNASY0fnOH5S3xDVBCH7TsT-ThcPCwLBc19-TR2gU2wqHxQ@mail.gmail.com>
Message-ID: <CAK7LNASY0fnOH5S3xDVBCH7TsT-ThcPCwLBc19-TR2gU2wqHxQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211011_093930_990525_C6254479 
X-CRM114-Status: GOOD (  21.14  )
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

On Mon, Oct 11, 2021 at 11:53 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Oct 11, 2021 at 11:37:07PM +0900, Masahiro Yamada wrote:
> > On Wed, Oct 6, 2021 at 11:26 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > >
> > > Several functions are duplicated in different host tools. This patch
> > > starts collecting them in a single C file. We start with read_file()
> > > and read_file_2(), others follow in separate commits.
> > >
> > > It would be great to compile these functions in a separate library, but
> > > I don't know how this can be archieved in Kbuild. Instead, the C file
> > > is included where needed. Not nice, not beautiful, but at least enough
> > > to get something going.
> >
> >
> > You can try this.
> >
> >
> > hostprogs-always-$(CONFIG_IMD)   += bareboximd
> > bareboximd-objs                                 := bareboximd.o common.o
> >
> >
> > hostprogs-always-$(CONFIG_OMAP3_USB_LOADER) += omap3-usb-loader
> > omap3-usb-loader-objs                       := omap3-usb-loader.o common.o
>
> I did and it works well as long as common.o is used only in a single
> directory. Unfortunately some tools are in subdirectories, like for
> example scripts/imx/imx-usb-loader.c. Of course these could be moved up
> one level, but I didn't want to go that path.
> Do you see any possibility to archieve the same with files in different
> directories?
>

Then, I have no idea.

At least, the Makefile part needs to be moved up.

hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)    += imx-image
imx-usb-loader-objs := imx/imx-usb-loader.o imx/imx.o  common.o

Probably, you do not want to do it.


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

