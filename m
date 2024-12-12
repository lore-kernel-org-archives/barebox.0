Delivery-date: Thu, 12 Dec 2024 10:06:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLf9s-00783V-1t
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 10:06:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLf9s-0000Mq-I6
	for lore@pengutronix.de; Thu, 12 Dec 2024 10:06:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VJizNuDDaoyXVb+gvNgx5FKKPTRKzisILcTx6RY8brE=; b=SbG23CQJgAbLTMrLu7+ymuA1zv
	8Y0BYctT2ZkelPlLHDs20UlWWWwbmMSzKxas36YZM1glvsuVU7jzMmKA/vreIx81satA7TyDLbQUv
	+3AoIryrZ21wTj5jLkCIngm30lHn9y/1+5hTu7lrzf0z723Ys4QbRsrzOnjwvURenDyomsCHN3jQn
	mSWAnRcTVdkh4sGr1cV06hhIhp21Qnw9ImGl2EKOobALTWpKwbkUeL0I12bkiokjtITqIGrIgew53
	722n7fwFSTyWev8w99DZzfjSPpjzMOcTXEXtXkt2VoSehYbOZ3uDFp3i8w2v3Mcr885tNNbguzpKi
	D/TudiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLf9U-0000000HQOi-1hnV;
	Thu, 12 Dec 2024 09:06:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLf9S-0000000HQOJ-05Cp
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:06:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLf9Q-0000I7-Ix; Thu, 12 Dec 2024 10:06:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLf9P-0030RE-22;
	Thu, 12 Dec 2024 10:06:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tLf9Q-00GG2Q-17;
	Thu, 12 Dec 2024 10:06:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241210080403.1235658-1-s.pueschel@pengutronix.de>
References: <20241210080403.1235658-1-s.pueschel@pengutronix.de>
Message-Id: <173399438834.3874400.15508538416864722773.b4-ty@pengutronix.de>
Date: Thu, 12 Dec 2024 10:06:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_010630_054614_4D9B639A 
X-CRM114-Status: GOOD (  11.16  )
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
Subject: Re: [PATCH] video: mipi_dbi: don't send image before
 initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 10 Dec 2024 09:04:03 +0100, Sven Püschel wrote:
> Don't send an image to the display before it is initialized, as it can
> cause a broken image being stored in the display memory and being shown
> while initializing. Instead just damage the image in the flush call but
> avoid writing the actual image.
> 
> This problem was experienced with a ILI9341 LCD driver and calling the
> splash command before enabling the framebuffer. The splash command flushed
> out the data, but given no initialization, they were misinterpreted.
> After enabling the display, it displayed the broken image for a short time
> before being updated. This caused a flickering effect for the viewer.
> Switching the command ordering also fixes the problem, but sends an black
> image before the actual splash image.
> 
> [...]

Applied, thanks!

[1/1] video: mipi_dbi: don't send image before initialization
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7ae043343c8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



