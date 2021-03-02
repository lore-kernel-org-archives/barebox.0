Delivery-date: Wed, 03 Mar 2021 17:19:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHUDt-0008NU-8t
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 17:19:41 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHUDr-0000TL-Le
	for lore@pengutronix.de; Wed, 03 Mar 2021 17:19:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lz6v/xsaM4QJP5/v6nbPQxnENRH2nfEPFsv880jInvU=; b=pOjNP08u5XZreZk7V2ARGOb1/
	aJsGbr6kiXjwM2hjnmfyXl/sjvP+ZhNDQ6WTPuV7bA9I+toOZPWDly8/GB8rCD8Wh7vKkc561ZmvH
	lwtnWd0x1AAA0JuJEW7Bv8yISeYZ57kZL5jQ0SQZKQVPpxne7M1AeJcjxy3HDYQW1ZyszBUgLPbG9
	HyTNm6QuNXr7jEMqB4bMbcojWT++dGxgCHYEUJi7Vaieeq4tJw44+ofBgySdNX7ZqFxKKi58VDB12
	ylS5v6JHbCTaYMS0sT7FSiY2ILVoISNfgS1eBPZ8HVXedygJmAtUOnWvYiDcw24Og7838p+j8VMd3
	uMDEMlN6g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHUCI-005ZHu-Lk; Wed, 03 Mar 2021 16:18:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSpT-005DwN-UX
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=qo6BHcWJrNiLEoUuUIeHaoEykj6MCU3i7SZs1lpImgk=; b=i8+ahdtXMitaCN9rtDkXKzocZI
 YvYmGEBQWYbOAENoioeD9baUc1rybKRl6dELnZqTYs5BO8VPV3YquGQcumx4v9wIGohxNMKD7Z7DA
 tRNHJ7Vz9dEqnuSmb++4xqmFDkaIZmmP5PTK7q2GHAqUpv/z+ApxuuzyOdL1UyirLKSYkh3M24z2h
 EsiYp+LmIYbJZeQ9ONHrMNieTGfSSBhbkorT3fdLNDNCNeH1Sc4QmyPFqdLE48K5Nisc1d6R4Ki2p
 bUxrLwOrzf69XgsXl/xuxvMsRE0r2PnxPl8RrzNvHY9i6g9xtUt1VM9x/bMo54DbEdyQAZsdKVene
 K489v2lg==;
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lH61Z-00HGM2-UM
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 14:29:22 +0000
Received: by mail-lj1-x22e.google.com with SMTP id u4so24166093ljh.6
 for <barebox@lists.infradead.org>; Tue, 02 Mar 2021 06:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qo6BHcWJrNiLEoUuUIeHaoEykj6MCU3i7SZs1lpImgk=;
 b=nVlUiGHsurcdllqtBSVyivD3+ZwKsXP3m6BtI9Xbai96Dz/f7TLHFwSXWLVm8Tc22M
 iIrFfjm16pgoQ5h/FENXgCYrWUAU4tEzs7KTFpYTGVEuo/weF+zV169EQL4254uUbktd
 u8DIEieHr2FNc3FpQ0MFW3hYqSwhojv740MhUl7qkyUGY5H/t1N9wnuHOBx3VPb1RYa2
 pcyfmCh7OInsvgfpu5mFd2SbQ4HZ0pZNaDgJm8rQrjxRkpsCzrNcu/yc6P1jcP+yaAwe
 QHJaq+ibfByDS/m0PUk7DIn5c/CWlhK4hxxZ5VqDdaf1nSWk2wJ+L9cw5QymmMKKcnFO
 fuxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qo6BHcWJrNiLEoUuUIeHaoEykj6MCU3i7SZs1lpImgk=;
 b=lUj94mct9clwUWwp38SwyO6EvqUplM3qwWT4OMHfo9qbtj6roFEVddVIJO3nrJmO0g
 EWZaf492RzAWslBEWe8vg7+0C3lPwmFywQ4fzK5F1E/mCXUYos19a1+593vyD+feziW+
 4tqDNaitWrsGfH5xODq/zKWHhy2rqflRzP0V0qY7v2f+rDPkwY49B2WyzLOcaO2Q4jVU
 27dTZD5DEuPBi4ogyTX0y0mEuO58MBuPEylSsEFc7c4XCogSKpNunYBJQnWc59bFiZnB
 efTAD2JnwvFI4zRoApI1WWovud/mBxvByhZ0m0pRuNTAMQeRq3fCcAW1tfKC0ZWY3Jf2
 NcAA==
X-Gm-Message-State: AOAM533ffiBzZ36AP3rXMURfp50VcAAQkHrhJmI0sBW0tgXtkHW5/7uj
 gybMJOADfw4R93wVCpMfja0aXPSYMCj8zw==
X-Google-Smtp-Source: ABdhPJyOrcImY/2tKbLpSUyQP4a9AR5BhN/y9QZC7HZ9we7RPxQAEeNgyCxQA6yQRCn04KzqQEFHQg==
X-Received: by 2002:a2e:87d8:: with SMTP id v24mr11965723ljj.387.1614695295871; 
 Tue, 02 Mar 2021 06:28:15 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id z14sm2653047lfh.296.2021.03.02.06.28.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 02 Mar 2021 06:28:15 -0800 (PST)
Date: Tue, 2 Mar 2021 17:28:14 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-Id: <20210302172814.ac8a31bd01efa18df2065992@gmail.com>
In-Reply-To: <20210228190836.1451663-9-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
 <20210228190836.1451663-9-ahmad@a3f.at>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_142922_309816_7DA686ED 
X-CRM114-Status: GOOD (  17.05  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] virtio: virtio-pci: restrict MIPS support to MMU
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 28 Feb 2021 20:08:36 +0100
Ahmad Fatoum <ahmad@a3f.at> wrote:

Hi!

> MMU-less MIPS doesn't play along nicely with VIRTIO_PCI.
> e.g. Reading from a virtio-rng, will return clearly bogus data.
> Document this in the Kconfig, so no one else trips over this.
> =

> Eventually, this should be fixed..


Please describe, how can I reproduce the problem.


> =

> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/virtio/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/drivers/virtio/Kconfig b/drivers/virtio/Kconfig
> index ecf66987b3ed..91a89d3e1b89 100644
> --- a/drivers/virtio/Kconfig
> +++ b/drivers/virtio/Kconfig
> @@ -28,6 +28,7 @@ config VIRTIO_MMIO
>  config VIRTIO_PCI
>  	tristate "PCI driver for virtio devices"
>  	depends on PCI && HAS_DMA
> +	depends on MMU && MIPS || !MIPS
>  	select VIRTIO
>  	help
>  	  This driver provides support for virtio based paravirtual device
> -- =

> 2.30.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

