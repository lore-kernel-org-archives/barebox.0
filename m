Delivery-date: Mon, 23 Feb 2026 15:56:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuXMR-004rfc-1h
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 15:56:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuXMR-0001fl-Rm
	for lore@pengutronix.de; Mon, 23 Feb 2026 15:56:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3U9GSp0sMx7nIEGQ+hcP3D8VAdld15N5KO0itpPJzeY=; b=g1/mFYzDCOBbppm8uS2f8DIiyb
	6D77nFdg5uYFJ5E26jm8Q6C5IubLL3ibmLYM8XP48ahjQgv8FE0+wp8BgbtVXLGZNFZDd7l2/6ZG4
	iGp/xBqUwUUDQAfhomLx3b6aamJIsxYAtx82liVR8pPMcRI+asNEQrZJDafB/k2KlZhfy5hSjyyIe
	Hqq/KEKbqPSjS2bOwPzY0s3jbyGpXX7MWCEohDIduEkWuzgI24zliHOL/BO085J6WwrLLLzvLnPN8
	halep4WEmnWYvxhpyFO/Qih6t42gWqzkObBBTED412L8hpmgoVwupI+frQmVjlRU4Pp7uGhX9rMa9
	rcd7EV4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXLu-00000000WOF-0B7Q;
	Mon, 23 Feb 2026 14:56:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuXLq-00000000WGc-2mC6
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 14:56:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXLo-0001Tw-Dl; Mon, 23 Feb 2026 15:55:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXLm-002FQ9-2r;
	Mon, 23 Feb 2026 15:55:56 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuXLo-00000003Cg4-0jg7;
	Mon, 23 Feb 2026 15:55:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260223113446.638135-1-a.fatoum@barebox.org>
References: <20260223113446.638135-1-a.fatoum@barebox.org>
Message-Id: <177185855617.763566.3940432182273955805.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 15:55:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_065558_727554_7C9E0ECB 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 0/4] MAKEALL: sanity check command-line
 options more
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Feb 2026 12:31:31 +0100, Ahmad Fatoum wrote:
> I watched how Claude Code stumbles to use MAKEALL correctly for a while
> and indeed MAKEALL could really use some improvement in user experience.
> 
> This series adds some sanity checks to make it more difficult to misuse.
> 
> Ahmad Fatoum (4):
>   MAKEALL: early exit if config specified, but no arch
>   MAKEALL: devel mode: abort if no positional config
>   MAKEALL: error out on options placed after the defconfig argument
>   MAKEALL: flock build directory to prevent concurrent builds
> 
> [...]

Applied, thanks!

[1/4] MAKEALL: early exit if config specified, but no arch
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec05602df38e (link may not be stable)
[2/4] MAKEALL: devel mode: abort if no positional config
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1cef49ae15a (link may not be stable)
[4/4] MAKEALL: flock build directory to prevent concurrent builds
      https://git.pengutronix.de/cgit/barebox/commit/?id=9fa9842b35fb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



