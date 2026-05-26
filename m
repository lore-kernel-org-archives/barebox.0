Delivery-date: Tue, 26 May 2026 21:33:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRxX2-0048eS-2m
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 21:33:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRxX2-0002Kz-7y
	for lore@pengutronix.de; Tue, 26 May 2026 21:33:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yMql5wQyBs/PbL0yXEnXMbDGqSBDxL5xukVOqQuJimo=; b=Vdzlplem1PW1HLRUIrXtFDwadi
	Ctw4MelFeY3II5g1M2IjEwaF091EMoeBLdGtEnX6+MMq9+dZkN4O1MFbTfhjzV/jw8vpYYhtRkKMF
	pQMCVBNhIFf46osGKjZGVhJCYt4zIZ58Kg7YLfCmzeqraukeU4LWtRFgJHhTQpWMcfWSZ+mS9/mx3
	oImGMm4fWMuofQBn+4NOug8i7cswUVM0f4mx6CCMC9DHmYxfU8Q8nhFf/QDL0RxRUgy5gj+HcaxZ0
	j4D+MAvoFDeLYtYQr5v+1w03T2bDioP+HH2OKzyk5tpUTNdaNlOC2dYNrloCSr44AODkplVibSyig
	N5+7RMCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwhl-00000002rbh-3P5Y;
	Tue, 26 May 2026 18:40:41 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwhg-00000002raz-3yRl
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 18:40:38 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-3045c195251so4094746eec.1
        for <barebox@lists.infradead.org>; Tue, 26 May 2026 11:40:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779820835; cv=none;
        d=google.com; s=arc-20240605;
        b=Zgg7SLzh4OUXnkuzV8smB13+JjRrjuONtE2rKCI1wqtOmOmsvpAbhd9VUHzXpHO5+5
         36ATMk0PMTBiCErwAlo6e2TzAiA3yv1cCAD8pm4aNpnqHtwrg/sQ9Jvx9Lk6Fn0OiH3H
         cknxyvSnGygc+ECrCd9OYS1D2iYZeq18sKkQxIPrVeL9ecWa/cDEFPbLmcg8xSO3NWZ+
         mTlbyeKfCfxs6vtSwIOcB99sUiboeH/w7Owmws7n/DfUMERqsi6nsR7C0QwtrSz0ZLFZ
         oEGM9f+Bl+AdcRXubbzn/hWGhLc3ZJRSldcYqXzCkfRmtlkRIOtGql91rgRp5yW/kfix
         FnUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yMql5wQyBs/PbL0yXEnXMbDGqSBDxL5xukVOqQuJimo=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=W8vGhU8kHKLiD+foPqI4YS2CbIBT0Kp60v5PHR4qz2w4WrN4Z/ZGrs/IBRIf/fiQUW
         mq5yShmYUPugUmDqCIzAvvLbnoqm8MR2KzguwKx5JBp9uMh+H3cfrwdabjbjHv/CphtQ
         6BpLMmjcurfZRdhjvKJ5fNzTAWuP5W+9zHeE1b0UkZ8RBKiPAi2nufB6zLT1MmnrzY7j
         mx/qxE51yschgvPV91ceiLc4TL5IeHlgq1hrw0ANmgxNrxQMQmIKylfZ5M1+0cT7HFJF
         iOJilnYN76j+7kpNrzXk72FLM57emD/IG7xX1eEiGoa7jzKQd7ZYyDUpCVu4IKjLj8ZP
         IAVQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779820835; x=1780425635; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yMql5wQyBs/PbL0yXEnXMbDGqSBDxL5xukVOqQuJimo=;
        b=boLG1VIwZtyOK7ZjyI1RJC3LQyLblHmnWE4UXbKl3PtZsnwLK85Wiw1uj7vgprnPb4
         py00zSqdUZbJgeXl41uaAPnhtpimgWN7sq0sf+zF4DQv2m+5q+5D+AULI/V5GDfb096n
         bCDbQ3XmkaDT7HAp+OdRgUdS2o9qL0MjeRs0dJVfYGbKPcrxLp7ly2x4Kv01vhReDWEq
         HfL1PDBZp9hws4SpG3szn4TD5E+UgMxWlqwfA5XT9gHSrn84ikamKTbkDhRpKplT13+L
         SwUppbobFtl+ePWuAjvQzzoANFuXtIUzucliUAvwlWXHisyBpCPgGiD6ajAkO02RD1bj
         1pHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779820835; x=1780425635;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yMql5wQyBs/PbL0yXEnXMbDGqSBDxL5xukVOqQuJimo=;
        b=iTWDCO1lu/OHFMXPxTm3Gdcsr9YptczLwlkVd/Sorpo7pXW6kwDVuFAlV63rgq+AsS
         yhRF8BQvlbIsDOTJEtmkT6ch5jH4bC7LOeNTXKOJFdqVZ3vrZoIFr2YkQQ566hkTxi/o
         D1huz0I3+9T/S2GUap1DJraXO+naPW78PGfodoyQIlh0LD4bN4d7O6GXpOkP6Y3MjVk7
         Xvtah9aooJvPcjUv56Buj/yi9dLunRVLCzFgoNSBTcaovFwWapDVA0t5SBR4NHGSjNg9
         TLoNVrxnDKX8oLWAwrFf67iDtvE1HV5Ur9UPueNcYf8tgB9GefOGp3dI14gS+YflYBIq
         cY9Q==
X-Gm-Message-State: AOJu0Yx3MyMvXYZgLaboo9nD+kXQxKHpNuSRwyyCAZmBdAIDtLwlnJo/
	mTghuXdW8MMQSzu6w9POQQHBIAnzA32AH7H9zYFzP5/retwMrmA28m3As5tp/lJiQZr39PFqd7/
	BVKqOvaO6dTik1LiIB6fIkbhPCboLO1XBJblRqGo=
X-Gm-Gg: Acq92OHpXfY1HupaE1pR72+jZmKAQR3Fi5pj6ACXvSYvAy8k6w/XalzSgMPZI8DNmw6
	t1UwYdJ79I+dspNaOn+QGYrK81UEZ3RQsMwWWAU8S26COcI5XmQFTIcuEjLMbA3A8EFfZX+L73o
	rdArIvPIrUpOf7I6FfAfXW4kAEuJc3jGjifMMM5blR31bhbVCKq8Ml38u2HyJ1eBtBe8rgVnTwa
	ywgt9sKfqskXEPgY+I3MROe9qoKZ+3bKl+8C9w2qUq9QcoJN5nrbBMQN3F5iGLAZ+zWtG7mQiLA
	Lt2iN0Ca
X-Received: by 2002:a05:7022:128a:b0:12d:de3f:f3dc with SMTP id
 a92af1059eb24-1365fc6a4a7mr6914839c88.38.1779820835039; Tue, 26 May 2026
 11:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260521091727.3229229-1-s.hauer@pengutronix.de>
In-Reply-To: <20260521091727.3229229-1-s.hauer@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 26 May 2026 21:40:22 +0300
X-Gm-Features: AVHnY4KiJORAsZ9F968AeNJ6jsksXMtr3AOCh1d8KuQsoUE9tT6H55Q7Qcstxrc
Message-ID: <CAP1tNvRjaZkARSPnFJBbS8znVPBLJV6SCUFRmOBaa94P_0Vkbg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114036_986862_7FDA11FD 
X-CRM114-Status: GOOD (  16.46  )
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
Subject: Re: [PATCH] ARM: rockchip: atf: move PBL malloc space away from
 OP-TEE memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ping

=D1=87=D1=82, 21 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 12:17, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> We recently introduced initializing the PBL early memory pool which
> might be needed for decompressing the BL31/BL32 firmware files. We
> used the end of the first DRAM region for the pool and with this we
> ended up exactly in the default OP-TEE memory region which is mapped
> as faulting. Move the pool directly beneath the OP-TEE memory.
>
> Fixes: 76b1f31275 ("ARM: rockchip: initialize PBL malloc")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 14797a1e06..96a891847b 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,7 +173,8 @@ static void rockchip_atf_load_bl31(void *fdt)
>         unsigned long bl31_ep;
>
>         mmu_early_enable(membase[0], memsize[0]);
> -       pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MA=
LLOC_SIZE);
> +       pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_MALLOC=
_SIZE,
> +                       PBL_MALLOC_SIZE);
>
>         bl31_ep =3D load_elf64_image_phdr(&bl31);
>
> --
> 2.47.3
>


