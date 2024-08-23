Delivery-date: Fri, 23 Aug 2024 08:22:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shNgf-00CUXF-31
	for lore@lore.pengutronix.de;
	Fri, 23 Aug 2024 08:22:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shNgf-0006zR-77
	for lore@pengutronix.de; Fri, 23 Aug 2024 08:22:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ckeHb+gD2mgJs6GM4P94q3xecHM14ihiYFOt1BLASoA=; b=Tex/cYEj0cq7Fnm6YqNqSORTan
	GGBFnJkgN0F/x47/WQ49FRLNuqtNih/5wIZ9QB8L/ZI4xbd5XbU/AmiPeaVNjSEtMZZ/9RTz/+Bg1
	wS9Yy2tLSen1izE52U3IpdEiSiWYID4YW3vUBoODCy1LLQsaZOkP8sPPKZXHgfljSJ6O1tovaklb7
	1hofLFCbhQz/A3p/QWI/JV9IBTbrVc5En7fOq66Zlg2vPWFrhf7PAMyEOmu2XwoIBS7bs87qb8VTK
	mGHJemJYC+Xs9ABsdz1lSPE+nHVRQaswZW+SjoKh+j92VC45FAGOPqwSiiNSs+FfYctErrQYOyMXh
	W1IPFaKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shNfu-0000000FQbp-0R1q;
	Fri, 23 Aug 2024 06:21:30 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shNfq-0000000FQaI-28zZ
	for barebox@lists.infradead.org;
	Fri, 23 Aug 2024 06:21:28 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5a108354819so2364367a12.0
        for <barebox@lists.infradead.org>; Thu, 22 Aug 2024 23:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724394084; x=1724998884; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ckeHb+gD2mgJs6GM4P94q3xecHM14ihiYFOt1BLASoA=;
        b=b9xDNTxCQ+RuKUVxNdgemdgOwxBNhISBlWQrSYPKNiVLMIoVFkiXMRyqJ2uwr2ZJGb
         waNx4C/+U8XBLX9kD+/rsmaHhLkWMTGpMaUMFjzn0rXS6cLZQTIK+bRJ8X9RAZRBCuUf
         IxMfIf98RQhattCxlVVwbjL0VvNsd18baVh4lwv+TXyJ84eeV8qkPtDwpqeGj2/Hhx9o
         HM2yiuHx/WR7UsN+Gt8vf9qrJWU1Qdutyxi35bi3eNO+q3Kds/mi3Ju8i0vl3bH8ubjK
         3LDygZax4awdWI8D1vpXtkTvhwe+OoNHio5yZaGmVZfsOglS3kn8azupptaKheEV/CZ8
         GfPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724394084; x=1724998884;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckeHb+gD2mgJs6GM4P94q3xecHM14ihiYFOt1BLASoA=;
        b=v1/sPTju8cokHPBcc8lPpW0I9bJWo5VEEO/QOFU1i5BPh+/ZMJgZmOuOdyIN0lZXIN
         2RzGNPyKoMWNT2rCatw0F/w2v30m3rPY9SdbqXZdgscRZfAlfqpfvUt9s3GKj/tAAbWQ
         hdrRg/AbyGhbLwkoCGlC6uFGRyqMSBVEmjLbJJ9QcOmqe+r5fka7SBE+GJVCYCIiULe0
         fdRTYRbUGeRXnn6NhkSjJzryd1nAylKsRnn9hK4UDtiKqxWkocg/U2foW9rs/zzru+Zb
         Q/nWcA9Oe9eCGVzQCtrxXixszdTkEnaOA02et6KHM0XXSVvX/EIkpjqPlGPUhwezJMMa
         PoEA==
X-Gm-Message-State: AOJu0YyTaPsNUiho7lBPv29UBaD13U6+IKsU3VRqz0nqr7RfB9pYNixO
	BmNFHm3ArxsRwUgCC02DIaUjYjbl0bb11Wi9QMdceIRRcfBz5FSF
X-Google-Smtp-Source: AGHT+IGhdd2lDMYdVygewhefpPKgGZpCBfkI9iWSfzTK6evlB9Ucd62W7f5VUWSR4nVdMLnuqUN3zA==
X-Received: by 2002:a05:6402:2706:b0:5a4:622f:63c6 with SMTP id 4fb4d7f45d1cf-5c089163832mr497145a12.13.1724394083640;
        Thu, 22 Aug 2024 23:21:23 -0700 (PDT)
Received: from localhost (cpc1-brnt4-2-0-cust862.4-2.cable.virginm.net. [86.9.131.95])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c04a3ea610sm1712098a12.51.2024.08.22.23.21.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 23:21:21 -0700 (PDT)
Date: Fri, 23 Aug 2024 07:21:21 +0100
From: Stafford Horne <shorne@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZsgqYSMofDiMHcsq@antec>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
 <20240814161435.566270-3-a.fatoum@pengutronix.de>
 <ZsGfVTD5N-kZjVJF@antec>
 <707e7c50-aad1-4459-8796-0cc54bab32e2@pengutronix.de>
 <afdd2beb-5828-4486-a479-0eef78ab91b3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <afdd2beb-5828-4486-a479-0eef78ab91b3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_232126_573409_D54EC525 
X-CRM114-Status: GOOD (  31.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] ci: container: downgrade OpenRISC toolchain from
 14.2.0 to 13.1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Aug 22, 2024 at 06:43:23PM +0200, Ahmad Fatoum wrote:
> Hello,
> 
> On 18.08.24 19:09, Ahmad Fatoum wrote:
> > Hello Stafford,
> > 
> > On 18.08.24 09:14, Stafford Horne wrote:
> >> On Wed, Aug 14, 2024 at 06:14:35PM +0200, Ahmad Fatoum wrote:
> >>> The newest toolchain bump breaks OpenRISC start-up under QEMU: The console is
> >>> now completely silent. Steps to reproduce the hang:
> 
> Turns out the toolchain update was not to blame, but the Debian container bump
> that accompanied it. It moved the default console as part of adding three
> more consoles to the platform. I am not sure that move was intended, so I submitted
> a QEMU patch for that[1].
> 
> For barebox, I think we'l just break compatibility with older QEMU, describe
> all 4 UARTs and use CONFIG_CONSOLE_ACTIVATE_ALL.
> 
> [1]: https://lore.kernel.org/qemu-devel/20240822163838.3722764-1-a.fatoum@pengutronix.de/
>      Should show it once lore has indexed the mail

Thanks,

I didnt get a chance to look into it yet, thats for sorting it out.  I see the
patches and will reply.  I am not sure why the uarts were done in that order.

Maybe Jason know's why.

-Stafford

> >>>
> >>>   CONTAINER_GCC13=bdfdd5effcc169ebf8a9df2f1a5956ef34549682f78b450a97aceea2afd76f7a
> >>>   CONTAINER_GCC14=fa35adeae1ab49b4dc09fc3bf4d68f92541a0d1f41e0df91a4879fd331e4b592
> >>>   CONTAINER_BASE=ghcr.io/barebox/barebox/barebox-ci@sha256:fa35adeae1a
> >>>
> >>>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC14}
> >>>   export LG_BUILDDIR=build-openrisc
> >>>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
> >>>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
> >>> 	--interactive
> >>>
> >>> Running the same steps, but with the older toolchain boots successfully:
> >>>
> >>>   export CONTAINER=${CONTAINER_BASE}@sha256:${CONTAINER_GCC13}
> >>>   export LG_BUILDDIR=build-openrisc
> >>>   git checkout v2024.08.0
> >>>   ./scripts/container.sh ./MAKEALL -a openrisc -O $LG_BUILDDIR
> >>>   ./scripts/container.sh pytest --lg-env test/openrisc/generic_defconfig.yaml \
> >>> 	--interactive
> >>>
> >>> The hang happens somewhere before the jump to _start in arch/openrisc/cpu/start.S.
> >>> Until that's fixed, let's pin the OpenRISC GCC version to the old v13.1.0.
> >>>
> >>> Cc: Stafford Horne <shorne@gmail.com>
> >>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>> ---
> >>> @Stafford, do you have an idea what could cause this?
> >>
> >> Hi I am not sure about this, no new changes in the or1k-linux toolchain that I
> >> know about.  I will try to reproduce and see what is going wrong.
> > 
> > That would be great, thanks! I had a typo in the instructions above,
> > CONTAINER_BASE is not supposed to have @sha256:fa35adeae1a at the end.
> > 
> > I tried to debug this by importing _emergency_putc from the kernel and
> > seeing where it's getting stuck. I tried on the working case (GCC13) and
> > calling _emergency_putc before _start doesn't work. Unfortunately, that's
> > where it hangs (or maybe, code isn't executed at all?) for GCC14 so that
> > didn't help me narrow down the issue.
> > 
> > Cheers,
> > Ahmad
> > 
> >>
> >> -Stafford 
> >>
> > 
> > 
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


