Delivery-date: Mon, 27 Apr 2026 19:35:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHPrv-00H1iF-2I
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 19:35:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHPrv-00083b-50
	for lore@pengutronix.de; Mon, 27 Apr 2026 19:35:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vqtd7rpcAIKs5kKwUvNLq28aBGJRth1Z1PbnqC9ODYo=; b=xmMEt4Xv6BaMmwY+DAtC5+9Qon
	s6wMf61kTtJ4I8cjvjCsToAln8F1y7Vhy88GYkLO7Rh8UsJFbNdQpbWn1aIhxJF1Lixnao7OVWiyU
	3EnhJR8ZREYC4zqqr1Sm1QAEuWz1dx6BXRhtzXCPjPCrMQn/ganGsfxVCF4USO+58SOlFXc8Sq215
	zOYQLDddHGCtaLyL6PGmjPKMbjp72QtITeSjyDNTO022UXbidO0BS+kZqqeLruCQOjlYQJJ+JaJCE
	VnAqJd90ptmISfdgzHN3hS/MEovda17vA5qbZZULoMrdFC11UDiJ8F/Xhh75DMQE+x9bTFFrdek9+
	hGRTpjrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPrK-0000000HTQC-3W2R;
	Mon, 27 Apr 2026 17:35:02 +0000
Received: from mail-dl1-x1230.google.com ([2607:f8b0:4864:20::1230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHPrI-0000000HTPL-1OBT
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 17:35:01 +0000
Received: by mail-dl1-x1230.google.com with SMTP id a92af1059eb24-12ddbe104ccso681983c88.0
        for <barebox@lists.infradead.org>; Mon, 27 Apr 2026 10:34:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777311299; cv=none;
        d=google.com; s=arc-20240605;
        b=jTRDBGAVKOc4pJjW40AdFYk3Y14+t/5bq+ikBP3mcQ9uyh+I4d0ior9yku5AktcMm1
         S7wS1ipadUOY0Zr+0W4M7v5JIkn1vJmPOTA6njmGPKxCaSXhIqSXYOIVSv8mQImE6HE3
         Lv6Assl3GyS4dDztGW1+0KVfOPNqUgcCSiyxCk5BcyV3/qZVO9UaH7RX2tulhtDYbTBo
         L2wmAuPQf+MiQhQ112m9ELNd0qZ3dPiU5fxX4TPtY7RISX7oV4CTL0o2KrU7XolcMxOO
         vYs19Kq6NNkgPHoz3/uDftG2uI3xuFk5vg++gmvavvmonkZrdd7/f3PFI5fhWZHVx8cQ
         d1Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vqtd7rpcAIKs5kKwUvNLq28aBGJRth1Z1PbnqC9ODYo=;
        fh=ZhBvBIhfvTpSoz/ZadTuBUcIKmmx4FIOej/JkbrTiyc=;
        b=hXCw+BlDN3Qnqhi0B7O9lBgnl+zllhF6qCbCXQJr8LLF7GAs/1xrHdCSOVCq09lEUi
         PP2gY7VCSSk+GPiSL6/MTVH8exLQx6m/gemj79HbU0tHhYaOcdI5ARfHhBou326ZZCul
         IpeC0WypWCavy38eiArE8oGzoSNy65IKyArUjPB83PSIQWfKlUN5Smus9lDjSeT6rEyv
         Oh9+yUkrUDgh1tVPNhgz+AEJe9OjNeanQTj4pCc1AKRROdh/pSUkhgZC+4UVeKjXXiDz
         hfO70n9oUU509iZ5SQuQD6RiGN5ItQ+EsDMNPYMKBREhhVCjK5VJDBtrEsvyHqghaeZT
         V8Gw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777311299; x=1777916099; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vqtd7rpcAIKs5kKwUvNLq28aBGJRth1Z1PbnqC9ODYo=;
        b=oVsNPI9vbmUhEIsIXoEO8Li5RyewSYLaNRT4v5HVMnjweULqc6UXCFs1jP52+0OGrR
         0m1waFpGNus6RDeDIenS0CtFsV3PC2PbCEM113mEMj5djwvx1flmNb6SLlrpQEkyWkR5
         YFVvlJmON2qn/aoWO/huqS0slCcu7I7KG8Vu5A305I5EIz/6FFizGbMYfrlNFpWGz30m
         V0kR6pJ51cy1bM3lb6+821eo5kFhQ0nW539sfrTCUFJHSkVKmhBwGwLt3TkEEv472OzJ
         CUtjd41ukdO0tPTXDAoyX18owmtg/h/A8N/zgrAVt3u5CIIeTaBY0LHLzj/FG+aMZ9dm
         82rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777311299; x=1777916099;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vqtd7rpcAIKs5kKwUvNLq28aBGJRth1Z1PbnqC9ODYo=;
        b=P/pSKaKjacRpn8l5J4fD48pjWgQlUJllBrqHM6xVi33y8lYMbQP4x2nNXgL6+64yJC
         11AQGqa8bMw+V8INekb6FYMGywapjoibVZ1rYDOq4Hj7+5PWnxFhz9zTXMPxyzDoLckA
         NxxiPJJEiW8/XY4i8L2T+egAswSQZ1++MpQMPSDoHu0HNCyLOJyF6vIj+UMI7vr+UWmj
         6gvf2526ejTnJObX8AmZqpcQuddK/bmBi1vcAw3xPLCWOHqVWH3KYYOfUC4Q6xjSoYyf
         laB5bP3TensCm3QBfJ9kEj1KVVvI78OZ8TLX68W1UQCMNjF2malb/vWb6WJt1Pzv7idr
         1aqw==
X-Forwarded-Encrypted: i=1; AFNElJ/ByEiKlWmwQ8QCFP1uZhBVZ17gue1ENqU9A1U4AZo/v6o33UIUyzphuv3Cla+ThlmFAnH4gCTf@lists.infradead.org
X-Gm-Message-State: AOJu0YwnmKa3+sBGduTsnCcaZoQsj4BZVNtMfAZtk16uuSxnekh3jmkR
	kehxfjgz9rb4Nkcr1146tlRFTbbTb43Zk3WOjv3XbEYfTlcFTf6ig2KB7yCtrb8DTkCwhUKsJ0A
	aGN6Ae/C5/vwv84uJb8kSdgcvpzCsYp0=
X-Gm-Gg: AeBDievWGcq+BzLyXa979/08NUVx8d7tW+Xqyy3sTusmjYZA6p2C2I/+v59PGwGaYBT
	+IJmSVzzn1R7h2ekJFf6G3yva6BrsZuTcyxvTLvbQoQpphnAW5jdSDYIJEGGDYzbRUiyzS2I8sb
	d04F/IxZPSOBX5nWfSFhHnSCODM1vdgVUXsMMsgYeMU6PB849fps5GJtYk2zK6sdrCsZ6c+y6ls
	3SVDnrx0dN8SBURy9UWUG/J3eb7THcYQ6jJxkbjDw9yQsFuuw4g6oCShol9syFbTM59DLtzZs1n
	T5wDlx0wDkjaU5fJ
X-Received: by 2002:a05:7022:e28:b0:12c:8e70:c338 with SMTP id
 a92af1059eb24-12ddd4db90emr114055c88.2.1777311298868; Mon, 27 Apr 2026
 10:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260416134518.3282395-1-eagle.alexander923@gmail.com>
 <d437f1d8-c079-4e17-ab67-f9090be6af9f@pengutronix.de> <CAP1tNvSfV1Yz0f9NDaN-e88KYFzPNkC16ZjTRPSyBd-hNKXMyg@mail.gmail.com>
 <29fb6d15-f449-45ee-8b2f-485a618ec573@pengutronix.de> <ae8lJG6VB2CG-ukg@pengutronix.de>
In-Reply-To: <ae8lJG6VB2CG-ukg@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Apr 2026 20:34:47 +0300
X-Gm-Features: AVHnY4LKoY7Su_RvTlDjsLECKZxiRy4n_kl45NAhtCPR3zVBdeE1qgqZxrIcIJU
Message-ID: <CAP1tNvSHk-1gJP89ej7eM0ZZ6kWGDU=ws7JPvbNJL7mNX9T6ng@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_103500_376507_5AB2A5B8 
X-CRM114-Status: GOOD (  19.77  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello, Sasha.

...
> > >>> This adds support for the extlinux.conf configuration format, commonly
> > >>> used by Syslinux and many Linux distributions. The configuration file
> > >>> is typically located at /boot/extlinux/extlinux.conf or
> > >>> /extlinux/extlinux.conf and defines boot entries with kernel, initrd,
> > >>> device tree, and command line options.
> > > ...
> > >>> +static int extlinux_boot(struct bootentry *be, int verbose, int dryrun)
> > >>> +{
> > >>> +     struct extlinux_entry *e =
> > >>> +             container_of(be, struct extlinux_entry, entry);
> > >>> +     char *kernel_abs, *initrd_abs = NULL, *fdt_abs = NULL;
> > >>> +     struct bootm_data data = {};
> > >>> +     int ret;
> > >>> +
> > >>> +     bootm_data_init_defaults(&data);
> > >>> +
> > >>> +     data.dryrun = max_t(int, dryrun, data.dryrun);
> > >>> +     data.verbose = max(verbose, data.verbose);
> > >>> +     data.appendroot = true;
> > >>
> > >> Not sure this is a good idea because of potential of clashing with
> > >> extlinux appended command line options.
> > >
> > > globalvar_add_bool("extlinux.fix_root", NULL); ?
> >
> > global.extlinux.strip_root to remove root=
> > and bootm.appendroot to add barebox' own root?
>
> We already have the latter, so nothing to do here.
>
> Shouldn't we by default remove the root= option once data->appendroot is
> set? Also in the bootspec case we do not want to end up with two root=
> options.

Is this method better?
I haven't tested it yet, but it goes something like this:

if (getenv_bool("bootm.appendroot", (int *)&data.appendroot))
data.appendroot = true;

if (e->append) {
/*
* The same rootfs image may be launched from eMMC or SD card.
* Remove any hardcoded root= parameter from "append" to avoid
* conflicts, then let barebox automatically add the correct
* root= (via appendroot) based on the boot device.
*/
if (data.appendroot) {
char *append = remove_param(e->append, "ROOT=");
free(e->append);
e->append = append;
}

globalvar_add_simple("linux.bootargs.dyn.extlinux", e->append);
}


