Delivery-date: Wed, 08 Sep 2021 21:03:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2qp-0000Wt-0x
	for lore@lore.pengutronix.de; Wed, 08 Sep 2021 21:03:15 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mO2qo-0004bC-55
	for lore@pengutronix.de; Wed, 08 Sep 2021 21:03:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0wOd59vtZZsl2k+u2eKQaqowLyjvYzRzIqtrlkxxvw=; b=S0bOM5FBZOS3TFPEVZtDoVLqy3
	5WqYy3HaMsh6+QQfhHdx0/1dNgj3+a1+2k878ycmc89lO4bQNqyGiYrHNveOTOZM+gyRkc4inSw4U
	VrcbH6xNes4xWzfjqbT0iwQEmfm/sbm0EY7p8vQjv7kjD1WstJl+BinVDuP7vET96m5Y5bw5Wy16/
	f9x/xQ4t8F1gD9v6V4eGC6CG37qCDujrODdkD0PeqGv/+spv7kehaajIN9hIeZhhMOsWreDLzNoUx
	RXO0riyvXSlboYO+qEXoDatK4uVrFo09HEHsHBX6sT5rvW9aW9UIqOnQ2ZyevbuZFneySigxGYR0i
	CjAYB3gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO2p3-007RtQ-Qo; Wed, 08 Sep 2021 19:01:25 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO2oy-007RrO-3k
 for barebox@lists.infradead.org; Wed, 08 Sep 2021 19:01:21 +0000
Received: by mail-lf1-x130.google.com with SMTP id m28so6843080lfj.6
 for <barebox@lists.infradead.org>; Wed, 08 Sep 2021 12:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=b6/gZZ2saiH+maqvnHTFPssjb7pP9jnPywY+iFPMqF4=;
 b=f9vG/DbhowdrFdRGy4V2iC0AIkpH4wJtNK86Ulu0v3k2GVnh19cvVJFg5S46ZK7dAf
 6WP5Lm7Irr1WCWPH34WPVmnPNFTjAX/vH2/phA78dGRFjpoEb/JMF8KlkmrcnPrX9feR
 prnqQvSaWxxgVH3lCbEcGQZhW4TTqQS7+OB+GS8S4rnmm2UfNYrjSz82tbh2Wys6nTrM
 ITKnyKCwZu/PZg44LEvsDbxlA4l3EkdFigGtWi6TWu5AfWUEy82fC3Q/M1hpH4cAk5W9
 kbZf67tWuzyP4SSXlg6DNIXB7l1CLrN/GtwwX0jCWbspgLveovou8xu9bpfMR67JG+wg
 vY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=b6/gZZ2saiH+maqvnHTFPssjb7pP9jnPywY+iFPMqF4=;
 b=IpYW13S4Tk2JSZnnaqwtCcpYmMfhV9XzLrw4PrTd3GavM+piGIFLZBynl4T5ZAFlfc
 cJbTCYyoVPefLeuS43KUSMn4yveroSTcF2rsxTyn/oMts+M4ZwmQFon4SWR4CtD4/Zks
 6dO70d+fQ4aijPZP/iGgEwuKLZye4l5GXEN5adjXWo50abfK03YsI3zlGGO75M9xSZRe
 Ir727rXEC/UrdzBhrcfsGGWOo2t5pZmqDrMd+JmFVrh3B6ofqNHpRiNiZyd28sOoV0jT
 /7hNVSVmv+JvvJMcNG+dHs72aY29XBDjKmmnoNuk+qpelXLwtWLcJ601ty6NYJKFFB+9
 uWmg==
X-Gm-Message-State: AOAM5333b5J6iE/e6Sjd2nvpjiKfAyePbnbDfoZ52XQl0oo2H+cahDa/
 LT/t9+j+D+QTGQT0RqO9zX6e2L1nvDvFZBdEGXgnUtxvttXjfQ==
X-Google-Smtp-Source: ABdhPJyN3s7FvwngXGf8hZX8WHN7dMsbGk/m7Pk7/91rqagB8TGTeGurEPJZbZNBG5bvDbV3R21KmRz44g3Yrn9QOAc=
X-Received: by 2002:a19:6147:: with SMTP id m7mr3526184lfk.636.1631127677909; 
 Wed, 08 Sep 2021 12:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210905135122.7038-1-a.fatoum@pengutronix.de>
 <20210905135122.7038-5-a.fatoum@pengutronix.de>
 <CAMHeXxN_P3pVSAStL2Z=8La_ioGHNu2hw9qQyFYAJ1VNA8hiEQ@mail.gmail.com>
In-Reply-To: <CAMHeXxN_P3pVSAStL2Z=8La_ioGHNu2hw9qQyFYAJ1VNA8hiEQ@mail.gmail.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 8 Sep 2021 12:01:07 -0700
Message-ID: <CAMHeXxP7Zg9r7fXYCzSYF-AZZAKmnxXMeG9uQqz5abP3BYiH8A@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_120120_241278_1C0189DB 
X-CRM114-Status: GOOD (  12.52  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] ARM: i.MX: extend drivers for i.MX8MN (Nano) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Sep 5, 2021 at 6:52 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Extend match tables and function definitions for i.MX USB, ATF,
> MCI, NVMEM, pinctrl and serial drivers for the i.MX8M Nano.
>
> There is no special handling required for those, compared with
> the mini.

It shouldn't be necessary to add them when there is no special
handling.  The device tree should list the earlier type they are
compatible with as well.  For example, every fsl,imx8*-usdhc I see in
a device tree then lists fsl,imx7d-usdhc additionally.

Though the Barebox driver does NOT list fsl,imx7d-usdhc.  It works on
the fsl,imx7d-usdhc because that is compatible with the
fsl,imx6sl-usdhc.

Really, the error would seem to be the NXP devicetrees only listing
imx7d as a compatible instead of going back to imx6sl.

It is also interesting that in Barebox, the imx7d uses the imx6sl
compat entry, and that entry includes ESDHC_FLAG_ERR004536.  While the
imx8* is supposedly imx7d compatible, it uses the imx6sx entry that
lacks that flag.  I think the error here is that imx7d does not have
this erratum.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

