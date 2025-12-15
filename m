Delivery-date: Mon, 15 Dec 2025 12:19:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6bW-00BivS-1G
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:19:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6bV-0004X1-Rv
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:19:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zilvm5aptgmZJm3MLAqjGlAsnWt2HSi3I+MM6YH1VQ4=; b=C9ENd1/HDr1KwrFdgAK+FqMoMf
	HzuTULsC0fA/hudoOauNYEK3G9gLHJ0Lch4PJDZnmUqWP0nhwLM1uZg4NIJLT1kr0+C5gu18hwktZ
	fanebL9SNId7lWWK+OOqvzsrkcQBsOe8fQbQQG2KhlMaVTDwfDG2+xHa0Et0D/CTATX9PG6zFtVA+
	CYYnvxGzE3LdwCE8HHK43RMT+54i9bF/TOiOI7yN7/6DkDOVloobM9BWQq01sQDIj1e6dEnGKWS4P
	AyQiV5ApfQyV+S11F43oO3THIXg8xoWyohJmmYU5vrTrQsoId3gtr9lFW7Hzv6bK68hBZ+6EMA2+i
	W92iS9fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6b5-00000003Vkd-1SzA;
	Mon, 15 Dec 2025 11:18:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6b2-00000003Vk8-0GP8
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:18:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6b0-0004RC-9W; Mon, 15 Dec 2025 12:18:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6b0-005ltu-0K;
	Mon, 15 Dec 2025 12:18:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV6b0-00000001UMg-0AvA;
	Mon, 15 Dec 2025 12:18:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251215085237.2793823-1-a.fatoum@pengutronix.de>
References: <20251215085237.2793823-1-a.fatoum@pengutronix.de>
Message-Id: <176579751003.354995.14939381516281020058.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 12:18:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_031832_104885_A89B3FC9 
X-CRM114-Status: UNSURE (   7.85  )
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
Subject: Re: [PATCH] bootm: add os_type field to struct image_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 09:52:37 +0100, Ahmad Fatoum wrote:
> We already call file_detect_type() on data->os_header, but do not stash
> the result anywhere beyond a local variable in bootm_boot().
> 
> Let's save it into struct image_data, so we do not have to repeat the
> operation at other places in the upcoming EFI loader patches.
> 
> 
> [...]

Applied, thanks!

[1/1] bootm: add os_type field to struct image_data
      https://git.pengutronix.de/cgit/barebox/commit/?id=ebfb3ee2c8b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



