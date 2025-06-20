Delivery-date: Fri, 20 Jun 2025 14:58:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKV-009Hjy-0b
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:58:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKU-00051j-IG
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:58:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tXJ2ShHbf6F1qVc7R5+uH5EuLL/uKNXrxMV0f5uR8HE=; b=q753UzzqIiOAhyucK+/5AMoqYE
	2YR/b97s9wW39IcmsEn22P9wBjPN96b+z+d43vIgbbSHuz7LgjWTpXJZfI49usIpkmHUig0soM3/t
	GIdSW/hPvsvY5LJJGEp7Y6RinYrPw0sD+LN2y2T4ff9X0KPqc1ctVqj7UVpWswDztlKzgXcQ3pllS
	WsT+aMWkTGNM/gS+HGx9vv12jw4cXOJh/fAPxGhHvKfGP1J+Togs4/THD0CogwHLJFMdlb+b3ul+2
	pEO9sD198JwV2aeTchhizj6FlYbl0gv8QHLtsg+vVyOEsmjKwSaGMF1fhvaMYoB7kJ++EY12TSf53
	4ZGbjAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbJr-0000000FcVB-3Sdp;
	Fri, 20 Jun 2025 12:58:11 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSal5-0000000FZD0-2t17
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:22:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:To:Subject:Message-ID:
	Date:From:MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=tXJ2ShHbf6F1qVc7R5+uH5EuLL/uKNXrxMV0f5uR8HE=; b=nHOg9yP8H/n2K+83IRUd6fuCok
	rhMT1kptW/iqf34qlvu2P3VBoEApnVy+TmQDXg9DQTSiCnHm+k3UsbgzeQreMw9w8bFPFj/Dg2vze
	EME2op3+6X7ENeaGN5q+imiFW37Cf3E7INxsijvKIDyy/hxHaqKRtgp750BBHDVNZZSRiM6NuQsj/
	KDgQpQLHVF9tuHowWwqJMh3cdlFtJLOmdg3SdSYvZeI6i3Cp0ehuGsUOMe4cu5h/mBnPuJfvpL5ND
	fV+ka2b5OnIN6SZpoTZ6F/zGiKqlFwlqtfHPmJf3BzLAsCZSPNK7yZhw+vxK3l2n/H6VyKjx70lgl
	0rkbXaFw==;
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSal3-00000004jL0-1JHf
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:22:15 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3141b84bf65so1599722a91.1
        for <barebox@lists.infradead.org>; Fri, 20 Jun 2025 05:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750422130; x=1751026930; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tXJ2ShHbf6F1qVc7R5+uH5EuLL/uKNXrxMV0f5uR8HE=;
        b=WYFgT9gemtl7FHrQg4zAf5wEsCB2rMZBa8y0ekG0oi7OZJvPM3vRj4b5ks93yyl0/4
         fiF6AeYjPlqrsLjRhs5bLlXKyQ1NaoBNgS+WNma6zxO8B0AI8H4dIkUi7AhwprmXPjYt
         JDhKkl83bPpefqHri0I6u2bPuHA/Rvf1tUb1w9DGhUlBUnqHmFJlcU4kEJcoD873swYN
         6A0x8frKEOoo6pn9nhAuBIrk+XS9lMYyZjgVgpUgjfZ9gWJcu9fQjZcU+jvQQsK95RAU
         hfy9mj3JYlmM7DgmHA59kqlCucwGzQrgveGq7SmJX3FysOy+YB8NxnJf6NsHJT7b3Skd
         EfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750422130; x=1751026930;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tXJ2ShHbf6F1qVc7R5+uH5EuLL/uKNXrxMV0f5uR8HE=;
        b=emBmp4FC8INbrn1oKNML3NY/IW5MNwxIJ4Kq6Ro2VM9UBjd9Han0F1IGBafwAGsOWz
         KW0HTFUNvsh7SUCyKg3L/D7bFhQlnYug0ERFo5j+aVzIovY5ePevQqIXvbdtLSP1Zn0z
         w++XkYs2heYLM+kD4kg4I10svCgL08kK4fdQ42hRWqns4Dg0EeqFFYzFv+DJ3aIeSCZA
         /mRNSAgqUWuIGB7sloQETwYCCgKhErtC02bN4fEyVvjiZd0KHynnTOhT2x8NbMFufs4B
         WNd4du+VHNAQUpAV+PR3MgnjYHpKd1rfC0Z13rvwIzsZJv1FHWaRgVI1m5u+zoB++kiP
         3tDg==
X-Gm-Message-State: AOJu0YznZUX0UAAJMP3K03zGPpHsELV3T05oVk12Rf4Dmud6hFij6Oie
	dtzUmzjurhdAwbpxNz1O1ZxiGWMAeL1BT5bOsljg2z8I5UOaB16vH9WQ7hPZ1mC53Jmg2wbvW2G
	xDNclUHAcfqDBdY8HVycyQmzdvlkV8xEFOg2+
X-Gm-Gg: ASbGncuRDksH1bWcnZZISGG6JqDXKD9bCGs0iO930R3mi8TAn6biIO5Gi+MC9fbTtdS
	kYB+v1BSHDjef2Asnb81p/unZe1xa8l3ElPoHZ/34z4jW9vZaYWpImO0E727YcP0+WGWfntgoDI
	uzqsGMkzGrbPgCu3tZ+kqZWyVdy3HqTRfuj8OqMk4rKlkr4rT1gmLCsCQ=
X-Google-Smtp-Source: AGHT+IGV7IHjTOtQ42sNhIZm6p/NtidR9Vr4QuGDIaTU+w69CS1L/QRWGc/RxrCg6/bG3jAwD3G15w1S6CYt8jDzWYQ=
X-Received: by 2002:a17:90b:3f8c:b0:308:7270:d6ea with SMTP id
 98e67ed59e1d1-3159d8df995mr3871930a91.30.1750422129620; Fri, 20 Jun 2025
 05:22:09 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Jun 2025 15:21:56 +0300
X-Gm-Features: AX0GCFt-ilg29ZOB4p8OiEHQ0PIKd-S8dk8gkkXjijAlVg9hh1BeO-4hjwj7xMw
Message-ID: <CAP1tNvRTbyB7NXoaLOid9-7jH5Jxfa5MB6LGVfyZYwc7y+Sq_w@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_132213_429647_A020D624 
X-CRM114-Status: UNSURE (   5.24  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: SAMA5D3-xplained board cleanup question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All!

 I would like to propose a cleanup for the SAMA5D3-xplained board support.
The board currently has code in board.c that configures the
at91sam9-smc (Static Memory Controller).
However, since the board uses devicetree, this configuration should be
handled by the MFD driver
that is responsible for the SMC and is devicetree-based.

Therefore, I think we can remove the SMC configuration from the board file.
But I don't have a SAMA5D3-xplained board to test this change.

Could someone who has access to this board please test the removal of
the SMC configuration?

Thanks!


