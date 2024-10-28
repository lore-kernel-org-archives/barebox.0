Delivery-date: Mon, 28 Oct 2024 13:32:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OvD-001r2i-1L
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 13:32:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5OvE-0000Qe-0o
	for lore@pengutronix.de; Mon, 28 Oct 2024 13:32:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ML/e0akD5XhpxJAN0zvQeljumdcvM824BcB9MSJ8U0=; b=Z6dsU8s8vPIYo44bvCi/2KvU6f
	QenGSxpqZ2nvLSzkMFqYYf0qx1rRJsVbJfymah3J86jb5lDMtnOTVDlFa6OY9Q6PQOa+36sFbFvHJ
	ByADZXE5ymWUL2D5DIoG+KFRh98Cn3UzyI92HOsZm65yvNFfYAaKffC+/fEdBoTXXESr3eC883gdn
	F3DSjQ+xnKEKmIJWOae2Wx6yurOMFhJgCp9g2Y1A2kNQhJIabaxMiBUmoNqaG0Q4W31MhJAYt1d0F
	iY3kkOgQ6QjTZE6kwQAG8pAvi5C9pOw6jGoqgTJD5DV+xhBVAzqgaSMQq83dmPc5AXn7LBD6lG3c2
	DAExud9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Oum-0000000AlLD-018K;
	Mon, 28 Oct 2024 12:32:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Ota-0000000Al6I-2wh0
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 12:30:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5OtY-0000H9-Vr; Mon, 28 Oct 2024 13:30:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5OtY-000qcq-2Y;
	Mon, 28 Oct 2024 13:30:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t5OtY-001Lfq-2L;
	Mon, 28 Oct 2024 13:30:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, alaanourali@gmail.com
Cc: A.fatoum@barebox.org
In-Reply-To: <20241027081753.256921-1-alaanourali@gmail.com>
References: <20241027081753.256921-1-alaanourali@gmail.com>
Message-Id: <173011865272.321604.779628339093166964.b4-ty@pengutronix.de>
Date: Mon, 28 Oct 2024 13:30:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_053054_773779_12AF8FB6 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Fix unresponsive SDL GUI by handling SDL_QUIT events
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 27 Oct 2024 11:17:53 +0300, alaanourali@gmail.com wrote:
> The SDL GUI in the scanout function can appear unresponsive to the
> operating system, as it lacks an event handler. This patch adds a
> new function, handle_sdl_events(), which processes SDL events to
> ensure the window can respond to close requests.
> 
> This addresses issues where Linux might think the SDL window is
> unresponsive, allowing it to handle SDL_QUIT events properly and
> initiate shutdown.
> 
> [...]

Applied, thanks!

[1/1] Fix unresponsive SDL GUI by handling SDL_QUIT events
      https://git.pengutronix.de/cgit/barebox/commit/?id=231c906e52df (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



