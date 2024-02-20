Delivery-date: Tue, 20 Feb 2024 08:19:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKPt-00Fi8m-20
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:19:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKPt-0005HQ-3N
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:19:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sfj2sVb65x2Q324DPh1xbo1K+AWC3RBj8cEpPdCU2cs=; b=W7p7xc+FR7IcDsLVDhhDZUxV5n
	xB4Ieg4ib8tFg0r8hL6QgbEHqyJk661oLFoBlBLIfiT9ZgUpPsTQpe+kh9dHF9JvKXyO5MH25gBq3
	iEJfmBmgMGszNyyPg4ToM6HMkZa963tg5Up6+YvpZuMnPVjX31MQa/+3tiszlSs1rpA/aCvuGPtEV
	SyNen0v3MZ05k/5+wUZQ9BwGInNmAKJGDKLwc+/YJV99PShnfsJLcSIQ88UxqNa0JtpbtAp2CJAv3
	pzo0PF0XOiXMB18VzVnOPUXeJIXWfObedAnQ0X5tEUgxAyw31sdL9wcAoIy8Csx65Uo9G7dQac4Nh
	DhySpcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKPT-0000000DUjn-0vgZ;
	Tue, 20 Feb 2024 07:19:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKPP-0000000DUj2-0r88
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:19:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKPN-00058m-TR; Tue, 20 Feb 2024 08:19:17 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKPN-001nbL-Gy; Tue, 20 Feb 2024 08:19:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKPN-001o3U-1U;
	Tue, 20 Feb 2024 08:19:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219172108.3780861-1-a.fatoum@pengutronix.de>
References: <20240219172108.3780861-1-a.fatoum@pengutronix.de>
Message-Id: <170841355745.430661.13839065986991359785.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 08:19:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_231919_278984_9AFD6E36 
X-CRM114-Status: UNSURE (   7.21  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: core: replace calls to strerror with %pe format
 specifier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 18:21:08 +0100, Ahmad Fatoum wrote:
> printf(), and by extension dev_err(), already has built-in support for
> formatting error codes, so make use of that instead of manual use of
> strerror().
> 
> 

Applied, thanks!

[1/1] usb: core: replace calls to strerror with %pe format specifier
      https://git.pengutronix.de/cgit/barebox/commit/?id=ecab0d0bc4c9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



