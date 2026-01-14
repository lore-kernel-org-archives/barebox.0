Delivery-date: Wed, 14 Jan 2026 17:39:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg3tp-001INQ-1l
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 17:39:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vg3to-0004du-K1
	for lore@pengutronix.de; Wed, 14 Jan 2026 17:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-Id:To:Subject:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZRG7TUW4BTXpe22CXuKWaaDpFP3f88DyD6eZVfPVYQg=; b=0zd6mIEcWVpA27Oilgb3PFVRws
	QGy/tiRxX0SwJ/3mevvkCJLxG6ErsYoh/TetBORq5Iz2dapLdiKX2JcNpiUEO69qkpyEWBaJyBKxn
	ob2GaC8Yxu3ch1vn3RV/DmPJUyIw95vq2BqB02B/2HoSJG8KcQTIQVTONpVXjN0R0vGY4EtJ7Bdlc
	R1sK6p1ZGISWxzlufgEIKENnf3wL10o3O5Xy7Au9zsQozV51Qqa5j8V1AzzduRYJLnkT1QBBGnJWL
	wW7n+T+gd2DcRAUBtXS+CUfGWPvUdIWo48+WeYjeZ0NY3sUIEKBgC3w5jksZQSB5zbGPztRNMut5E
	2gU0nMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg3t8-00000009x8n-305T;
	Wed, 14 Jan 2026 16:38:30 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg3t5-00000009x7w-0bFP
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 16:38:28 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-b8765be29d6so7593866b.0
        for <barebox@lists.infradead.org>; Wed, 14 Jan 2026 08:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768408705; x=1769013505; darn=lists.infradead.org;
        h=mime-version:message-id:to:subject:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZRG7TUW4BTXpe22CXuKWaaDpFP3f88DyD6eZVfPVYQg=;
        b=LDNpmptu7PrpHuKR2jhyzFUyqEz37N5saPvgwCiL7FGqXnTqQv7fdtXtERQzVX2HUV
         8KhnpWulGoQHUOLeE/Kn7GS86cUQoYsOnwtJk7oKa8vUO+YUS1Dz4Fs+AREzYp43nuAN
         efWdPLxtFcv2/wOkHpIONubKzjbiZpN9iU4dMe2iN5eEVijPpIcs23VflVHqkkKVbD2W
         rhu/ooOoMpvDafQjtNrH53xCk40YGNMgyVBp6XbhKzPSA1gkeFqr+2F7YsMReiJu6NW/
         Xcd26cKr7dGskqqAe3i5x+iBlES8vVPRf6Z0pBAB7X4zk0uKZfFWtPx+3mkEybV07KOy
         A8tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768408705; x=1769013505;
        h=mime-version:message-id:to:subject:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRG7TUW4BTXpe22CXuKWaaDpFP3f88DyD6eZVfPVYQg=;
        b=JjVuDplkXgr35F9cwMG1O1ryxnJRkq+P2BICRqokAzdzVvPBIxOIff6/M45uKKMc8x
         Jea5JrvdnpUFBK/KXwTCrkdfeyzp9m3TiERL6BrKr+IFXQDq0z3dxWtqqfbG5lEI5pTa
         EPoQHukIMgr0LW3xWEz9eEtor0YFag4k6xLKzDE3kXExH4SvWcU/0boAvMtr4swWv41s
         xp2eNtFn+lutyug5G3jK6iyGJ+SeB66xOCTkYdFEWatnkc726D+URYfgffEI0JZ/Ux60
         7CARkapCnUH7ZYOMx8x0CXPcBp3JUgpaAvbNCA9Q5VkDtnURJIsBopXqQ5FdCKMABH7t
         1n3w==
X-Gm-Message-State: AOJu0YzLNR0Oc7SoOly0SHvlJv+w0g6IgntX4a9pw2wUpA72c1dQ6Fx1
	UzIQWgdKn4yPqYtcFyhIjZPCRvoj/40TS6jidizx+335TBenK38xXXFgKBvDyg==
X-Gm-Gg: AY/fxX4cmVhCYEn8Zk5TFYnQrZkpWy39zeoCmhl+gJjyMdlA2w6n76TRHe3oo6ytbhL
	yuF4l/OtnfNLKKq2t2iBg7p5sADx1sZreY9u/YXpcpq10xuZS7Qa/wlmNXtkl8E0fi1fN5XK+lb
	RMUbeHKV8bJUn9/2Bquxtg2M4jDGef1JIOjG22dqdYJoy1S9Tx+i7lWQ/20Z0g1k0FDUNQXpM0R
	BTIrbwrzXRMOa5W4pRtZsmN61VO6IOlN48ZjGT206PMAh4YaKYUmRpXUvrj57cKKbu+E3/LUCmT
	17asEc/gg8nXimMWwnTcwQ4aAi8sRWGr7ZrJ1mqqA9zPdfLtjY99FwWK4uu+OrzhGlPvoPIlHpb
	UoCxaPRufj0GFlzZyytWcd4D6puyCMRO0iLaUW4dxwjvWWrxluCHOzfaEiPq/RHkbOEqfsC3yZ2
	fa0Wa5ZmBLshu3HxXwJv/fgsKuAm67MNTSTl6GyHiIxIxbqRnJ
X-Received: by 2002:a17:907:6ea6:b0:b80:2315:b4ca with SMTP id a640c23a62f3a-b87678c0098mr244499866b.46.1768408704532;
        Wed, 14 Jan 2026 08:38:24 -0800 (PST)
Received: from [10.74.67.10] (93-44-24-203.ip95.fastwebnet.it. [93.44.24.203])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86fc303d7esm1458002366b.2.2026.01.14.08.38.23
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 08:38:24 -0800 (PST)
Date: Wed, 14 Jan 2026 17:35:48 +0100
From: Stefano Manni <stefano.manni@gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Message-Id: <OR4V8T.50BC0FSNYML@gmail.com>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_083827_187284_99498B38 
X-CRM114-Status: UNSURE (   5.77  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC] board imx8qxp-mek
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I'd like to add the board imx8qxp-mek from NXP.
Since the SoC is already supported by barebox, it should be quite 
straightforward
to add the new board but I need to understand if the starting point is 
u-boot [1]
or something else.

Any comment and recommendation is appreciated.

[1] 
https://elixir.bootlin.com/u-boot/v2026.01/source/board/freescale/imx8qxp_mek

Thank you.
Best,
Stefano




