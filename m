Delivery-date: Wed, 30 Oct 2024 18:51:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6Cr8-002mdR-2e
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 18:51:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6Cr9-00063s-HV
	for lore@pengutronix.de; Wed, 30 Oct 2024 18:51:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/vJzbwdY+N8DLe/JiEPlwqdTiimT9Ad/8b0VxMtAXFw=; b=OV9CY2AiM92MPnhBfTOCY2SeK4
	/Tx05wQveAuHyq4I/KmipQvgq/8VcbnEZLuirqynsdkP8rvConx71CSlxM0rt84ar4lpy6z9hQOap
	7lsGk39asf7zXcSJ6RYCNK+2I0/LPxFIJeGytTkNOZsAvaITvGbvxYEsIsyLM5kI4CUDcMYjMpKJo
	o8b7+8Ns2lfUADY0K9iHzyjfm91ZvlSr1SM1SRG+lLMt21setk5IrbJhiTdv/AkRyz0Sg6ajmI3YW
	sgQOEw6WEsPjH06oLFkWLK1sluYoLUQuir9iuywkbfUpBYHAGg7tDlygail8HhZ9IuDt2ms0YulMF
	QVRen7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6CqX-00000001Kfm-1rS7;
	Wed, 30 Oct 2024 17:51:05 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6CqU-00000001KfQ-411c
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 17:51:04 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2e2cc47f1d7so113968a91.0
        for <barebox@lists.infradead.org>; Wed, 30 Oct 2024 10:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730310662; x=1730915462; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/vJzbwdY+N8DLe/JiEPlwqdTiimT9Ad/8b0VxMtAXFw=;
        b=VGeJ4mhoxqqCCfNSNa3NU0xnLamtEoRii6/JMRIvDeJOoVJZPTYb3s85AeOOQl69a1
         E+244+Un6SOm+Ye4okgcs1ScKUAxWQMuNJSE5cclOfNfxjxKUoHq86XIeokeDP/iNiLR
         OF+AINhdiN/wmvhHANlvYmlBQ5FbNL8yo0ADM0uG8AhveK5rHPweOJAH8sVQCBnMVjSt
         aUSBkmOSxxNb0kLeGm0WDqZac31gfHi6l+An+txFkvmO4UgHC0uElf/dxvjlpEoD7jde
         Q4lfTTiDsCoyTeZ6oTvwBwavJGWY4mgBBSeYktZQa4OvrZ3UrhBKSGuL42bicqiczRem
         /g8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730310662; x=1730915462;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/vJzbwdY+N8DLe/JiEPlwqdTiimT9Ad/8b0VxMtAXFw=;
        b=QkIXjuvUX68ygGV4i9hp3S+jKtrzCEIXdSraFVTqj/kfCgkqBiV+yy3HV8Jfl5TD/o
         7SkZaPjRA0eb0UPHleq1DYNYzwfmEZIkdhmityjnE4QXMLEzIOJJ9KD73/eRkU4pLlv5
         LsWv3FozSmE6FRFCue7zlOvrWj+9fVL0DRaRX55wsMEfEzE/Ua9HDy2k8++zJUYA+ZXS
         yfWDYMdJ/TTde6Y42AhnzjtccosEEOCTof9+QObMB8QlYxCe3WbK4EZoqOTXWdtdEo0u
         zcKlAmy0QpAEtxpexqBKdbehXgASGdW/XNILGz7w80Q/rJB01a67XN2eQ+q7d4h9AAoL
         WEIQ==
X-Gm-Message-State: AOJu0YzJpU8hJBr4uMo59lGouhg4xy3TILau9N8fEFS52kLFSCEW33LX
	7HydnidO2PYbwoNfTBLPeC5FG+quYl0+w6RYzpfSdzgR2YFPidqvlS13U+LAlUfCW5zpJXpGRBe
	Xu3y043NDdT+si4QonnlAWAAEV1s=
X-Google-Smtp-Source: AGHT+IFty+2ctW0drDYXrUNb8N5fGXbuKzWANXdkyX5nLW5djnUXZsT6f16vE4T8U9NatWUs/jtQ9guHSPxzszsDnH0=
X-Received: by 2002:a17:90b:4c4e:b0:2da:88b3:cff8 with SMTP id
 98e67ed59e1d1-2e92236554emr9978400a91.6.1730310661608; Wed, 30 Oct 2024
 10:51:01 -0700 (PDT)
MIME-Version: 1.0
References: <20241030115407.841758-1-eagle.alexander923@gmail.com> <c79699ff-49d9-4cb5-9292-eeb8bdf85702@pengutronix.de>
In-Reply-To: <c79699ff-49d9-4cb5-9292-eeb8bdf85702@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 30 Oct 2024 20:50:49 +0300
Message-ID: <CAP1tNvR_B-Au4k3F2d4s0fqyo-k+bkQh6OOh8LsM6PeJpVaGCg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_105103_015284_EE527525 
X-CRM114-Status: GOOD (  10.85  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] Revert "mtd: nand: make interleaved placement optional"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> > This reverts commit d1fe68f1b010b83ddd3559ffbfcb70dca68b2563
> > and ec3b8c646bdc8c2ea0a78923ccb745012eabc097 (as a fixup).
> >
> > The message "CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED is disabled"
> > is always issued, regardless of the MTD ECC layout used, since it
> > is executed through "fallthrough" from the previous case statement.
> >
> > Additionally, if !IS_ENABLED(CONFIG_NAND_NEED_ECC_PLACEMENT_INTERLEAVED)
> > is triggered, the patch calls break, which disables the additional checks.
...
> These config options were added to control barebox size. We need something
> here, so size conscious users can opt out.

Well, I hope you understood from the description that it was not done
entirely correctly.

Thanks!


