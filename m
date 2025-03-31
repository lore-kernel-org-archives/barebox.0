Delivery-date: Mon, 31 Mar 2025 09:30:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9bA-006Tbe-00
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:30:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9b6-0005TP-ST
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:30:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5b6FDqDiT5FKMZBs9sC5uIkvY6fO80BR1/AWPOYun+U=; b=t38jKRJykF4oAI2Sh4YP8uU1ba
	RBSQwYr7W5tU1Xeh7HOHNZ8eu7D9N1zjUHGt/7fSZ9hKYQ/kDI/dXMeSO5vxaB9CVjKOnIJ9DHREg
	9MKQFwc15xrXhCJusjtPn5HcEKT+a0R9dHHjGWsnib3IoucmWSwq+UYpQv9Oq30QvaiVTzNb+HVSJ
	w8cmcg2UDg0AJ9jScF88Bi7WSXtgi6+nhdr6M9rzfuPdjEajmnX0QmxcTG9NDTAz2T1BcGZeb7Faw
	jWGoZfJw6ZWjykQZwEMOMgZiWLkcD0O0+iXYI23q+a7sSe1j1PurpqVMZdfiayns8YzWc8iiRVP5m
	67mml7hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9af-0000000HChR-1AHP;
	Mon, 31 Mar 2025 07:29:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9ac-0000000HCfv-2qhh
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:29:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-0005IK-Hs; Mon, 31 Mar 2025 09:29:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-002YUH-0t;
	Mon, 31 Mar 2025 09:29:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9ab-001IdT-0g;
	Mon, 31 Mar 2025 09:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
In-Reply-To: <20250327100044.654042-1-robin@protonic.nl>
References: <20250327100044.654042-1-robin@protonic.nl>
Message-Id: <174340618520.309912.2551825977733178218.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:29:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_002946_719990_095EB060 
X-CRM114-Status: UNSURE (   7.48  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: boards: protonic-imx6: Add prt-usb as fallback
 preferred boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 11:00:44 +0100, Robin van der Gracht wrote:
> If i.e. the bootchooser target fails because of missing or broken follow-up
> software, instead of doing nothing, we try to boot from usb.
> 
> 

Applied, thanks!

[1/1] ARM: boards: protonic-imx6: Add prt-usb as fallback preferred boot target
      https://git.pengutronix.de/cgit/barebox/commit/?id=a30704b88a29 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



