Delivery-date: Mon, 10 Feb 2025 03:40:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thJic-000Qpn-2z
	for lore@lore.pengutronix.de;
	Mon, 10 Feb 2025 03:40:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thJib-0000dD-ME
	for lore@pengutronix.de; Mon, 10 Feb 2025 03:40:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=z31BoXCprbk5skbUY4znBaKspl1cdDbMOle9SFpPMtw=; b=fl7gm2Aa8D2tXlAbdBJQ/bZ/2p
	+rTdtpXwa/W7reVD6amHx1RrMKg//T8bXIF/ws2TsOxYYKfLM129FcU52/p40pqeY1XxxYjgMJynu
	lSi84C6Fc+xLq7b8z4D37qPZSNC0Q3KxJl6PW7Mqh3RdHYnxoi2nISAuociKaY5cblTR5iLfDk7Uy
	noaM/y9u+Gq8vBqvr1oRLeShQFA7giQGR/WQ6kNTPa3Vupqd5n2i8WisM9aFk54VwVfZOR8/fHhd9
	QYjiuaRvEC7lqWbIqPKfldHXz4va5kZNxH1QK1kPOliWX155Lkirk771bn9sOBR2GIflYDx0vd5KT
	UCP4aBCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thJhq-0000000G0Jt-225E;
	Mon, 10 Feb 2025 02:39:30 +0000
Received: from mail-ua1-x92e.google.com ([2607:f8b0:4864:20::92e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thJhn-0000000G0JF-3qka
	for barebox@lists.infradead.org;
	Mon, 10 Feb 2025 02:39:29 +0000
Received: by mail-ua1-x92e.google.com with SMTP id a1e0cc1a2514c-86714f41f5bso460192241.3
        for <barebox@lists.infradead.org>; Sun, 09 Feb 2025 18:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739155165; x=1739759965; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z31BoXCprbk5skbUY4znBaKspl1cdDbMOle9SFpPMtw=;
        b=fOkv/RFaYcBFGo2zbWzBBB2OZ9W9p0UOgNzme0V32wPkau/KVIFET8PdEDbp9OCi1s
         fBD6zksFFYECfsDxR2dnzNJSyw/sVJA7o4VvHw8MJGblx/QattkraPG/uLbh556iBX8C
         kTFmEam9q3BLfZ/Lmvmv0agb2MVI8QX5wsT9HZrFEIz72LuQCmgot8VP32g2tcHKKwPQ
         G5dO+06XbnTwDjfUAsvk0ngFLP3rblSRx4vJMfF+yX0hxX0pnGpMU8hztME/2FnbXpGv
         f2mNt1ATf7lgs+oh0AcRIg4E5R26AOdb1wyb3kVsPsXHyUh0ZVdBkwpEd01FH1w13NQK
         ykQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739155165; x=1739759965;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z31BoXCprbk5skbUY4znBaKspl1cdDbMOle9SFpPMtw=;
        b=dcikjAHyFH/F3h/D7L8hDFdyqhSj9LSCAnJvtoTNzF+j3ag9+3u0XVYosrZuBfppPK
         djtp1txt6lDvJ14JxeFuoyde7aE0kIMK7A+GK117BHIbxLA6NbcQpuBY9dQswQAi/o9L
         3BT3vIRbM7BYLFC5tcw7KiybOQf8/FkpP+BEgtgsAI7+7mRarmAuohgR84AuCWNSl0hl
         RUcmcvE76+hS0zgOs6s6x/+rZxNq6CMyRlOeDccJLQqlfg8/RbzwE6mH9ppMidBoaHHu
         zXJ4qZ3IjtTbwbEi4bvxxQR+CBUK5QmYWwNfJX4TAHLKI8k3oQ4wIGH4yAqZ6LD6TnMg
         hXWA==
X-Gm-Message-State: AOJu0Yz8yUiJXcyYfhD2frdFUuuFzVO5v73IT2z1TzVf9Rw+2DO6JYrg
	x0pKlqvA23nVM3BSJnqyhwYLQ7MMOQjmWfYHbFxr65S+Qh+rnMS9AfpLNnoEMfBA2TuINcx14T8
	vrryFBVH/ZWDLm7qf/NNwdFgjhDwvlLXWMHw=
X-Gm-Gg: ASbGncuDUPPswNIDvtsFbDOm/MF8ROWJdzcwWrIyWl4PtxB6rWvxVytggJg3wVN63V0
	JvObqydmf4Nqi7Yu5qcAwbrdfBSMx1d+gvrZ1EdyUM6nHjMlTyCjD+B/sHugRfCYx5TYTu8qjDc
	c0oho7oucX5pJjSkbS2EeXwUMN9Do3
X-Google-Smtp-Source: AGHT+IE3qtFr4N4Jp8QF8YFCuo7y8i60gQE97mnQrYImoEwbzj7QPbmw7MmgREwOK7M+cIv1VMMLFhbjqw3VKL+CbcQ=
X-Received: by 2002:a05:6102:3ca0:b0:4bb:9b46:3f90 with SMTP id
 ada2fe7eead31-4bb9b469293mr3174330137.9.1739155164798; Sun, 09 Feb 2025
 18:39:24 -0800 (PST)
MIME-Version: 1.0
From: Jonathan Bar Or <jonathanbaror@gmail.com>
Date: Sun, 9 Feb 2025 18:39:14 -0800
X-Gm-Features: AWEUYZn6PazgrJJEQkS_H5TMJqL29ESHmQzA_9d5TQNvXOZp_dYmIcbO8tQOZzE
Message-ID: <CABMsoEEwH4Nch6bVqd+8QSMOCzMTN9LVZcSe6yJ=+Rf54sAVDg@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250209_183927_957152_17E1F42B 
X-CRM114-Status: UNSURE (   1.89  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Reporting security issues preferred method?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Barebox mailing list!

What's the best way to report security issues?

Best regards,
       Jonathan


