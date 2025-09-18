Delivery-date: Thu, 18 Sep 2025 16:23:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFXn-004V2l-2B
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:23:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFXn-0000hV-5d
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:23:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SCpy0/GRO1/vHExGcUMm71zChaxTdFtQHmfsTm5G798=; b=TW+UbqlUSBl4a77nAzz16ZMqdd
	l7vC80NXEt279bNb23w/HKZJKZhdnnzIa8ciXYawI6CiuMIvzfHFphYPMuXvSgqyUJh3LUUUe8CY1
	2d28QMBsQwTlKRyzFfDhomOjrHepzRwmFyBcwB3rvVZKHrc+uEIBg52kyVbYmkMtn+wVYmZpxFHlx
	6DXUU2/Y3kH5WHW2lmXkfPfhlsspQz5haZAYP4RpkvQIF1HLQW7wYhkSJy1BnR67w9macXpH6Wcaw
	Z8Tx1GTGhrnDfWHBA6W+nIgNpeWFRqxNiORzMA8Ysxv6pxZ2YJmbQXCW1N+hBxqUH6gQIOCBIuAUx
	y6x3IFcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFXN-000000007ZZ-1Oc4;
	Thu, 18 Sep 2025 14:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFXK-000000007Xy-34fl
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:23:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXJ-0000a9-Ak; Thu, 18 Sep 2025 16:23:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXJ-001xEG-00;
	Thu, 18 Sep 2025 16:23:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFXI-0000000EPM1-3xRR;
	Thu, 18 Sep 2025 16:23:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250918093613.168067-1-eagle.alexander923@gmail.com>
References: <20250918093613.168067-1-eagle.alexander923@gmail.com>
Message-Id: <175820538093.3434038.11024490665012466766.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:23:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072302_773061_05335650 
X-CRM114-Status: UNSURE (   7.06  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] [PATCH] Revert "ARM: at91: choose proper parent for
 both MCI clocks"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 18 Sep 2025 12:36:13 +0300, Alexander Shiyan wrote:
> This reverts commit 238cf3326ac1ec009173c85fa664889d5cb57bdb.
> The patch is no longer needed after commit:
> "clk: at91: sync drivers with Linux".
> 
> barebox@Mega-Milas SAMA5D2 EVB:/ clk_dump -v
> ...
>             utmick (rate 480000000, enable_count: 2, enabled)
>                 sdmmc1_gclk (rate 240000000, enable_count: 1, enabled)
>                 \---- possible parents: slowck mainck plladivck utmick masterck_div audiopll_pmcck
> ...
> 
> [...]

Applied, thanks!

[1/1] Revert "ARM: at91: choose proper parent for both MCI clocks"
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b076361ff43 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



