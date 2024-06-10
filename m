Delivery-date: Mon, 10 Jun 2024 14:42:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeMD-003h56-2X
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:42:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGeMD-00011P-7U
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v6tT1w4gVHlji9xy1FtlJ3Abwc57T+qh8AAhUeCeXOk=; b=EYnAUhga5HLNNt12SNzZDK8jjc
	AEI1cyZ54TzKKUYs/O8Xq7g4TSvRjmrBJb+/GRd8U0+hg4JNZTe9WK7Ae4bPkneY2wqrGFpY8jZOb
	cjgpyb9gycMJyL937B57uE1WeqQ+6FLITvDIlkpZiKNeFwv/yeIl/WWcN/n2zqkmSjuzUkdUJYKt9
	GKr8YoMdQdLldWr0RT4xhAr2yP5qF01B8hbj312XJB7chJE1T4MLAytYfjjODAe6eVT682oaIQMca
	FIPI2AbEZbDYrYIRiSVsdfuv885zlYmbP/8aC2rk+PMeupEQHWn7+Pk0HgYnzTC4kGQQQ1LXqTcN0
	9k+Tvbrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeLn-000000052Pn-4BWq;
	Mon, 10 Jun 2024 12:42:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGeLg-000000052Ny-2GXI
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:42:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLf-0000sx-2X; Mon, 10 Jun 2024 14:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLe-001J6l-M5; Mon, 10 Jun 2024 14:42:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGeLe-007GFO-20;
	Mon, 10 Jun 2024 14:42:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Andreas Helmcke <ahelmcke@ela-soft.com>
In-Reply-To: <20240604103930.83268-1-ahelmcke@ela-soft.com>
References: <20240604103930.83268-1-ahelmcke@ela-soft.com>
Message-Id: <171802332661.1730377.15067096901379517603.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 14:42:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_054208_931946_13A0DC73 
X-CRM114-Status: UNSURE (   6.47  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] nandtest: fix wrong ecc stats and start offset
 parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 04 Jun 2024 12:39:30 +0200, Andreas Helmcke wrote:
> - The -o (start offset on flash) parameter has no effect. The check always
> starts at address 0, despite the value given with -o.
> 
> - Due to an invalid initialization the ecc error stats sometimes showed invalid values.
> 
> 

Applied, thanks!

[1/1] nandtest: fix wrong ecc stats and start offset parameter
      https://git.pengutronix.de/cgit/barebox/commit/?id=adbaf9d8673f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



