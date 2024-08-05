Delivery-date: Mon, 05 Aug 2024 15:48:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1say4y-006VXc-2q
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 15:48:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1say4y-0000gk-BM
	for lore@pengutronix.de; Mon, 05 Aug 2024 15:48:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:Date:To:From:Subject:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=etDI8U8d+Uulf6MONhxS41E1MW3HUDzHS9/XEym+4Ac=; b=AzsjwanMTKCEdKHY6Z69xOrC1t
	DKOpW5YBSnT0OXBomW0gd9+ompYGtRY4jLEz/vgihP5TzYe6JIwniG+5otMJ8p0+/YBajEsaI/Avf
	8u92HNkkgDXnO/ynfeZbY79507bXftPhIram+x8c3e4qWCE0pCx6LCtdIivmBl3CAzF+NdKwdHwOE
	rBIXZM7m+/oRysFVw0Uo/cWCtwnpoqNa/53uFPnqHfGIxLvL3ucqKu10wU0gwi2uB3OxzzgwZi6bl
	pzUVWYLNGv1BFtsoPyFh2rvn0/Js0v7ETOA3TIcRcEycH0EzUO61T/u7i7w5V+PhKat0FBkSWEmu8
	7Rr2GeBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1say4S-0000000G0q8-3Acx;
	Mon, 05 Aug 2024 13:48:20 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1say4O-0000000G0pd-3UJ1
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 13:48:18 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5a10835487fso13938265a12.1
        for <barebox@lists.infradead.org>; Mon, 05 Aug 2024 06:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722865695; x=1723470495; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=etDI8U8d+Uulf6MONhxS41E1MW3HUDzHS9/XEym+4Ac=;
        b=Bgz50dt5LFQWuHbL82sVuVGP0lrKvtRWatTsWTL+dQJVRgNuEaITKecfwVDGDQA447
         b9R2yVugaOYYSgmD1ETrrvb8MC8xCUjOaamTNe28E1IlfG698Vro8dNsap8oJwpqrBwh
         YjRdx414lgUVB31PQaThmEV0QAo+pyM/heJKLUn5SLfrA700auXNpT5/XPb+ihowJ1Sj
         P6N9/K/4CSOllUA8k9DrOj+b+Iq/iGG1pgQssQ2bHfHlfkfGpQ321IDL3r5SgZ4d60x4
         vWL8TUWGMQN3JRW68DMFm5yvZLs+SyjUSjAOiuTTmY1dukUXwnu+puO3tGVB3I3Hvx0M
         +Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722865695; x=1723470495;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etDI8U8d+Uulf6MONhxS41E1MW3HUDzHS9/XEym+4Ac=;
        b=IgGS1Jp/YYfDvRkPuwa62N2XFwL6pl6euiW5R88ISR8M1fXoNgXF/BSuYy+7O6jWxm
         hTWQzzRsZiVHn1yXYWGZb8W1Tj8tAaFwk3M5ZvbxnJbFCIfvL4Cif6wQtBOv8LkH6NUs
         Uf83hE6mSDQ6DMmv1sqsSzjZorhtLI2pFPG34kWjAKDImDfS6/QNQ8cNzNOWu8jXwqBS
         5fdNd2enlYOgqXwlHu79Zwa8elZN559J9FHgr40v3Lh5ieEgF+prEvBfuEQysSh3WqIU
         OHyEw3ymPwkOV7/R7zJIwLtO+0AGlVtmCq0uOAheZbQO5OQFZ/fgsHJgVmQOMou9HBOo
         m6wQ==
X-Gm-Message-State: AOJu0Yx1Qco3G0W9G0LKRG338ii2GWmFPMXMG0gDn6XK4N9LImkwe1VR
	DHsnW/eP3pXGVqIxLlC3HEdnAwBZDjDu9w2KqkjVIv91MGERKMc6VyVRqg==
X-Google-Smtp-Source: AGHT+IGHtu5obaTLfLI0b4gpWXi7VlnlFolnzYXVHy0MyWT7sY4AjiIgTQ0RcqHCxPZgv9mzsc/ZvQ==
X-Received: by 2002:a17:906:4fc7:b0:a7a:a5ae:11bd with SMTP id a640c23a62f3a-a7dc510ccefmr874620266b.67.1722865694402;
        Mon, 05 Aug 2024 06:48:14 -0700 (PDT)
Received: from vaio ([91.142.65.210])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9d8a4b1sm456240366b.151.2024.08.05.06.48.13
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 06:48:14 -0700 (PDT)
Message-ID: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
From: Stefano Manni <stefano.manni@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 05 Aug 2024 15:48:13 +0200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_064816_905735_CD5EFD08 
X-CRM114-Status: UNSURE (   6.15  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: eth frame error on imx6ul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

on a target based on imx6ul I see lots of errors like this when
connected to the company LAN:

WARNING: eth0: error frame: 0x87ed5190 0x00000886

where 0x00000886 means "frame length violation" (FEC_RBD_LG).

It seems to be an HW issue BUT on another target based on imx6x with
exactly the same HW block for ethernet I never see this error.

Have you ever faced something like this?

Thanks,
Stefano



