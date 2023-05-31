Delivery-date: Wed, 31 May 2023 15:03:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4LUe-004Gkn-IE
	for lore@lore.pengutronix.de; Wed, 31 May 2023 15:03:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4LUc-0008Nu-2W
	for lore@pengutronix.de; Wed, 31 May 2023 15:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KfOLW8KzShob4BUncI8AO7wypkdkynTM8HXDST/7YVg=; b=rD/mWhq2Z8B3lgJHVMwk/qGkYl
	HDewE5bd9rRSZXuxKSLCU37a4Gm+3Uv97Bi8xOJclLQg15hMBIiQDCboHrqeQNeQtO+A76TqxlpuX
	83Jdvm2dMtJtyTahaaZQLwKy+t3wOC33dMLSAs4Wog2G9FKalWwKkliBYUqicxI3l7Fv6uh1vPERB
	U1IjKAXwEdw/NDZaNA9TQkIF9v8x61H9aTVScdtZEw7KYnqizAFJHmU3t+14eYo9DBdsUX3dX873N
	x8zStOPlOPlydvGD5RofJ8rf0mjs1aR3nUdOSJk7nqMwVZqI8dkiZqh7EPoLlfbXLBF+k7PMpJm3f
	8/wNlB5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4LTW-00HTrN-2C;
	Wed, 31 May 2023 13:02:50 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4LTT-00HTq5-13
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 13:02:48 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2564c6a2b7dso2457249a91.3
        for <barebox@lists.infradead.org>; Wed, 31 May 2023 06:02:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685538165; x=1688130165;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KfOLW8KzShob4BUncI8AO7wypkdkynTM8HXDST/7YVg=;
        b=UFqYd98o3lgTLgZhnnIfVOBceGeqpfCfRmr+lCJho2KOhvmaTKSIfF0oZ1NH/eWrOs
         9E8byPTAvvilvK8LSyv13uhoz6Ze0+Nkfoi1c4lJf+D00BRXHVqv9KV0wLaziBrzGlVt
         voNWpQbY+MobqGwiQU+57NWaRHHozcwGKLhR2h1mb6dyTJLAsoGJ6stmFQ2tsaEYvLPs
         BWRpcTaRCELn9p9z5+oOpA3mmmI8Rt6TkLoEmab+CRfOwbuWJoAtHv3cOkdyzmqQfY0e
         5er2uYjPkeIZtTNlhOqeWk9DHK9P48pmPR/T5lKSxs7xnVh+6HfH1sBp/JNiG1jfzj+N
         KAUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685538165; x=1688130165;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KfOLW8KzShob4BUncI8AO7wypkdkynTM8HXDST/7YVg=;
        b=WBDPv3I/ovh8OS+zi8BUA3Uwh+0e8yFdu8hTyRq67pYa70zWwTgy2nxCg/INADwWVS
         iQRshi+pFTO2ZYda6XdoivoB9eR0srhle/1WTFL67TVpIA2Wo/JSApG8JZYWtCZdAGj3
         b5DNDXZkE6MEuCOzcx1uwsdYUcQMejGWRBTx9Pv8xzl53i4mKlE/v1fLSIUcZ5cGRAbS
         LuVBAXzXTSvFTrvi2AJFoM4LF5E1/pkKXxzjFcfDSCaodUT+il8JFPv4pno+l6Aqydei
         WrcQw44CLQfg+5w/9qxnByHQlhtix30EG8r+xvcC80sRXmPQn6NIoorG85eRYrqRNK+B
         mO4Q==
X-Gm-Message-State: AC+VfDwhJL47s2WpGm6KbKu+949YN0R2Nv+klxs2rbadDE0+IJDjt+wa
	N2aqm5g6gDbOECDj63MsWrjyxgWTlcJ+PpZ+FHUPYfP9UHg+K5mh
X-Google-Smtp-Source: ACHHUZ7O4a4cXt1idD6c4RqJwIRQpeXzWkFjfcUuIS3Gsr6El5cKicgKc6peeE5olYUbQhZspY6aVB4LThYNxuXBJaM=
X-Received: by 2002:a17:90a:c695:b0:256:c44d:e115 with SMTP id
 n21-20020a17090ac69500b00256c44de115mr3757259pjt.12.1685538164619; Wed, 31
 May 2023 06:02:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230531102337.843892-1-s.hauer@pengutronix.de> <e72f140e-7952-a8dc-63d3-a4ca8d06b66c@pengutronix.de>
In-Reply-To: <e72f140e-7952-a8dc-63d3-a4ca8d06b66c@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Wed, 31 May 2023 16:02:32 +0300
Message-ID: <CALHb5uiJp-_RDdVkYoRPD1pLvVKMpJ8hgFC0WuCXvJpiS3hQFw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_060247_366347_FDCFB51D 
X-CRM114-Status: GOOD (  34.40  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Revert "dma: use dma/cpu conversions correctly in dma_map/unmap_single"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

>
> On 31.05.23 12:23, Sascha Hauer wrote:
> > This reverts commit d13d870986eeecc58d8652268557e4a159b9d4c4.
> >
> > While the patch itself is correct, it at least breaks USB on the
> > Raspberry Pi 3b.
> >
> > With this patch dma_sync_single_for_device() is passed the DMA address.
> > This is correct as even the prototype suggests that it should get a
> > dma_addr_t. Unfortunately this is not what the function implements and
> > also not what the users expect. Most if not all users simply pass a CPU
> > pointer casted to unsigned long. dma_sync_single_for_device() on ARM
> > then takes the DMA address as a CPU pointer and does cache maintenance
> > on it.
> >
> > Before we can merge this patch again dma_sync_single_for_device() must
> > get a struct device * argument and (on ARM) the cpu_to_dma() conversion
> > must be reverted before doing cache maintenance.
>
> @Denis, could you give some background on your patch? I assume this was
> for MIPS? Did this patch fix breakage for you? In what driver? Maybe
> a follow-up patch that fixes your particular breakage while not breaking
> ARM could be found until that wart is cleaned up for good.

I'm okay with this patch being reverted, sorry for any inconvenience.
Will try to come up with a better one in the meantime.

It appears that MIPS was *always* somewhat broken in this regard.
Without this patch, we end up calling dma_sync_single_for_device()
with a virtual address, and dma_sync_single_for_cpu() with a physical
one. As on MIPS phys/virt addresses do not map 1:1 to each other, we
can't really do anything sensible on the MIPS side in this case. Either
map or unmap calls will be broken. On actual boards this will result in
address errors with any driver that does DMA mappings.

I originally sent an RFC with the whole streaming DMA interface rework,
but I was a bit hesitant if such changes are actually needed. It occured
to me that they are useful in theory, however, nothing in barebox seemed
to require it at the moment. So I just resorted to smaller changes that
were enough to fix MIPS, but I must have totally forgotten to check if
other archs are fine with those changes applied.

I don't like having to do cpu_to_dma() in common code just to call
dma_to_cpu() on the arch side. But it seems like we have to do it in the
most generic case.

>
> Cheers,
> Ahmad
>
>
> > ---
> >  drivers/dma/map.c | 10 ++++++----
> >  1 file changed, 6 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/dma/map.c b/drivers/dma/map.c
> > index fea04c38a3..114c0f7db3 100644
> > --- a/drivers/dma/map.c
> > +++ b/drivers/dma/map.c
> > @@ -23,15 +23,17 @@ static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
> >  dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
> >                         enum dma_data_direction dir)
> >  {
> > -     dma_addr_t ret = cpu_to_dma(dev, ptr);
> > +     unsigned long addr = (unsigned long)ptr;
> >
> > -     dma_sync_single_for_device(ret, size, dir);
> > +     dma_sync_single_for_device(addr, size, dir);
> >
> > -     return ret;
> > +     return cpu_to_dma(dev, ptr);
> >  }
> >
> >  void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
> >                     enum dma_data_direction dir)
> >  {
> > -     dma_sync_single_for_cpu(dma_addr, size, dir);
> > +     unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
> > +
> > +     dma_sync_single_for_cpu(addr, size, dir);
> >  }
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>


