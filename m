Delivery-date: Mon, 06 Mar 2023 14:58:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZBLw-00BBIu-2K
	for lore@lore.pengutronix.de; Mon, 06 Mar 2023 14:58:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZBLv-0002fM-Mx
	for lore@pengutronix.de; Mon, 06 Mar 2023 14:58:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nMxspmU7behXoM0Tew4semFo6IoVRa9fWXGEoPY+NJM=; b=NIiqmMsPHIaS4kqbWDuOAhDEMg
	e8u22cTF3SXWvtuTrMbN5GulMRnpOtXJAR9MTpJo2dJIJD85AJacaFLh5gwGfkSKCGPjVt3KpJOrv
	/TeAZPQF7FAU+c5Ux6KOE9kn8SEV9UlxjarBvprd2PbLo/G/jW0EJ6M6hTZiyL/8sltVLUsmcY4i/
	MCBT6NEppu8X9m6WcRgbQaDArfSWO6IZpA33wCPfnrjhQVmf4/NKCv9693ei1YyilZYfJSDexIJ0y
	eLWdRzMr7vcd/XiUOMrMzk5XGs3NIv5DwL5V8UKPcgx7S7YbtLqeqwJ8U5fsmYccrV6Ta2IUJkMLx
	WHYpvVmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZBKV-00D11F-OS; Mon, 06 Mar 2023 13:56:43 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZBKK-00D0yf-GF
	for barebox@lists.infradead.org; Mon, 06 Mar 2023 13:56:34 +0000
Received: by mail-pl1-x62c.google.com with SMTP id x11so5842890pln.12
        for <barebox@lists.infradead.org>; Mon, 06 Mar 2023 05:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678110989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nMxspmU7behXoM0Tew4semFo6IoVRa9fWXGEoPY+NJM=;
        b=HMRSF6c/F19aRxoua5tpS4Rhumo5c2pmXkBmG9F0LZJyqM84KMnxT5ljtTRA3W7mHX
         zDGOBWxM72BUcSFBmIQPZJ6iYQTXQYRifIjO5nOyvuSMvCLX/qnmbK2TiZxAlWKIocOX
         OFZLKrVNXoQPqZcJRXQ4imLTva3qt6iF7S0/qjky9qvc3IEEoUz7vvDisFPAde8C/EJf
         FBhNaq5S1xnW+XzD7Z/FtUxTSx6JjyvWe/RPyPsTvzLRuiqonyIVa6I5kuvFN96tgzU2
         Sm6Sj0ajYFLdxnEW9JxQgHYVyx63tSh4lR7AKMae0iitD53AwwtHzst7lArl5uKpzjTX
         wPxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678110989;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nMxspmU7behXoM0Tew4semFo6IoVRa9fWXGEoPY+NJM=;
        b=AXr5MtsAIPF2mghvOMtESLauK1doFjIuSRRQ2HhnaP0dh9W0AveCNYZOBwFaVmhusI
         AW13lSza+qkvpq2iE0XHb+BTuHOTt029+poAY9nIAetsYScx6lN8+0Y48iRnD5IlYrhD
         XlJTZ2z48qi++So746PNVI09TmBpyaGyvpAswN1Bq13yh2QksIV4Bwu8h+8aNGBKQ8xg
         xdGCRjMyOZknStGC6fnTBZK5AOhi2jUIIQadTie3OnuKEyoKLv0/EkhQTlApw6IR1pOo
         FPo92P2TJQsJnGzyZPc2PR022WdvwQxEwp3fPG0CR+ZjQV+jZHt/wrmYIwteFVtcvCub
         vM3Q==
X-Gm-Message-State: AO0yUKXePdNl2/51Nis4RhfJB7EqX09yzRR0VPzFGDx1uyG3Dlj/PvFx
	je4o9K1lIHI9QsAvbV5wXieVTKYZKLzW7sSVBc8aomVXRagCZeQr
X-Google-Smtp-Source: AK7set+rZoFMRe3VaEUTzy192c/levGaHyYxbUzGM2z4AeziZOkfOmdCgxi4/2IALV5hwtgGadTHtpntyLghB4EFxLo=
X-Received: by 2002:a17:902:f783:b0:19a:8751:4e01 with SMTP id
 q3-20020a170902f78300b0019a87514e01mr4463940pln.12.1678110989492; Mon, 06 Mar
 2023 05:56:29 -0800 (PST)
MIME-Version: 1.0
References: <20230228103248.2118342-1-denorl2009@gmail.com>
 <20230228103248.2118342-2-denorl2009@gmail.com> <20230303100620.GS32097@pengutronix.de>
In-Reply-To: <20230303100620.GS32097@pengutronix.de>
From: Denis Orlov <denorl2009@gmail.com>
Date: Mon, 6 Mar 2023 16:56:17 +0300
Message-ID: <CALHb5uhr81Fh3RroNZ-sWH7fry7NNgXa=vCGfrye3k-9VntoqQ@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_055632_580380_D65D53A3 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [RFC 1/2] dma: rework dma_sync_single interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi!

On Fri, 3 Mar 2023 at 13:06, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Denis,
>
> On Tue, Feb 28, 2023 at 01:32:47PM +0300, Denis Orlov wrote:
> > -#ifndef dma_sync_single_for_device
> > -static inline void dma_sync_single_for_device(dma_addr_t address, size=
_t size,
> > -                             enum dma_data_direction dir)
> > +#ifndef arch_sync_dma_for_device
> > +void arch_sync_dma_for_device(void *vaddr, size_t size,
> > +                           enum dma_data_direction dir);
> >  {
> > -     barrier_data((void *)address);
> > +     barrier_data(address);
> >  }
> >  #endif
>
> "static inline" is missing here. Also "address" should be "vaddr".

Ouch, I will be sure to recheck the code before sending v2.

>
> With that fixed imx_v7_defconfig compiles successfully and from what I
> can tell also works.
>
> I haven't looked into this patch yet. Passing a struct device to the
> dma_sync functions is a step into the right direction for sure.

To be short, the gist of the changes corresponds to removing the
discrepancy between
dma_map and dma_sync code that comes from dma_map doing dma/cpu conversions
and dma_sync not doing them. To do this without resorting to code
duplication, carry out
such conversions in common dma_sync functions and call arch-specific
ones for the
syncing part. The common funcs also get a device pointer as the first
argument to be
able to apply this remapping. After the dma/cpu conversion we do get a
virtual address,
so make sure that arch-specific funcs explicitly take pointers as arguments=
.

>
> Ultimately both patches should be merged to avoid bisecting failures.

Yeah, sure. Was going to do that anyway. I just didn=E2=80=99t want to dump
all of the changes in
one patch while sending this as an RFC.

>
> Sascha
>
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                      | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


