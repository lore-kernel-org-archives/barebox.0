Delivery-date: Fri, 21 Oct 2022 11:55:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olokk-002k2z-7l
	for lore@lore.pengutronix.de; Fri, 21 Oct 2022 11:55:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1olokh-0000vr-J8
	for lore@pengutronix.de; Fri, 21 Oct 2022 11:55:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=AgJju+RpDj8W1lCTFj09vH7bKN0qd/ncK9b2MZ9XexQ=; b=ujijbUE5a1hwDZx5DPWMijv8r6
	Ybo4X0Xqx5dk4UkYv7mdViauqT+MoSoPC694Vtd9KO103c656861BfUwUar1Q6xaXCYF6f5+c+SfN
	1fC3oh6F0RHa689nbXtCyyCx1h78PogDF7r22Uut3m5O+nPFEQjPqUvS86YtBnZUvcBN81xraDw4F
	btJOIPJa/3OR0Y5bHs0UEpsvvdN4mP9HbHAm2QUZ0ykvGZATLNxR8rSqUg/EGIPFLgBoj9dGBMijc
	JTsHa1zU9qBjHhMmzUmWGRh0QYpQctghqi6uxWYROIRRJ5IXMSYmwDLOW9+sKzlQv/1ClgbifQ1V5
	8UvJx/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olojK-006uSM-IS; Fri, 21 Oct 2022 09:54:18 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olojG-006uQp-3p
	for barebox@lists.infradead.org; Fri, 21 Oct 2022 09:54:15 +0000
Received: by mail-pg1-x529.google.com with SMTP id h185so2090651pgc.10
        for <barebox@lists.infradead.org>; Fri, 21 Oct 2022 02:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AgJju+RpDj8W1lCTFj09vH7bKN0qd/ncK9b2MZ9XexQ=;
        b=WkJM4ZX1mcF2Q+VxYBGGcW6QePwwyA8UnSoCSqFzwIWHq4fr/S2xerR5lLE17T9ThX
         /AqHH/xpgVrM8M6QoB1AvXS3TcaGlSj3UphchW2Nn/UYdZP24saNTk9WBg23kiNWw4zs
         OsM3IrZMMPhJNbH2YyTcVTrS0JctgLJtK5MGtxLOCU2grbcaDUIc3Cfq7Lr5j3UtyVcM
         sNDnOPMpyUtuDDBRSjhfGO+ktTY+w45zs5NLobKq7T6VtjVoaTtQQ3bOVY//9zq4spXR
         FzEnHPguocpZd4ZzBNCyQCp/SR+E2HuiI8ALocT6O4pCI7+sHDiSkmihvdWisGry5h4D
         lSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AgJju+RpDj8W1lCTFj09vH7bKN0qd/ncK9b2MZ9XexQ=;
        b=Lb7jnn3QqftedC2RN6yeQzh/B/4yMVaR9RzYAcSltjZZN6FZi4+s6lguxFGclymZl/
         nGoNXat+6vF23rIwp12fQ+7ZW5VfDQpu+vras38W41PzcXknQVjl2Yz/Lc0+GAOLNqM1
         SY1pguT+N3W1iUiRhVji70LY8uGUV68a1WA953wvpIjq/VFkrDIGGrazs/Pj7WTwfVgo
         YYiA2C8hFMxRKxQ1gZjfoVvNZq1uTucBiHQZWJhgLMAYg4jeJr6Ybv3cQRAoXFaQhQ3s
         UdLXOsYLI9DacnpIa1tUI3jGVEF1fePzdE/WW1jwYCAwE8ulQolleHxqCnHZaE8Gv1X/
         kdww==
X-Gm-Message-State: ACrzQf15slXMA6+p+/fCAH402aMnd9GNqseg5z22ez4tzqjSRBNGjq6C
	X+Di6VtC2WCi5lYX6eB+qLcYfWCKVqjxPaOv0xhqSTLLgkc=
X-Google-Smtp-Source: AMsMyM53gTEywCSExV2YgnfOTvPtUoFookAYoZd/DGHVQUNaQR2Vj9YGuTf8aYaq8/W2nOqnIXij8b1iqBZ0WaHcwDI=
X-Received: by 2002:a63:c117:0:b0:46b:208e:fd76 with SMTP id
 w23-20020a63c117000000b0046b208efd76mr15748567pgf.577.1666346051327; Fri, 21
 Oct 2022 02:54:11 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 21 Oct 2022 12:53:59 +0300
Message-ID: <CAP1tNvRrPDLuzS3NSEO3DF4wF8NeXsoDiBh6hTCA5sxaKR1rKA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_025414_168012_A5862254 
X-CRM114-Status: UNSURE (   5.37  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: i.MX watchdog druver regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello!

An error occurred while registering the i.MX watchdog driver:

barebox 2022.06.0-00530-g31d9ff81c63c-dirty #44 Fri Oct 21 12:13:36 MSK 2022
...
ERROR: imx-watchdog 73f98000.watchdog@73f98000.of: probe failed: No
such file or directory
...

Thought it was the result of a patch "watchdog: imxwd: get and enable clock",
and added the line:
clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
into the beginning of the mx5_clocks_common_init() function, but this
does not help...

Does anyone have any ideas about this?

Thanks!


