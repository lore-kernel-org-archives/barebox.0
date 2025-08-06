Delivery-date: Wed, 06 Aug 2025 06:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWBz-007Wpa-2Y
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 06:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujWBz-00059L-9H
	for lore@pengutronix.de; Wed, 06 Aug 2025 06:55:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EyD3OI/nazLlctddERccq0+dm/blwFG2BcU/Y5Jyi78=; b=TVA46wdG2KnY2D08QiopIEezQy
	eC/yJN1gfdt0aIvnLDOW6+/yTtVHA2aba65SWjrx+l6Kdegenj8e5oD4aGYHN3x69A+Mp/HN3z2CS
	ey6aZs0L/gzoP3m+xbqYXvbKqtA0aYSn9E2nqguzUkeQ/IM+Ay6s9WIc82QqXkynNjsYMVRcMguol
	fNtmYLVA1cOxS8EzLhyHGfNd25lE8m2ftFo2J4iJnhbYGVYkiO1uXxpAaqeGAAOmRDydo25qmKy3+
	ddjW1GU8qtt6MkSyfP6umhXZPFHkA/gGn3oxg96mwj8LKOxRV8TfrQoyhnGubD2nd2Hzg90+1XiZ/
	R9kZ/fBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWBa-0000000EIUi-25b4;
	Wed, 06 Aug 2025 04:55:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujWBX-0000000EIUD-0Xr2
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 04:55:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWBW-00053l-0l; Wed, 06 Aug 2025 06:55:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWBV-00C9Wn-2i;
	Wed, 06 Aug 2025 06:55:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujWBV-000hbm-2Y;
	Wed, 06 Aug 2025 06:55:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20250805-fix-dwc3-dr-mode-v1-1-86dda9815c34@pengutronix.de>
References: <20250805-fix-dwc3-dr-mode-v1-1-86dda9815c34@pengutronix.de>
Message-Id: <175445612978.166869.2961812608965209685.b4-ty@pengutronix.de>
Date: Wed, 06 Aug 2025 06:55:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_215531_170471_2A5D4F04 
X-CRM114-Status: UNSURE (   6.75  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: remove CONFIG_USB_ROLE_SWITCH in condition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 05 Aug 2025 16:38:48 +0200, Stefan Kerkmann wrote:
> CONFIG_USB_ROLE_SWITCH is only defined in the kernel and is always
> undefined in barebox.
> 
> 

Applied, thanks!

[1/1] usb: dwc3: remove CONFIG_USB_ROLE_SWITCH in condition
      https://git.pengutronix.de/cgit/barebox/commit/?id=fcd07ec1ec58 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



