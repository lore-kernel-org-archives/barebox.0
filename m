Delivery-date: Tue, 06 Dec 2022 21:24:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2eU9-00CuP6-9L
	for lore@lore.pengutronix.de; Tue, 06 Dec 2022 21:24:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2eU8-0007SZ-Fi
	for lore@pengutronix.de; Tue, 06 Dec 2022 21:24:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y0zQsFKlmGxP9dRiPYpMbTOb3/TIdfZNxVm9qI/7Nts=; b=sLcbc88pu5CggktIKmUq8r8pVC
	ZtsIh393HzBTPuhZi+0zGqTGKBis987r7YddVZhCWA2D24WvrIoH1EKQPNX/hF7RatLoK8MjsEkVD
	/9mmRa+7u1YtTijlc2f4aU4abZZEMyT3NoYXoq6saLW3Z+caOUo4u0CXn4DI9+Kys8ZLM2XtVaIB3
	18Xc7fo4rPtEDmuCvvo3FfdlTe5LijXepTrZecM+/lovnWBpoDVGP+4X5AMpRCmtzV3i+FXzUAaob
	hAxVTtaBQQYq7orCeS2tonM6O9guqaVzoUPZLNj6pmClnLA03uyR64C7b+SYXjp1g1j3Qh4aYQ7tY
	kUI03XUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2eSN-001udr-Ge; Tue, 06 Dec 2022 20:22:23 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2eNZ-001sCU-DK
	for barebox@lists.infradead.org; Tue, 06 Dec 2022 20:17:26 +0000
Received: by mail-pj1-x102b.google.com with SMTP id w4-20020a17090ac98400b002186f5d7a4cso19135930pjt.0
        for <barebox@lists.infradead.org>; Tue, 06 Dec 2022 12:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y0zQsFKlmGxP9dRiPYpMbTOb3/TIdfZNxVm9qI/7Nts=;
        b=KXUUA9/mXTshKtpsSJVnDDyYrgGQaGdCM5IUFS5alwu4Dh993gTV5as/kZcG0TKZP3
         RvvK2D8Wf1FK8jysjoPgdBKWAiZvS87BvR4WgbUZos5Jrv78Q9OpJnOPYnA4KdTsuOGq
         P8hPJNefXF4OySEfmfvRqMrd/n8sBusir0LvyImavLHcVLfjEw7c3mULk9SLAiqCiBKZ
         WUpSt0nazAiQLkX2r3e47zW7HzSae3hL66EtrEhgCzniDmbRFjJinXteWqzED1Ih5SJJ
         bwz0RDduwP8FOZ2Chj6MZJ87RDc8AB/nbFD087EbJtIaTOFW5viqX/eE4B1scLxBbAIG
         yc/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0zQsFKlmGxP9dRiPYpMbTOb3/TIdfZNxVm9qI/7Nts=;
        b=QbK7yYV6TPC91ngRXa6/3e2BFZYkFyprvEt1jilQdbNF4rmOn/JA2X6SGSs7A3DsHT
         d8IBaNX7B680SCpv6MUDirBSHDbCPu1vZjNSOoBd7KJEPi5ExWytDJrr+ZK8i04tfVr3
         l1Qa2oZAGAfalQnvV+ndtEOP5aXAFU0zIdvjov0W95MRQDUjWx1B5jR0VqD05Q+9Mny2
         YO0Ipg/mV2zIGspjzftXi3q5Mx9ba+Od87/ghMeaV58f7SmkCelfSjIgz7WeCSDmxEUp
         dZc4AjavawV9M3EhHjbb3awHYLxDnV4k0ZcZtLrWvTnxKJbi5eqFwM8TdmdwEi8H3vkc
         9L/w==
X-Gm-Message-State: ANoB5pmNjQB0mvvzoUxyMcPiPUTLPM8Q4PBP8MUiy6iQRvHtL5wyS6jW
	6OIF/x/DOY2fKTA0poMwHHsFgFuaXcgKOwW0UdTGRDt2mxNTLw==
X-Google-Smtp-Source: AA0mqf7W19dVUb/sej0ghbhnaan0g0rjQfUBfYHmkOewiRC0CmOw/nNF3uvSEZz3PeV3yLfJCgvGV6jBFZgp0L2GEbU=
X-Received: by 2002:a17:903:2616:b0:189:57f1:b8ec with SMTP id
 jd22-20020a170903261600b0018957f1b8ecmr61215161plb.4.1670357841791; Tue, 06
 Dec 2022 12:17:21 -0800 (PST)
MIME-Version: 1.0
References: <DB3PR0302MB8966A4A44D35F989B46B88B0E7189@DB3PR0302MB8966.eurprd03.prod.outlook.com>
 <20221206071823.GT29728@pengutronix.de>
In-Reply-To: <20221206071823.GT29728@pengutronix.de>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Tue, 6 Dec 2022 12:17:10 -0800
Message-ID: <CAMHeXxM-x7RC0so+cLNruNFU6+MzfFXBuRbFz8QM5wzi6+mM7w@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Gerz Burak LCPF-CH <Burak.Gerz@mt.com>, 
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_121725_671153_808CF143 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox hooks in userspace
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Dec 5, 2022 at 11:19 PM Sascha Hauer <sha@pengutronix.de> wrote:
>
> When do you want to execute the scripts? When you want to execute them
> during booting then I think we'll find a better way for this.

Section in FIT image containing scripts to run at boot?  That way they
are linked to updates to the kernel, which should already be linked to
rootfs if there are any modules.  FIT image already has a way to store
multiple kernels/devicetrees/etc for different hardware variants and
boot types (normal, recovery), which is probably useful.  FIT image
already has a system for hashes and signatures.  If one cares about
security, then this is very important for any scripts run by the
bootloader.  I think most U-Boot style boots with partition switching
done by changing the boot scripts stored in an unsigned environment
sector have a massive security hole here.

There's a problem that can happen when the interface between the
bootloader and the kernel/rootfs change.  E.g., the kernel command
line arguments change for a new kernel.  One needs to update the
scripts that create those arguments in Barebox.  Having RAUC update
Barebox is easy and solves that.  But what if there is a fallback to
the previous A/B partition?  Then one gets a new Barebox + new kernel
command line trying to boot an old kernel.  If one has not been
careful to make the changes to the kernel command line backward
compatible then the old kernel might not boot.

Putting the scripts in the FIT image would be a way to tie them to the
kernel rather than to the bootloader.


