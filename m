Delivery-date: Fri, 29 Nov 2024 13:04:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzjk-001qfB-0Y
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:04:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGzjg-0002g2-AM
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:04:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gvzWpokHu64nM/2uhPJFzUom6/ZTmZgBF+0r0utQHTk=; b=zLgxtD2wPMe9nTypVXMrZ5VLv0
	tb8q8pSOYGkBzTjkkirrC4/xx7GNhNatdGt5lJUrHsNIFvK94IQ4O3dUkLLPdqt301hGmXYMkPHLi
	kbKsdOvgqQZlwlvOscvI/LBBQ8yOHFqDgBY45etCepX6J0cDjZD1CMor8q9ng4HUNYYH1Ftxs+svg
	YRm4Wr2kC7Fm1rcBoKiOFD8TN9UrA+5bGgSTO4Vxr+A6dk+7hg6IALT6tW2uKfzRuUrG1mA9K9Zxh
	DXhqisRBrUWkIEWR8Y0N3OuhkxgnvYbYfNlkFJoe3n1kDQEKJUV7JWTZgmHh7R3sO+2d1QrbwsyEB
	AxPduy7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzj9-00000000200-2zGP;
	Fri, 29 Nov 2024 12:04:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzj8-000000001zb-2ggf
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 12:04:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=gvzWpokHu64nM/2uhPJFzUom6/ZTmZgBF+0r0utQHTk=; b=ji6HRCulfKLlgYkkHFz8qHLW6p
	eWkprMX0tIvrQNIBOC+2J2Jeh9Se21l1VpoHOmftDOa/GztsoJVur12+PND8YDPQBkB2GtmENJ/E8
	T7ALq2zmbSLfTzSWXwOmn2MouNjmT/0t2ry5L4gIlaxFnXYwfqeemTgkP8NDpAlL4jMVhWYUo1Y9k
	R0NfHeYNcSvX/E+QehQlbTMmkB5qBKleESnjB2c4Uvge9ZxFD8fglGMlPk4N/jLzJijZUZOctvYvM
	cHLIvou4dNVXGE0F/qXRFhMRHGZ4SlBhzhSF6BotWbDGxMRCAlFDwlHt/E9Zl2XcyvybYwbZBWhRJ
	ncW96d+g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzj5-00000001jav-2bM9
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:04:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzj4-0002UX-Pe; Fri, 29 Nov 2024 13:03:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzj3-000mMW-2K;
	Fri, 29 Nov 2024 13:03:58 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzj4-000xe9-1O;
	Fri, 29 Nov 2024 13:03:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Christian Melki <christian.melki@t2data.com>
In-Reply-To: <20241125153915.1548894-1-a.fatoum@pengutronix.de>
References: <20241125153915.1548894-1-a.fatoum@pengutronix.de>
Message-Id: <173288183842.229226.14941058164805228251.b4-ty@pengutronix.de>
Date: Fri, 29 Nov 2024 13:03:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_120359_822918_74945DE7 
X-CRM114-Status: UNSURE (   8.75  )
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
Subject: Re: [PATCH] startup: don't fallback to shell from menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 Nov 2024 16:39:15 +0100, Ahmad Fatoum wrote:
> The code to determine whether to drop to shell or to run the menu is a
> bit hard to follow and may even be used to circumvent the menu in some
> circumstances.
> 
> Fix this by wrapping the menu in an infinite loop and refuse dropping to
> shell.
> 
> [...]

Applied, thanks!

[1/1] startup: don't fallback to shell from menu
      https://git.pengutronix.de/cgit/barebox/commit/?id=96852a962d0c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



