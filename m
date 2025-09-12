Delivery-date: Fri, 12 Sep 2025 08:55:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwxhH-0028nD-2y
	for lore@lore.pengutronix.de;
	Fri, 12 Sep 2025 08:55:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uwxhH-0007Lg-DU
	for lore@pengutronix.de; Fri, 12 Sep 2025 08:55:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b6kEjqiUvr0cdhGoSSKfSzadyF02B6ZfjgPKxfKckoE=; b=H2sVmZHySCe/sEp86aaqr9jUUx
	CyWGk50Pya0BEgtxRjLHmL7pE95asZixVVLPDFsepckRWq+39KQR4llR1WTltWcGY7cLGyQldDt65
	Cd8ZrXkWyRzlihJTN0mD1bMPER+Zns8FfdWeR3D6cHpGD3wZWKUPt+nTWwWPm0RNkJsBYTg3AWKZc
	Khnq1oJx75g+8VllccRN8wRAQjTgeQhthzQrIm+LAFAgIErjecHQNAJSB04i28wwSUv1iqniPeP3K
	DnJQ4Qucckw+1Tghx1JbszXdvZ8WhfBBZ0zEg9z57fMx0l2svJLzzD1c1qp5GTHwL5PG1co4zW3Lx
	1xszIRiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwxgp-00000007VeG-1KhN;
	Fri, 12 Sep 2025 06:55:23 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwxgn-00000007VdQ-18pR
	for barebox@lists.infradead.org;
	Fri, 12 Sep 2025 06:55:22 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-24b13313b1bso11070905ad.2
        for <barebox@lists.infradead.org>; Thu, 11 Sep 2025 23:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757660120; x=1758264920; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b6kEjqiUvr0cdhGoSSKfSzadyF02B6ZfjgPKxfKckoE=;
        b=OOBA5MjXCbipjU/xq6tc/q6lwxYCShjd1AUkrGebHWVHqZ8S+K4alXquXrweEvOapr
         rMKFCw3uPfn68YMtIss/NqNN2N83msRztkU5u/2i9jRNEiFxKJvWI4Jhy+o7EG1yoto9
         qbHKgGRRbZegeMLqu8XFxdfEJaXiaVnlGwJJirpxMPbE+T0jqPFJu5/nOYtiGJjfCsl6
         Wlg8J0R5ztyZ0BDEMP1DyUZLPhEQU1zpvhhIp00014EO6XK/fkvvCAq43NadjJn28+Zb
         1GDuLZyQL4SVSnk30ieqUXq0cyyZfaMDF44r2YoFrUUmRJtcJQh/Fl7Gr8JrfDCOvhXv
         EGAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757660120; x=1758264920;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b6kEjqiUvr0cdhGoSSKfSzadyF02B6ZfjgPKxfKckoE=;
        b=rlaq//GTlq38DnNc0ttvSyym5tllto9xGMP1sjwxu8Uc0qro2exAOVWGj3J0DZdpiU
         Nz66nxK5iq09za+0WFLwtmR1xePmrCa8o2m2Laq0mj785tUNXDuF0lYCTvoQGyS7iq5Y
         toJ5UzZy7OVtOVShXom58Jn7/u9QP6bXr88Obc2jSoLUd3xvghAicdN4ybB4bFEM8XWJ
         vg8kDSWP8sDrbJmup6Sj6fCx3+G2sycfjT0J3v8IRrO/24sbiBDaXHlCmvSe73zpspRo
         8obvSuEok2X0CDlQaXYDYvoofF+PbyxqYkWFBEzlSkVC/8qb01IujLu0nEwBn4UzSkTw
         jfMg==
X-Gm-Message-State: AOJu0YxIJAtNozk40JOoGYOEu6kTo0S2Mw0n6kOQGm0XZYeX775ws8dQ
	nwtuSzZgjRjlpTyhL5aks4qvvc2iBv0dX7Jwy0myTkgShDThVFSKWEKx1fJOLB//0auTdkhvf/N
	1dMFB49trVy/nXoaQsipIpFhlnadoVZq+OuznrFc=
X-Gm-Gg: ASbGncuVcgDeT3DB4sd0rlgMv5S+5vS0G7uW/k818I1fOp5N/dmvLRKruDEObvXgbbu
	/STyfa5bNP/fyT/zffy4pwV6SGqb5HswklZrnXsXTwH09YRhpHUzvVu+BFP4cFidLkMf3LEXF4I
	h2HrxUPOEAdtWg8szH/dGDknf9Qa78PT6EEDaAF3hlorgI6eLNK8XDE7JLs/353GPqilqJttakk
	yX0bWqDbGmIicSWLoVVLZhJOkaC
X-Google-Smtp-Source: AGHT+IEjm+afgSmCdM9Kziz4zxWuBBMidH5NjxzQcKnuAkRCU/414cp4xq+gxAfQMEPhRk4c+vYlPpGXuyw4W4UanYg=
X-Received: by 2002:a17:902:d590:b0:25c:ceca:9493 with SMTP id
 d9443c01a7336-25d26a5b6afmr28678025ad.49.1757660119738; Thu, 11 Sep 2025
 23:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <20250825121152.197198-1-eagle.alexander923@gmail.com>
In-Reply-To: <20250825121152.197198-1-eagle.alexander923@gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 12 Sep 2025 09:55:07 +0300
X-Gm-Features: Ac12FXwSkL6rS96_bYiKRZGu1vj6eApJMlud-5wKgQDlYT9sz1QDozW9MO166OM
Message-ID: <CAP1tNvQEkKGxwqxeY0_kXtqLdiUV6L4zVL7kLk4xc6ic80yiVQ@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_235521_310258_E6B8D48B 
X-CRM114-Status: GOOD (  12.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arm: bootm-fip: remove redundant variable declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ping

=D0=BF=D0=BD, 25 =D0=B0=D0=B2=D0=B3. 2025=E2=80=AF=D0=B3. =D0=B2 15:12, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> Remove shadowed variable declaration inside the loop
>
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/cpu/bootm-fip.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/cpu/bootm-fip.c b/arch/arm/cpu/bootm-fip.c
> index bd176f0645..a50b3f4431 100644
> --- a/arch/arm/cpu/bootm-fip.c
> +++ b/arch/arm/cpu/bootm-fip.c
> @@ -91,7 +91,6 @@ static int parse_dtb_registry(struct fip_image_desc *fw=
_config_desc,
>                 for_each_child_of_node_safe(fconf, tmp, image) {
>                         u64 load_addr;
>                         u32 id;
> -                       int ret;
>
>                         ret =3D of_property_read_u32(image, "id", &id);
>                         if (ret)
> --
> 2.38.2
>


