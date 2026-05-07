Delivery-date: Thu, 07 May 2026 12:40:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9b-001vy4-0M
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9W-0001jv-4l
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wtNIGKrien5JXo1QTxaAo1a+yKMjKAfeWgIZnq4UM5o=; b=nttAxSReF6aq5I0sCtWXSeLPc8
	HBccrXCzCBs7W527rH73EFd0yJB+pzpG5xWrfJyt1ICgQZmoa1ZUMU4jvv9ZhjlgaPF4OGEDqr/Tx
	rHnbGo1KPx5TCSAHbkl7Fl1uU4rrByPzQxtekJ0e6QzF88uR6lGgp9Q9UQdhSQBgmcEZQf4AFDzf0
	BTSI3xnMX5giYod8nhWksqtDTnTTizKSR2/bDSBfQXddWrJnhMMHm61+POL/z07gS5eMBuZJr0oQJ
	NJ8swBpOc0S6DjvZEFKHLt7cTUW6UNitY5CrCauWwJcWlqEx6G5zVcXrGEHPT6heY/JNkF9IFHIEG
	6930joEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7w-00000003Vjj-3Xwu;
	Thu, 07 May 2026 10:38:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7u-00000003Vhs-0r8p
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=wtNIGKrien5JXo1QTxaAo1a+yKMjKAfeWgIZnq4UM5o=; b=XlRVWSJfOiWIKHW6VRkDypaX5p
	+HDsdgcNKnBVhznqNHh3YsIndRbMvINOgkayC95cCkTwBS9xF/bQyG/R5VfX0U7MHvYTrYQWl+O4d
	yKff3ksBbAK2ZYzvFYi7FJ9dcMKFxpCK9KolDz5SrkCb2z4i/aMpUyrZR7XV1bx/y0hr3ghxKqPHl
	u/LoBqkLIUZiS3Ft0FxNtzQKh8AEqCQwPzPW5xDEqT+cFyIGx7cno6gcmGghEqYiYT/iBcQf/DP5P
	WOalEXrV90WQspN+pRej/snqF5y3d6yOaq5Vvxt24wO88Kt9X/GB/Ee5ST6Hy4ti5Z+yhKThenkhC
	OheolB+g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7o-00000003ENt-10vi
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T8-L6; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD2-29;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000000BjIN-00W6;
	Thu, 07 May 2026 12:38:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260502112941.1829273-1-a.fatoum@barebox.org>
References: <20260502112941.1829273-1-a.fatoum@barebox.org>
Message-Id: <177815031199.2795644.7881072750079961653.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113836_663330_CA4DA71F 
X-CRM114-Status: UNSURE (   6.17  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fbconsole: make UTF-8 the default encoding instead of
 CP437
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 02 May 2026 13:29:40 +0200, Ahmad Fatoum wrote:
> The Linux kernel fonts that were ported to barebox were all (and still
> are in Linux) CP437 fonts.
> 
> This doesn't matter when the framebuffer console is only displaying
> barebox' own 7-bit ASCII output, but in combination with barebox running
> as EFI loader, the framebuffer console may end up being EFI stdout:
> 
> [...]

Applied, thanks!

[1/1] fbconsole: make UTF-8 the default encoding instead of CP437
      https://git.pengutronix.de/cgit/barebox/commit/?id=4744b855cee7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



