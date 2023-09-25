Delivery-date: Mon, 25 Sep 2023 13:10:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUQ-00ATX8-Uu
	for lore@lore.pengutronix.de; Mon, 25 Sep 2023 13:10:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qkjUO-0004p5-T9
	for lore@pengutronix.de; Mon, 25 Sep 2023 13:10:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Date:To:From:Subject:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ba35ELbdiiGzti91zRYOtCgq2H9z6vwcPiPC34z9Gw8=; b=NmRyfx+mfCV6f3
	DGXn9Rvg0nLVB6tFhwOUMQ6c/9FztwLpY+Lbihu8byrfwghaZKypiOs7ZJjAt3HCCmNjRupfoN7+i
	YriwOYrYzxISEnVtxccyOkD9p8ClUkSg080Hd/z3Mbw5Ly85Bhf6H7IPBb0gsg9d4rjzxh9zOFiaY
	mAcAB+p5rL9idBNIFthQBv9nTXZDF0+LV6An4kmKPLqTORaiSR7802If5nSXKLv9kFqBb4sNc+uiC
	BnWZGHpfeCCxD4B1jnqSNUhin6EFNSeEZVJDziEK56iiBWtwsTVB1AGtVlH2/Dj9svWd+L1YyQdf9
	xioI/19MtWzBIhOivl/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTC-00E8u3-3D;
	Mon, 25 Sep 2023 11:09:43 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkjTA-00E8tV-0H
	for barebox@lists.infradead.org;
	Mon, 25 Sep 2023 11:09:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso763993166b.2
        for <barebox@lists.infradead.org>; Mon, 25 Sep 2023 04:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695640178; x=1696244978; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ba35ELbdiiGzti91zRYOtCgq2H9z6vwcPiPC34z9Gw8=;
        b=Q5drXdWjtZvBQDdCVmL+tMnM1N+WdhcHI1jIVipp41SCS9sHWzHHeo0uoyVDG13/r0
         Qvb0ldmCGpgzkX4/sDJHFP4yeYkAYNEKhjw5k4WD7A0jAX6nx6oIUuTVh0nYznkjMJyp
         cDQgtANjjELgd861T5RJmRUTmBaeOg9iiAabSJxu8S5/8MMS1umfnsK1fvtf+vf0iNyR
         62zMpTB2i8Hva/GqvbyFrBy+tettCBON04F5vkcUEL32vcpG2TVH/Im1ymSAT0gOkl4V
         IpyoC6X7NB+hH6LDTUFg6gzT9KF5q4XiYpZdzYuAQ+YXPx7eM1fgPTF8lhV74eZV3+CY
         T55A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695640178; x=1696244978;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ba35ELbdiiGzti91zRYOtCgq2H9z6vwcPiPC34z9Gw8=;
        b=KvlOr13IsMj/lITEMeshWszyZH+ssA+JAikCDxPpBKtXJ3uYFLtcjUqX1lFcmSLav7
         3aBOY3VKlcx3jpb2ayDw36U9L3IOj769FKUNNM6TNyePT8nJbLkYDcEvBDm+lg7R9Gje
         RmwIWLl1cmliyybFG94TcGvsIr5rxswRjDQraUQXlvEmldXHuZ05iueHd3M7r8xw7cEG
         xMBW6gbqGfu4Uk3b1DfH3glLDokrxtQwi9c39cnGUOlamxyUp4elnqprJZCEMUX+dWyb
         cAdPZTECLj1D5Z3qfPK4gGl2gYVs0w9G1Gr5mzHHskzudjQWbL94rNVlqIOo280YI8if
         NFbA==
X-Gm-Message-State: AOJu0YxCx7XF7Fpsb0XOfzddKhNnCJkjmTApYtpJUcihyGnE2dN9dlWm
	FyfM6r5HbZa+vCfw6HZhq60sMLcQZCM=
X-Google-Smtp-Source: AGHT+IFzZtwllwIVVu1T3+vxj8RgfgRss1Yv6B6sTnwGob9CyK9oP9CQjmhvlzBUCnJGEAF6NVOWTg==
X-Received: by 2002:a17:906:cc55:b0:9ad:e2c8:1741 with SMTP id mm21-20020a170906cc5500b009ade2c81741mr5044437ejb.58.1695640177826;
        Mon, 25 Sep 2023 04:09:37 -0700 (PDT)
Received: from lifebook.fritz.box (p200300da6717b70030ba293c6b339dee.dip0.t-ipconnect.de. [2003:da:6717:b700:30ba:293c:6b33:9dee])
        by smtp.gmail.com with ESMTPSA id j19-20020a170906051300b009937e7c4e54sm6175086eja.39.2023.09.25.04.09.36
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 04:09:37 -0700 (PDT)
Message-ID: <9282a3854372e58d9641993d5fb0bada29818415.camel@gmail.com>
From: Denis Osterland-Heim <denis.osterland@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 25 Sep 2023 13:09:36 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_040940_121580_6D38BCCB 
X-CRM114-Status: UNSURE (   4.13  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/2] raspi: pass additional VC values via dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v2: fix whitespace error, add acked-by of Ahmad, fix line of 80 chars

Denis OSTERLAND-HEIM (2):
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raspi: support to read vc values via dt-2nd =
boot
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raspi: fixup additional vc created nodes

=C2=A0arch/arm/boards/raspberry-pi/rpi-common.c | 69 ++++++++++++++++++++++=
-
--------
=C2=A01 file changed, 49 insertions(+), 20 deletions(-)





