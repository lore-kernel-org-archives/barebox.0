Delivery-date: Mon, 19 Sep 2022 19:23:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaKU2-009klT-NB
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 19:23:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaKU1-0001ID-IV
	for lore@pengutronix.de; Mon, 19 Sep 2022 19:23:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Epps4qlGH5pyQ+K1I5uPIt6WFfP3EutXZPcbXg308U=; b=R4hVA8thxa/fIJiAarZBzKlHIA
	e+Pte1ffU3wfTm2+8r9HSWqhGeLJ6m2v4ndUHes9cPX+VHlFaqWV7zcZsnPjmFinYMEnhW+4IjiIo
	cMn3rUAJLXLKE9xWSvXz6TxUEPiCPyjQtTcBM8Zv2DqvE8jkEoiC6Z2VHgBVpNqswaxBYpUu7exq0
	w5BMUaICl4ciSq+mSU1QUIQdHZ1DYey9L6MuJyfNr8T6Qky9uNDQQHPENA1KZtQXEGQyAuJEHk77o
	NT8erwAZJg+jqPRG8av4hdlbJ1QPq4NyTscuCvIJoT9sqyKN8E/Ix38i3MxOFidF1+tlhJqGj/QSJ
	DtjLS+UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKSH-00DEZQ-5k; Mon, 19 Sep 2022 17:21:13 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaKSA-00DEY9-V9
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 17:21:09 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-333a4a5d495so347421627b3.10
        for <barebox@lists.infradead.org>; Mon, 19 Sep 2022 10:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9Epps4qlGH5pyQ+K1I5uPIt6WFfP3EutXZPcbXg308U=;
        b=H8OS7Ujh1N195qwGr1zUsiz8x7A6Kiv3JxTgM/LzZIitq96qboUZnFb3nRQsFNw900
         JPU3iBeeWexECYjlMvJcbpYJk937blTcik5ES8+MBkEdl4VzvVUj11UUYjiw3Eg0yfCx
         BkiYlJ67V0qbR831X3nNgG0XcWkJYZ2FYfCr8P3YerI5I/s0NOq5F7s1kZOkBdinHDTZ
         MeUh6QfXZRcZq95Cc0cHT34wvwRZUPDbRdaeltdAAIYjcRGKRbCW7N83G5sreblIFF07
         /I+4fzNRN6BzbC/4HveewOvdDC6dQyHnSLYLBFe01WtP/aaAU7HMODT1I56qii9OCugT
         HB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9Epps4qlGH5pyQ+K1I5uPIt6WFfP3EutXZPcbXg308U=;
        b=35fheBGVt1eIi5Y2vH043YF8r9qZNLtYE7xIb+PNuyR3oo/unYzk/5Tj4gKLExkgMI
         wJK8if8WgRa0QpOFJRs8Q338qj5inoDPg/wdXMv/9BKD0o10CP5/datNMLBCXDJelWl7
         iNDU4s+12W04gb2pl1kZDlExGgX3E+kf1+SgDqhNFs2nyBKb7A741CFuH0tpn2wQ47cZ
         +S5CrTlW3epjf8zgew7Sr05XMI4JYFLdlcxAryiZGy2CT9/qAobR0XwfEbyeohidQP+6
         gGOowA3gY/RDr8Jfp8WTqVjG3U+GBfO2CnxtbPYTD6+eOocg3I4VVzlILZalB4QiKMSP
         auSQ==
X-Gm-Message-State: ACrzQf1upUHbfCWnjVm0M+PkDCN2W+yisaEcoAnzsyGwdB3RXnrcYmc9
	KPhnKNtwwTYhGVlxPe0vsrMYtC6sbhryUGdHimYRKeXKtUA=
X-Google-Smtp-Source: AMsMyM4GH0QWWrTmP5gB1C9SEvLzZsclZcamLo/83mJehbGcLC4X1tiPUiWPJIwJTh20ei+lRlN7ZP++5Er+S5N/9EY=
X-Received: by 2002:a81:5883:0:b0:345:1065:8762 with SMTP id
 m125-20020a815883000000b0034510658762mr16138236ywb.386.1663608064279; Mon, 19
 Sep 2022 10:21:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220916124942.3751131-1-s.hauer@pengutronix.de> <20220916131606.GZ6477@pengutronix.de>
In-Reply-To: <20220916131606.GZ6477@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 19 Sep 2022 10:20:53 -0700
Message-ID: <CAMHeXxOuxZnVcavXvwi1Y13kfRBP+opRgqwyEvSGBjQK6dSX1A@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_102107_234739_524B86CE 
X-CRM114-Status: GOOD (  13.11  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: Bring up all interfaces before going interactive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 16, 2022 at 6:16 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Sep 16, 2022 at 02:49:42PM +0200, Sascha Hauer wrote:
> > So far we only bring up network interfaces when we actually need them.
> > This means we could be idling in the shell for long and once the user
> > decides to do networking he has to wait for the link to be established.
>
> We could make the user experience even a bit better by doing this call
> before waiting for the autoboot timeout which then speeds up netboot a
> bit.

The Linux phy driver almost invariably does not bother to avoid
resetting the network phy when not necessary.  So if network
auto-negotiation is started in barebox, it will be reset and then
restarted shortly after in Linux.  The link auto-negotiation impacts
the LAN's spanning tree if that is in use.

So there is a drawback, besides the small added boot time to
initialize the network hardware, to adding an unneeded network restart
in Barebox in the case where interactive mode is not entered and
network boot is not used.


