Delivery-date: Wed, 02 Jul 2025 08:14:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjx-00DD6y-2e
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 08:14:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjx-0005Wz-A6
	for lore@pengutronix.de; Wed, 02 Jul 2025 08:14:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1K2wS3MdRpQjtLHR6OTXoEAJP1fWMf4VCIkWt/r9zjI=; b=W+/vIAM+5cSfm8wCkSIekc180z
	wrW4lJKVbQ+ow2ivZAhfcXbEp9yJdK47VdqQ7cpnk1+sylHBdLV3qpe3TrNnvNdD0EhocS3Osfb7/
	feF5wXOOW3iTUrjrMii5wtHRhOS+uhUpE/uFb+SAcfcdn/0JV8GyywUwQG/xHphKgRhm0lGYFywl6
	ubQXzsgn7QKolYh1uiscKzFO3gFHwKzyjYgcSaEyFhj6Juxe8U+IuPaB1/xMIxWU3S6YRZ7w4H4M5
	aSpfbtn2bTnI8qSEG6gyia4rVwXzriXO4Avc8fQQQoGBXHGz1zkVsVRyLISP8LdiPzNRkkLakJtqG
	dJYnY/PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqjc-00000007NZj-2kHH;
	Wed, 02 Jul 2025 06:14:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqjZ-00000007NZ2-3zzf
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:14:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjY-00059u-QC; Wed, 02 Jul 2025 08:14:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjY-006OJZ-20;
	Wed, 02 Jul 2025 08:14:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqjY-00Fzic-1p;
	Wed, 02 Jul 2025 08:14:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250630080122.1441484-1-s.hauer@pengutronix.de>
References: <20250630080122.1441484-1-s.hauer@pengutronix.de>
Message-Id: <175143685656.3812157.9758024750795647279.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:14:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_231417_995041_B1EA5020 
X-CRM114-Status: UNSURE (   7.50  )
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
Subject: Re: [PATCH] common: PBL_OPTEE: Allow to compile in THUMB2 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 30 Jun 2025 10:01:22 +0200, Sascha Hauer wrote:
> OP-TEE gained support for jumping back to the normal world in THUMB2
> mode in commit 3d80ccc97 ("core: Allow non-secure context restore in
> thumb mode"). The first OP-TEE release with this commit is 3.11.0. Allow
> to compile barebox in THUMB2 mode with PBL_OPTEE enabled and update the
> help text.
> 
> 
> [...]

Applied, thanks!

[1/1] common: PBL_OPTEE: Allow to compile in THUMB2 mode
      https://git.pengutronix.de/cgit/barebox/commit/?id=94b33e217451 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



