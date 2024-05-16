Delivery-date: Thu, 16 May 2024 09:18:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VOD-00Gv5N-0l
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 09:18:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7VOC-0008E3-MR
	for lore@pengutronix.de; Thu, 16 May 2024 09:18:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=veDuM8wgYXu5Jlhtk0d9NLNdxEIawfD5rIP6dxz/GRY=; b=A/u28dKetI7gK38fwHoXsKYg14
	Bdv6ao0sC6M9YlGAp/xErZJepnbNSh7rskrfPFk4MtHwqAeWcuHYSyz3ptzjqnVCQkHUjQYvpfsQt
	4eibiBZ1GKQdYyzkZVRszDyc1QpFdKBavPaki/kAXR3Z+toCdBVhlgMzS15G0dKHUI6c7Ej93ih2P
	leIKwxS2dI8kTjrnNZwQOupDHXCrpDlaD+lK/D9cvGIJbBntqIWo958f3Dw/gTDiFSMtUqqvKR8HA
	l/jDFglOdJvdMNfiXHDCKlI9AdMkWp/N0TEpKrZTKSOYYDQfv5xeHL8kdfxdlvS0q05EagLLLFhpA
	fOdZtfyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VNo-00000003xsy-1Wgu;
	Thu, 16 May 2024 07:18:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7VNk-00000003xrN-2LiK
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 07:18:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VNj-00087q-6N; Thu, 16 May 2024 09:18:27 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VNi-001fm3-GS; Thu, 16 May 2024 09:18:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s7VNi-00BXUT-1Q;
	Thu, 16 May 2024 09:18:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
References: <20240515060736.3580327-1-a.fatoum@pengutronix.de>
Message-Id: <171584390643.2750320.15869730647617108140.b4-ty@pengutronix.de>
Date: Thu, 16 May 2024 09:18:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_001828_639148_D3956B72 
X-CRM114-Status: UNSURE (   5.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: boards: wolfvision: use state_by_alias instead
 of opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 May 2024 08:07:36 +0200, Ahmad Fatoum wrote:
> This introduces no functional change, but makes code a bit more compact.
> 
> 

Applied, thanks!

[1/1] common: boards: wolfvision: use state_by_alias instead of opencoding
      https://git.pengutronix.de/cgit/barebox/commit/?id=6b1df8b8219d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



