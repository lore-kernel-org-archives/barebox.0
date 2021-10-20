Delivery-date: Wed, 20 Oct 2021 11:09:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md7b0-0005xw-A9
	for lore@lore.pengutronix.de; Wed, 20 Oct 2021 11:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1md7az-0002z3-Bs
	for lore@pengutronix.de; Wed, 20 Oct 2021 11:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nslGMITqbHPTYjptoXUV1ZeYJUinP/dKogsegdHKcGQ=; b=drBMha7cPE8JKh
	eUm6SLswqAtlMsMRLf5g0latgBG9wJn61YgqUNqHq2D6VN0BB2rNpXNxOAjWl7uhUWq91OcShkx7u
	k8zSPyu73qxFH3bJQ59A5ffYKNRIOKaGkClwtiX/BToA+qkVKpvVPZOTtqawpNN9AkYQZBfoF6TFj
	AT7NU4OMDl2Gsvw3yXtfgrxKtNaw5A0dGSSquhj5k0jY9o2tJ5aKvWgkNsSkBKcKhH5vmnn9/Svjw
	Lgh6B/QbHZq8O5JaNUccJtqkntF/evPLguwOTjdEcq7oE2lY1WhWZQxrm+5mTG6OZjiiMCLDuxSWl
	sv0HLnxKF893Yf0H31Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1md7ZZ-003wI1-16; Wed, 20 Oct 2021 09:07:45 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1md7ZU-003wHH-9T
 for barebox@lists.infradead.org; Wed, 20 Oct 2021 09:07:41 +0000
Received: by mail-ed1-x536.google.com with SMTP id r18so23713533edv.12
 for <barebox@lists.infradead.org>; Wed, 20 Oct 2021 02:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/fJd8O9bYRGsv73pS/HBSq83+bYaqWzl7Xth2YHHvww=;
 b=pnnRSigFq/xZ5txdrlBvFBTDPMZAqhu659+k1F90PegbDjt+JHy9B3ewFAD6IW0RtE
 /ENUKfXNwmWIVvXA554g+OQdJIHPXM4xHVMjVR9A+zyQ8mtnFpBqcXZzw0ue35AWW213
 GvHz7i0IOg/VL8Ld7RGTMBKO9qv7Ew5BhtHQOQnApYfWUIk/D7N1A5Z/tA+JbfDD4lJd
 QrfmatL+dpj8lVhqgPW78+RbEy1HiI1H6QH8CIuhP4LQqxze8SuvOkOjmwTvixkfsQK3
 a0V4KZ/LKTitBQzVSW4XJ58zpUzKn3DKJBtO0ACIiF0gKPP9auUqUsK91+r2s9CmueRK
 UxBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/fJd8O9bYRGsv73pS/HBSq83+bYaqWzl7Xth2YHHvww=;
 b=iDyBehBKs31Hb9etG3PgBlZgEffjgNnPiCyyAZbLo8sPaY3ArVtnYxt3mVqk3Kasql
 CNCshc75sc9ePl0fvD1/CXdbQXNp4eXPMEaHpDmNLkSUwvCm+T5ra2lpazBh2zWCz275
 37osaXc36Es5Pv74jJa2Ve628J3FyNhbEDnUXJk6l91ad1yGEVdJIhvkTIFTiIMjSZkQ
 sUxWiytkRT92GWMJA9amEilAFl/pv1y59JQ6qdXqktVFpabm4dxWIW7o4YFreSdsmxyi
 tsYVR/kb/HWY/0vn3Zmo+Ti/CSGWBhgLGCHNNosFZ48aAqvJxVzrQETb6cbDa8cNnnLM
 r5Wg==
X-Gm-Message-State: AOAM533nrWFfG2CsyW32tP9Z1k9LM55t0PrfDJA3ILn9tiql0m1HeF22
 ii5spDQbXIi4CLvt99nj6OCW+/8lg4fISg==
X-Google-Smtp-Source: ABdhPJwMr35Jm/K+J7eb4hU1gzhH4M0+ozr1NW+ckNNPMuNe2ApFCjKCJl6r/6i2AivEa5tuxJAC5A==
X-Received: by 2002:a17:906:17d5:: with SMTP id
 u21mr44223140eje.16.1634720858601; 
 Wed, 20 Oct 2021 02:07:38 -0700 (PDT)
Received: from PC-BRAT-W10.ESKON1.local (mail.eskon.cz. [213.155.251.67])
 by smtp.gmail.com with ESMTPSA id y4sm737733ejw.3.2021.10.20.02.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Oct 2021 02:07:38 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: jmaselbas@kalray.eu
Cc: barebox@lists.infradead.org,
	danek.brat@gmail.com,
	sha@pengutronix.de
Date: Wed, 20 Oct 2021 11:07:38 +0200
Message-Id: <20211020090738.4399-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20211019161654.GA26849@tellis.lin.mbt.kalray.eu>
References: <20211019161654.GA26849@tellis.lin.mbt.kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211020_020740_361082_0D55C21D 
X-CRM114-Status: GOOD (  13.54  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2 v2] usb: dwc2: Make having a phy optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Jules,

On Tue, 19 Oct 2021 18:16:54 +0200, Jules Maselbas wrote:
> I am interested in getting this modification merged. Beside I don't
> think the dwc2 driver modification is needed, as phy_optional_get is
> intended to return NULL when no phy are available. For me it makes
> sense that NULL could be return by phy_optional_get when the phy
> support is not compiled in.
> 
> Do you have the time to send a new patch with only this modification ?

I apologize for not responding to this thread sooner, had a lot on my plate
lately. I agree that simply having the 'phy_optional_get' return NULL when
unimplemented is better than making changes in the dwc2 driver itself and
it makes sense in general for it to behave this ways. All the other functions
using the phy already check for NULL anyway, so it is perfect fit.
I submitted it as a new patch as you suggested.

Daniel


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

