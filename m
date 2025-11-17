Delivery-date: Mon, 17 Nov 2025 12:44:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxf0-001xmu-15
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:44:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxez-0000uV-QB
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:44:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2qEPEFg+1DoP38E/mWG/wu9p3PvNi076AMttT3THvIA=; b=d9ZIlsycBCb1tSaPfBa54lZcEU
	kY6VK4jPA+nPp7/FlltFcQl+H4WSfb+y+G8g8E24Rj3SZlm+LygIvXLPGJMvSZev62QfUWmji4Wyj
	g24TCGx/lSwEIVggqPE6+MvsToNHo76UR1ru/1x7hxF24oX5RU/K8i+4LpEGb6gf2bYoFOjojB0Db
	ItZFJsde2OsZpHd+F81xwr/5DGniife8WqhODvb6pMvceOpgSnzcgdqLbdL+OB74X34ipD2NpMMEL
	RJJRoDhTzQc8bGQMoLZpD4wh27TGPqJJ4Grben6wAtHwS7tP9ipUqMgT4DxOuxrIYz1HFtY1zBwt+
	SmpWCk0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxeV-0000000Fzuk-2sel;
	Mon, 17 Nov 2025 11:44:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxeS-0000000FzuQ-19Mn
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxeQ-0000p0-5e; Mon, 17 Nov 2025 12:44:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxeP-000u7v-3C;
	Mon, 17 Nov 2025 12:44:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxeQ-00000005ZmW-1ZmU;
	Mon, 17 Nov 2025 12:44:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
References: <20251107213752.3547508-1-a.fatoum@pengutronix.de>
Message-Id: <176337984592.1329129.440450318452303501.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 12:44:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_034408_322731_C2CD4D9C 
X-CRM114-Status: UNSURE (   8.18  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] bootm: allow custom struct
 image_handler::check_image callbacks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 07 Nov 2025 22:37:47 +0100, Ahmad Fatoum wrote:
> uImage support used to be very intertwined with the bootm code. This
> changed now, but we still have uImage specific logic in
> bootm_find_handler().
> 
> Instead of push more image format specific logic into
> bootm_find_handler(), let's allow bootm handlers to specify a "full
> custom" check by means of a check_image callback.
> 
> [...]

Applied, thanks!

[1/3] bootm: allow custom struct image_handler::check_image callbacks
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e95dabb4d06 (link may not be stable)
[2/3] efi: payload: bootm: allow compiling without FIT support
      https://git.pengutronix.de/cgit/barebox/commit/?id=2756b0efd6b2 (link may not be stable)
[3/3] efi: payload: x86: make handover vs startimage a runtime decision
      https://git.pengutronix.de/cgit/barebox/commit/?id=9caba43d4d59 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



