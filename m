Delivery-date: Thu, 16 Jun 2022 10:04:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1kUJ-003gQU-JD
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 10:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1kUI-0003b0-9H
	for lore@pengutronix.de; Thu, 16 Jun 2022 10:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PZ+97ziroPQMrWXhW0tV5itkU2scsrzfKroP9ZaSZek=; b=qVm38CAW5zEuqNc1iZoXjYNHkf
	+eWAMl9gKFGG45/UmYUlovywTS9+NPIfWQTfyAy1lD+oS9sRshiQFsSHG4ucBTBbU/aInMNiIAf/c
	4CmzNCeeJtMeFT7EdOyCXFnU04j3Qv9KR746DhsAxe1l0q8boc6CyJVhYYIFvjtc/t27G6zTiXFH5
	BTSYJMS9J0UTH6U50GPOR/vDW7y3uwXLkSDZLSqBYyJlNJH+HXKpokQPIBPn46FVtLRYHjMe66WzK
	xdtOoEU9S75JxSHRmK0uOvUe56/xfcL0uZn+WJvxvhARTPXVs85iz0ns3kVatGKJTwO6jmeamJhUG
	RDChAYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1kSK-001Fv4-1L; Thu, 16 Jun 2022 08:02:20 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1kKN-001D0Z-Hq
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 07:54:09 +0000
Received: by mail-ej1-x630.google.com with SMTP id o7so1249988eja.1
        for <barebox@lists.infradead.org>; Thu, 16 Jun 2022 00:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=PZ+97ziroPQMrWXhW0tV5itkU2scsrzfKroP9ZaSZek=;
        b=XMV4xvChnQFwUt64o7sZHVa2oTp1810htQzV0XJQ59Q61LYXacVSYi1QwkxiOn0VR7
         +s9Vvja1D609p8+9B8RCk2Xc4MsXR65nreNIksDr/F1To7Doe8tvFJ7Uo+Q/A1MQz1PY
         L6Dd39Vk9wdd2+j5PZjrejrQy7Hqf+3P5NqrSPQdyD9FEO/2/aBh2wI918pwImxEIldQ
         zlj2Ve210cJj0syqFbPAsIPTCuqQS0mQxTxn8jdkzC/HgvP6b2BanSPnCsdjIrTXdyAe
         k/cQ/ZmrRQTMdJvQDWDMhPCV+YmVsFR7KM5+lFppo9xXaw4f0bqEdwCLOkjMYfMaN+Db
         ldPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=PZ+97ziroPQMrWXhW0tV5itkU2scsrzfKroP9ZaSZek=;
        b=i7HTn658D3HlRY0vnf50+FFIARtI4M6xkKqIZ4st4gGAlgO6DUXKyf8ZH+hJ5FKXt6
         dveeBXP5Ooi7/mbCjHHJUNTnSI4TrEOoU1HVxw+h1+XA0XTzLQ0umwNQlxhwE1rAC0vd
         jyK+qbdwmSYHt1xHcbHLU7DyD6EqJhsWPKmEemXQx1I3MtBBmr0WO5pjZCPzazDVNxk7
         W2mj4jHl1HVzZicLAaZPckca8GZ+YAkhUGS6d7c7crtGiutnIV4UxYQE4BA7tI176mV2
         i9V9RWUJDNT7o+3+B4v60CLNbejXCldwr26B/eHlN8+owD1OWwa+fd7OqXzzcxmjvsU5
         jKNg==
X-Gm-Message-State: AJIora9hSfaugb1JebCNQrAPAJ7e21+z9mdlDQ27SSWszwGDMDYW3sgy
	yT8MZpf3X+mTr5cjkzfEvbGzwO1sfxeBDXi+Ywg=
X-Google-Smtp-Source: AGRyM1uZUxzleV92cQbbPyzK7UY2uM4JjVZSav6oBmUzMGEOeSQgavgfGt+YtvoBpel7iQ2UZP/qsOwOCzonxpTceiM=
X-Received: by 2002:a17:907:7b8a:b0:707:59d4:14a3 with SMTP id
 ne10-20020a1709077b8a00b0070759d414a3mr3336783ejc.51.1655366043038; Thu, 16
 Jun 2022 00:54:03 -0700 (PDT)
MIME-Version: 1.0
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 16 Jun 2022 10:53:51 +0300
Message-ID: <CAA4bVAE09vnuWLv3TvKDn3t7kAPdk1Tgto-TWzyo1-qoYpfO9A@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_005407_652237_1C0A26B5 
X-CRM114-Status: UNSURE (   3.62  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: move dma_ops to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

In 0e885ce81d0e ('RISC-V: dma: support multiple dma_alloc_coherent backends') ,
(see https://lore.barebox.org/barebox/20210619045055.779-10-a.fatoum@pengutronix.de/)
multiple dma_alloc_coherent backends was introduced for RISC-V.

At the moment MIPS dma_alloc_coherent stuff is messy and I want to rework it.
I can reuse some parts of 0e885ce81d0e by moving it to the common code.
Any comments or suggestions?

-- 
Best regards,
  Antony Pavlov


