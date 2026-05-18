Delivery-date: Mon, 18 May 2026 17:32:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzxe-001BBg-2D
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 17:32:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOzxe-0002Yi-2x
	for lore@pengutronix.de; Mon, 18 May 2026 17:32:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DlNouo3VDD3ZXNNMlDA8OfxE++OaMdyHxR+G7RzMsYQ=; b=It79ea2E4Xwkz6BuKf5NFfxTbM
	ejoKNKUW0kz25I3c6a7bKKRUYdgwJXjBR8S3OYRKfZ0V7MKETXu6oh59SxumrKR0DNOnYCvxpeWiE
	tZk8fpY+FCLbEx5c1PwZXraANLhXuOBMD568rJFBLKv+h9CSZ1zYESdXbw4gyZEa7iGlvi2m/ghCy
	qNDUDTyuQAvNkd1+ddJrV9tMuZ7A0adSNUyMPRlmHd/c3TBQ1CxX82apyQUx3O89IZoTabqme6674
	cmaSs6rJNdaENTfg64sAbGEqcQ5z30PXILinAoi5tYKjAgTTzv/qy7bxZbiuBN82ZYFsW7YolSR3F
	NY3U4plg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOy5u-0000000FpJt-04Qb;
	Mon, 18 May 2026 13:33:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOy5r-0000000FpIq-2ObO
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 13:33:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOy5q-0005C9-4f; Mon, 18 May 2026 15:33:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOy5p-000bSy-1g;
	Mon, 18 May 2026 15:33:14 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wOy5q-00000000AmW-08JP;
	Mon, 18 May 2026 15:33:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
References: <20260518-k3-am62x-image-size-fixes-v1-0-ab723d79922d@pengutronix.de>
Message-Id: <177911119402.41401.13308795856639038148.b4-ty@pengutronix.de>
Date: Mon, 18 May 2026 15:33:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_063315_625724_CB16938C 
X-CRM114-Status: UNSURE (   7.94  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] k3: am62x: image size fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 May 2026 11:26:37 +0200, Sascha Hauer wrote:
> With the current configuration the initial barebox image for the AM62x
> is limited to 0x3a800 bytes. the current image fits well into it, but
> Let's make a bit more space available by moving DMDATA up to offset
> 0x3d000 giving us another 10KiB for the initial barebox image. Also set
> CONFIG_BAREBOX_MAX_IMAGE_SIZE in the k3-r5_defconfig to 0x3d000 to not
> exceed this limit unnoticed.
> 
> [...]

Applied, thanks!

[1/3] ARM: k3: am62x: move stack to end of SRAM
      https://git.pengutronix.de/cgit/barebox/commit/?id=a117841b9b9a (link may not be stable)
[2/3] ARM: k3: am62x: make more space for r5 barebox binary
      https://git.pengutronix.de/cgit/barebox/commit/?id=14a7948a067e (link may not be stable)
[3/3] ARM: k3: k3-r5_defconfig: limit image size to maximum available space
      https://git.pengutronix.de/cgit/barebox/commit/?id=6446c59dbc5d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



