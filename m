Delivery-date: Wed, 13 Oct 2021 13:36:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macYn-0003RI-Pi
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 13:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1macYm-0002i2-8h
	for lore@pengutronix.de; Wed, 13 Oct 2021 13:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dHAAncqdzCBjxovxqRHA671i31wMIBaGAV9ZBhWR5lc=; b=qTStXGeZyXqknd
	W/RjSvgVwUm4t3/K8/CWCGOZ62K4iy9JhGZM1Dik9RVRTVo0kEbzd3WHOFqbn8ejYCo6ZOx3Q2MDe
	bYHdPQNPzqPzAAtB4gQlhoXaPOCc+pmDWlT+McYhOU91r1DOLYv8bVd+3vKFhUALTmnw0UUK8oNEI
	H/sSTPW0Ny3SW3861PNINAGrIMPMUU/Eym2g30SN96ipkaTMyAsw6DKEgOqDbjUQFdXa1Gh1V4lMM
	GpCAeHZ19dy8yJQVAaaGCkRMiTQU/g0NSXbiEraVNX4q0WMoxkFbAIaqTM69WCaMNYdJLsODoZGvv
	n5LrhwftkS7ErCH0vlAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1macXE-00GL8I-PH; Wed, 13 Oct 2021 11:35:02 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mabRy-00FzOr-KZ
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 10:25:32 +0000
Received: by mail-lf1-x133.google.com with SMTP id y26so9551384lfa.11
 for <barebox@lists.infradead.org>; Wed, 13 Oct 2021 03:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=edysRep+Ly6n9omY5exMs+xwAlIPRis3myENZPX2JLc=;
 b=Y/0HuP/T/Z2c4HBKeQFotzMn3+wzth5ueS825DggLcJ+vuRK3mp22qumnu3iV/fi7v
 mHFo22VnF7rkbvyf33DpwjKpJRbiIzET5/BMzT9HtdF8UgVUhWfWORz0NX9mJDQXzw8q
 iHgNWj2hQqOac0XZeMSTzKcNEXsakecMIXbPfouBTX12lTm6Z4O4LCV+ppt+lb445z/K
 GxD5z30WPFY8xNCW6TYD4SyF9zit/BxeugDBQcmJxBo7C9TXj8UpKCnpqq1ONTR2dzCq
 6t9cyyd/w1bJaKUMfKCiwTf6psrU1kQ6SUyPICZmcanRwQTCRe2CTemBvcmiWfwx7FMQ
 30XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=edysRep+Ly6n9omY5exMs+xwAlIPRis3myENZPX2JLc=;
 b=KCJ5EMxxupFEwL2EtMFxyWuzILa2UQpTrt8BgUy4wh4gH5T/s7TG/oudYY70QTVaMh
 rrAsrhPFAJRhvPkqMp7H6D+Bnj/H2unrLYO+AezVw62d77Z87p63Os11HQh2rHiMJfjW
 rtHznJRdrKBpsB/MJSGqjgcJAMKiWI7NWJ/YTqWh/7f5OS6BDB/dwxmJNkf12A/i27uy
 zvuVbji3dNgoZkGq1pRbJqEgcgh97LVhTTE2SWzILcB+BcxOD7NL3QsxcoP6gk5QXH7w
 svzI7P6A/cAcJFsYnLx8XhTcr0KsiTf8KOTht0M3BjbUUKtJhiM+ZXr/70sksvJDqyQD
 s5fQ==
X-Gm-Message-State: AOAM532CTPQgMdRdzvArvYH141QdFv7e7E5BqjOxNjBLx18c+L/LmYtS
 mkAl1PrXrxkTlRUbJzN0w1Vwn28RuBfRK0GUOUV7Wm4TXz4=
X-Google-Smtp-Source: ABdhPJzJNJ6AyL1DSa9/PT+xU/Snf4RH7OqvICSS4JD17Og9QVBMxUUC9IiqarFqKBqDoauXaUW70gjjhMqoiaY/Ii0=
X-Received: by 2002:ac2:5210:: with SMTP id a16mr17054095lfl.279.1634120728575; 
 Wed, 13 Oct 2021 03:25:28 -0700 (PDT)
MIME-Version: 1.0
References: <20211013075327.28225-1-o.rempel@pengutronix.de>
 <20211013075327.28225-2-o.rempel@pengutronix.de>
In-Reply-To: <20211013075327.28225-2-o.rempel@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Wed, 13 Oct 2021 03:25:17 -0700
Message-ID: <CAMHeXxPE0Y71XOLLmMfSiVVA1T51+z_Afi9Kzn3-9qX=hxKOFQ@mail.gmail.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_032530_723902_FCCFEABD 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] net: phy: micrel: sync init code for ksz80xx
 variants with the kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 13, 2021 at 2:43 AM Oleksij Rempel <o.rempel@pengutronix.de> wrote:
>
> Sync part of barebox micrel driver with the kernel v5.15-rc1.
> This change will affect most of by barebox supported 100Mbit/ksz80xx PHY
> variants and provide unified devicetree support for LED and clock configuration.

I already added LED mode OF support to this driver.

>  drivers/net/phy/micrel.c | 249 +++++++++++++++++++++++++++++++++++----
>  1 file changed, 228 insertions(+), 21 deletions(-)

227 added lines is a lot to do basically nothing not already done.

>  #define KSZ8051_RMII_50MHZ_CLK                 BIT(7)
> +#define KSZPHY_RMII_REF_CLK_SEL                        BIT(7)

These are the same bit in the same register!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

