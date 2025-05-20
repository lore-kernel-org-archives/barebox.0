Delivery-date: Tue, 20 May 2025 13:26:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHL7V-000oos-2L
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 13:26:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHL7V-0002Iq-70
	for lore@pengutronix.de; Tue, 20 May 2025 13:26:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iIkbBc09fcn+4WextCoOicuQEgV+PqPwr9FHJYKEhS0=; b=UgstC02VpcKQOH/G47T2fxIkt7
	DMsHyFnWNX978t2F3SvNTuefGdflD+rxzY+N/xoJEenSyL048JHjbTGggjMmjezHiJU9GQglUpVtL
	gST9Kf0AkooDaL+uGEWqg05ymwTMHIPoqmGZBPLR0OudbyxG8CCSZ6kRtBNxRP8EnPZ2txW7OJqeX
	u0r9g8nmuLiVFPFX3bzTZbNhhIqHUvQpH/Zt1KX8tU9A+1Sn4uACqpj1iDIB/thQmrdUhBpMklMzO
	zDYlOrv1eXTqQFs8BOIAetH4yGIAjH0ZXIAObo3xrWiGVRcFdiBoLcmfAy1+04HScN4le0NS47Kc1
	Y4sx7YGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHL76-0000000CdIZ-2Bgu;
	Tue, 20 May 2025 11:26:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHL5R-0000000CcnD-1pj0
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 11:24:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHL5Q-0001o0-BF; Tue, 20 May 2025 13:24:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHL5Q-000OvW-0U;
	Tue, 20 May 2025 13:24:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHL5Q-005r2m-0H;
	Tue, 20 May 2025 13:24:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
In-Reply-To: <20250520091228.119392-1-s.pueschel@pengutronix.de>
References: <20250520091228.119392-1-s.pueschel@pengutronix.de>
Message-Id: <174774028408.1395523.5919025482069856685.b4-ty@pengutronix.de>
Date: Tue, 20 May 2025 13:24:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_042445_473425_FE92749F 
X-CRM114-Status: UNSURE (   7.56  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts/make_fit: move the dtbs to the start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 May 2025 11:12:28 +0200, Sven Püschel wrote:
> Move the dtbs to the start of the fit image to avoid u-boot overwriting
> the dtb while relocating the kernel image.
> 
> Using a current u-boot master eeb5ff1a468b ("Merge tag
> 'efi-2025-07-rc3-2' of https://source.denx.de/u-boot/custodians/u-boot-efi")
> failed to load a barebox fit image on a Pine64 Rock64 board:
> 
> [...]

Applied, thanks!

[1/1] scripts/make_fit: move the dtbs to the start
      https://git.pengutronix.de/cgit/barebox/commit/?id=59458c979d6b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



