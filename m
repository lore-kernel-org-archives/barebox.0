Delivery-date: Sun, 03 Dec 2023 18:43:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r9qVR-001i5J-0I
	for lore@lore.pengutronix.de;
	Sun, 03 Dec 2023 18:43:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r9qVQ-0005kJ-SG
	for lore@pengutronix.de; Sun, 03 Dec 2023 18:43:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T7Ln61gHrSa9JUc9XV1orGQLYWmzbO00VUirLwkpaxM=; b=hO29SDH5Kr7HbRyjcqMNDLB2cd
	awLA2jhQtv6iS7ADbP0eACbcmwwJiy3R4NHhJ1duHxPnKZosYj3CDch4GpsyOLMxIyRjNB9BIjE1Q
	1F8mo/wPBBBQPsPNssE5zwJOEYuWaod6Zn/PO79F2Gu3IyqTjKrrRY9QIyDoMgW6f0zkKfTaUsBYK
	HRwFtgI9RTNNU06H7v/hdTPbZ1j1/2M6zBO1lwJvdutpQi4s/lHzPhVzSRR2faL0vtmHELZGWcwcX
	nqyazE8uBw1sS8GmSm573pkUe3QYPiv+4mUTW4uGesKeFSNKiPkBYwi7dZ/yLst49djDJSMcZ6plt
	FoFggclA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9qTW-001wBr-1W;
	Sun, 03 Dec 2023 17:41:50 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9qTR-001w4U-2b
	for barebox@lists.infradead.org;
	Sun, 03 Dec 2023 17:41:47 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-28657040cdcso1702703a91.3
        for <barebox@lists.infradead.org>; Sun, 03 Dec 2023 09:41:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701625295; x=1702230095; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7Ln61gHrSa9JUc9XV1orGQLYWmzbO00VUirLwkpaxM=;
        b=jZccb3JFwMdB8ZwtCXI4Ef2nvm0Rt6JtWHkS2op+tWGvvV5H3zYrDbQLJsMmGVPq2D
         C679N5VuHK3u82Ipq4ED+H+YOJRqM+gZya1BmIU0xAz/h9BUdN6KVqHMZi5EoKbdTPWA
         cemUnEyML4zb8lILgQIev1/ZeEnzlngvczqQWnddVW8JxgUrVAO0zKPnZnP55r08rmUI
         NpL6spaQ6aA7nHGdmPZN9WQ0OXp0QhjqMWHVpr7bYpDgLj5gaeViPfn/BmMimW+Nf8Lb
         Cc/wZw81y5/vhW2EN5ZLs2eBGqcckJMSsXxK/9wES+eywxsX/0BbakT1W/HAqJDZbYXn
         KRzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701625295; x=1702230095;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T7Ln61gHrSa9JUc9XV1orGQLYWmzbO00VUirLwkpaxM=;
        b=SGLXn1124lsJiswdSwXo5dNhufaa/MfMTT4M9gvcTt9mRWrBVhZigY+aqJ7maJvJGx
         iVsQZPQConkGoJbsuGVcwtxlzc37nYx9jDZkLWdmlYhsQGt/crVxOZwRGR0WqlbSChKL
         mOH5FbQ54Uyxgx1c2kBA90Wf4DOEBGLHeqpot7awHRzcnZxHKbWvv/dKpgRINXmLejmA
         yYqkr0m1c/lz5tL+HRKy/QcmBgcN9LkELB0kF+RAIzvQvOl13MPlBcTZ8Qz/fAxkKDo+
         cAObpz8QSUEJznHw/HTNkiXRYbDRYbN3thObTAWW8d0dN0rl2A8JQPqvcYaOpC5Ms6a7
         L/Lw==
X-Gm-Message-State: AOJu0YyaZ1jR+DnwjL/OFl/aXfGIMckndkLrBykiu98VUC1AJQCYV+i9
	5VBoMV305/dtzVpdxiKhb/Wc6D+6EbHjC5e5RWdSIBn+xOM=
X-Google-Smtp-Source: AGHT+IEij/naxBwy85SrFMoMlRcWHywCH02MhcutL6kWy1ghmr2wmLNhzsPwAv27iHuJSZcIgVaNxH1Mkhi40L02mo0=
X-Received: by 2002:a17:90b:4f43:b0:285:bc16:611d with SMTP id
 pj3-20020a17090b4f4300b00285bc16611dmr1126106pjb.8.1701625295559; Sun, 03 Dec
 2023 09:41:35 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
 <20231201151411.GC1057032@pengutronix.de>
In-Reply-To: <20231201151411.GC1057032@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 3 Dec 2023 20:41:23 +0300
Message-ID: <CAP1tNvTaqHi_cTzByXajijypLVj0yo9RiJjAP20SeqQmYnRnrw@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_094145_892214_4AF6AE8E 
X-CRM114-Status: GOOD (  18.17  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RK3568 fail with 2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha.

So this bug can probably affect CPUs other than RK3568, right?
After this series of patches, both problems described earlier went away.
Can you apply this to the master branch please?

Thanks!

=D0=BF=D1=82, 1 =D0=B4=D0=B5=D0=BA. 2023=E2=80=AF=D0=B3. =D0=B2 18:14, Sasc=
ha Hauer <sha@pengutronix.de>:
>
> On Thu, Nov 30, 2023 at 05:28:44PM +0300, Alexander Shiyan wrote:
> > Hello All.
> >
> > The latest version of the barebox does not work on a RK3568 with 4G mem=
ory.
> > With a similar board with 2G memory, everything works fine.
> > ...
> > NOTICE:  BL31: v2.3():v2.3-607-gbf602aff1:cl
> > NOTICE:  BL31: Built : 10:16:03, Jun  5 2023
> > INFO:    GICv3 without legacy support detected.
> > INFO:    ARM GICv3 driver initialized in EL3
> > INFO:    pmu v1 is valid 220114
> > INFO:    Using opteed sec cpu_context!
> > INFO:    boot cpu mask: 0
> > INFO:    BL31: Initializing runtime services
> > WARNING: No OPTEE provided by BL2 boot loader, Booting device without
> > OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
> > ERROR:   Error initializing runtime service opteed_fast
> > INFO:    BL31: Preparing for EL3 exit to normal world
> > INFO:    Entry point address =3D 0xb00000
> > INFO:    SPSR =3D 0x3c9
> > >rockchip-dmc: rockchip_sdram_size(reg2=3D1000eaf1, reg3=3D30000001)
> > rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
> > bw 2 row_3_4 0
> > rockchip-dmc: rk3568_ram0_size() =3D 4026531840
> > uncompress.c: memory at 0x00a00000, size 0xef600000
> > mmu: enabling MMU, ttb @ 0xeffe0000
> > =3D=3D=3DSTALL HERE=3D=3D=3D
> >
> > Through various manipulations, I identified the faulty patch: "ARM:
> > mmu64: mark barebox text section executable during early init".
>
> This patch just triggers a bug elsewhere. alloc_pte() places PTEs with
> offset 0x8000 between them instead of the expected 0x1000. This means we
> leave the space reserved for PTEs. In case of the RK3568 with 8GiB of
> memory the PTEs go into the internal register space.
>
> I've sent a fix to the list, you're on Cc:.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


