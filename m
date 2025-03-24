Delivery-date: Mon, 24 Mar 2025 09:30:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdCG-003Vwx-2U
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:30:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdCF-0005GF-LL
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:30:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mDcdzURq2LA3aDLJqsKCCBlAFvW7FaMG9a6ccSfeO2E=; b=hLG20HFqnbQesTbS9Vfs6Z8ypz
	fDZA8BUstmKZx3cJI5rplkZ8wHh34kEwHpnesX1VaHn24cbCL5pCOga0x8BZmIoAa+5GuEIOjcJNZ
	8QrCuPME1aAKz6nUfGXdbKX45be083HssEVgyKhfZoMFBbPH7X6ytCYhtH3GXND8BaFczlf85IQEI
	mLwqGW1ZWzi+XQQN8qQQLDQaX+Xkq1BhOJggcbNOWS1cNP/bk42vhwC/wA1HYSBiCdKq02MhS26NI
	LkAC5t5SqXuXedqku2qLzeqabS/XTK/8Kigsyv4EeQfVwsVDNZgFqJwjRHugW8Iy/8+usFIaOD0SE
	UhtGq+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdBn-00000002aH2-1VEW;
	Mon, 24 Mar 2025 08:29:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdBl-00000002aGP-00gX
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:29:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdBj-00058z-JF; Mon, 24 Mar 2025 09:29:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdBi-001NVk-3B;
	Mon, 24 Mar 2025 09:29:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdBj-007ALj-16;
	Mon, 24 Mar 2025 09:29:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250320203057.3417065-1-a.fatoum@pengutronix.de>
References: <20250320203057.3417065-1-a.fatoum@pengutronix.de>
Message-Id: <174280497933.1707926.12649316301627767632.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:29:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_012941_042976_F6210022 
X-CRM114-Status: GOOD (  10.04  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: ssd1307fb: set default mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Mar 2025 21:30:57 +0100, Ahmad Fatoum wrote:
> The framebuffer support will refuse modification of the fbX.enable
> parameter if there are no modes. The ssd1307fb is the only driver
> that has no provisions for populating modes and thus always runs
> into this case.
> 
> The display is normally used as a small framebuffer console and the
> frame buffer console support will call fb_enable sidestepping the check
> in the device parameter, which caused the issue to fly under the radar
> so far. If used without framebuffer console, however, the problem
> becomes quickly apparent.
> 
> [...]

Applied, thanks!

[1/1] video: ssd1307fb: set default mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f39c0443fb2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



