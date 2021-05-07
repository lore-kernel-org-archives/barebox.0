Delivery-date: Fri, 07 May 2021 13:13:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyPv-0004L3-RC
	for lore@lore.pengutronix.de; Fri, 07 May 2021 13:13:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyPv-00072F-2U
	for lore@pengutronix.de; Fri, 07 May 2021 13:13:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8uddG7n31+Sx3jYUN7scWA3d5MLWmTcfLwX473FCfVU=; b=M0RY2nVuz8PA1Z3jdwI3LpzX3
	DoabYUskgbhJgQFfh5UxC5IOctSEKIhaI+jwLcgHTxhpZjmJZcJD/IKPYIE7qMIfwbFAC1IdhOZjD
	8TyKcvAD1ZEf7q0jo1UyzFeu1ea8j+Td1/H8cfKJNzSvhmJTVfRRuroEn5JKOvfF6GerWFo4dRhSH
	2qQzthtktZTL1cBxpMaNmOe0EZdOLCvtl0+U13I9GO9kVyGtlEAybmJDMGVbE9gHODmUhy6EU9E5H
	LOrN2bnk6VlvQlW6sEGmeAxn1psX0sEYmrLu35VlggTDtA1CfG61GbkZIFxq1XiLFpZk5wZuqFJNM
	YCIjKnZ1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leyOy-006vM1-Nd; Fri, 07 May 2021 11:12:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyOt-006vLd-F9
 for barebox@desiato.infradead.org; Fri, 07 May 2021 11:12:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=1fRA8i9ItnxwnGf/I+ShwB+VK9N6PA0R+1fBgORon+k=; b=jesFVf9Vf44pJnj7EW9SxMDGjR
 blKmjHSJSlojGSXY6j33ZcA3Ki6apoiZUPxYzYzLYWIljhhBn/SSVeDT3CjNqTOjGIzcBs5qI/nNs
 hQ8piV0tAWD0NEzwmRCFNMYDBAP5TLHyJGgfmUinNtIcwxg1E647OjX4+jgsTiDHmamahBnTJnflb
 fUC5tTeJe5sSKfB3UVyPLp+Dh69DqRQB2tPXydC3zgekrAS9KpcD8DBwbEuhIHEH05MTwiLiSshQo
 Pg4CXoaIvveaeaXCgb6FHAOt7RIdC2vGOVRx7y4wPKdU0EBOBjVtxhPnuB8LC/khzdebaJuRmY7T6
 YL6o/UBQ==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyOq-006oLc-N9
 for barebox@lists.infradead.org; Fri, 07 May 2021 11:12:05 +0000
Received: by mail-lf1-x12b.google.com with SMTP id i9so5656106lfe.13
 for <barebox@lists.infradead.org>; Fri, 07 May 2021 04:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1fRA8i9ItnxwnGf/I+ShwB+VK9N6PA0R+1fBgORon+k=;
 b=YPFXAA3UDoWvsK0xhltSaaTttW9JXpeUOXMeZla2aQh/BwT88NhiykczRv2QWqmgAW
 yJpQJGoktWwMvt+3YE8bK8VES0ora+Cz4LnQQaem/eE1ccCrXITu5AatxLH1zoUeUo7C
 4NMXqD47ttYdVu2wRug2R2lapVZiXbWjS7ZUmatSMhnv5zz0iWMpWNlu3R0RzHpx1j6Q
 Bm2O/yUkks91UWRmj6qrM/eEehzOF4Ab/6MLq/ASpa2cHOcsHO2kPEoVnR2QxIDgeiRT
 ftHt2pWRD9hr0hqrGUyW5sb2KFCDqYKiQ8nLKgDHeUX6fQu3n//FTjOoHMMozIqs3Le7
 JeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1fRA8i9ItnxwnGf/I+ShwB+VK9N6PA0R+1fBgORon+k=;
 b=qpQpkn2nhLE4JT+o/FFffgwIGWHu3ALzCcqjG+eaNWAOvBYzAAsnyVPp27szn0RZJV
 eElYrqME0izDzDMvI/fWTsZXXMDOAa9CNHUloQenhr+qWjzyONd8Xt6gqYD/Nh6K8K6S
 xgMiOpT6kKcckA1CjiqVDR92A7ViAV7tnCgnWJ510vB7dt9wlMe44HYz5M6iH9/Ipc5J
 WEgTYL6DdCe7BpVN3qEUtZfYnAhdbHd3Avuq4WuXWtyoWnqu/4zk2iNea7Spun/lz29y
 S6+NIsyzw5fNQZRgwHoaNdORT61RwJXmlOwW5bfBXcI3jQnP/YtCQwrNFMubc0idkDv8
 BYhQ==
X-Gm-Message-State: AOAM530/O6OqvnCJs1/Km6GFMwzVF0VpxN/vw7uH4eldDDnpaoo3UGIP
 2GFT+yRx6NGAawXWL8MpGvV1s5Ovtbe5hw==
X-Google-Smtp-Source: ABdhPJwGq0dNt6CXk+PLRRTwlP9UMuWOpwluECdktvgieF+jo2lM72T0Jnlx9xNKCthOrHOk53pI7A==
X-Received: by 2002:ac2:4e0a:: with SMTP id e10mr5843659lfr.33.1620385923011; 
 Fri, 07 May 2021 04:12:03 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id h8sm1332751lfc.101.2021.05.07.04.12.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 May 2021 04:12:02 -0700 (PDT)
Date: Fri, 7 May 2021 14:12:00 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210507141200.9875df7bab5d0ed4548617d4@gmail.com>
In-Reply-To: <331e6c41-2ced-22f0-ba69-27d0213897c9@pengutronix.de>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
 <331e6c41-2ced-22f0-ba69-27d0213897c9@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_041204_794065_5C15999C 
X-CRM114-Status: GOOD (  12.67  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/11] RISC-V: add LiteX SoC support; resurrect nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 7 May 2021 12:23:47 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> On 07.05.21 00:08, Antony Pavlov wrote:
> > Changes since v1:
> > =

> >   * rebased on top of next branch;
> >   * new patches are introduced:
> >     * clocksource: timer-riscv: select CSR from device tree
> >     * RISC-V: make RISCV_SBI and RISCV_M_MODE explicitly mutually exclu=
sive
> >     * RISC-V: make it possible to build RV32I multi-image with DEBUG_LL=
=3Dn
> >   * almost all of Ahmad's notes are fixed (e.g. unused header files inc=
lusions are dropped);
> >   * NOT FIXED: gpio-74xx-mmio still uses dev_get_drvdata(), not device_=
get_match_data()
> =

> Why?

Changing dev_get_drvdata() to device_get_match_data() is easy (but not triv=
ial).
On the other hand there are three new patches in the v2 patchseries. I fore=
see discussion
on these new patches, during this discussion I can polish gpio-74xx-mmio ;)

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

