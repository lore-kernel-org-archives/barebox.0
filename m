Delivery-date: Mon, 24 Mar 2025 09:35:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdHk-003W1B-0l
	for lore@lore.pengutronix.de;
	Mon, 24 Mar 2025 09:35:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1twdHj-00063k-4i
	for lore@pengutronix.de; Mon, 24 Mar 2025 09:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c121IrO8eJirHMMdQV6MsfwlQqHDk/wpH1S08SpsuoU=; b=fnT0Vy9IvoOGJ3HOMwreNvw8fe
	7aC2jJa8pzBgAD9uvzyHP25LcOz39D3aeI1IxJeHklYq0hpyokh96K9gEUT5OLqtBJmGpaQjKGOtk
	r4IuJKB49B4ilw98ZaqWN4bPA8LDzqELGbkKG4SNm5wJxTEn9ieLKYWd4UFGfZbcclhuRopUmQQ6O
	iuXYZassQBod+A9ZyLLK2Du6362Z6EllTE/v2FQnMV7NkIbbVPFOP3pPexmtx6r99P/4GfztZPBJf
	gJkiHeXXtyg9puaCeySYPsEbXY7njSmrbSVPEVfOQNwLJ8f1SP8K2KwBFccWaMjbSO8wMprDBYccI
	N64FoX4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1twdHF-00000002bBm-2fPp;
	Mon, 24 Mar 2025 08:35:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1twdGl-00000002b8J-1v6Y
	for barebox@lists.infradead.org;
	Mon, 24 Mar 2025 08:34:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGk-0005nz-2b; Mon, 24 Mar 2025 09:34:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGj-001Nav-1V;
	Mon, 24 Mar 2025 09:34:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1twdGj-007B48-2e;
	Mon, 24 Mar 2025 09:34:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250116140740.297902-1-a.fatoum@pengutronix.de>
References: <20250116140740.297902-1-a.fatoum@pengutronix.de>
Message-Id: <174280528982.1710680.5865475384209436426.b4-ty@pengutronix.de>
Date: Mon, 24 Mar 2025 09:34:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250324_013451_499996_7464A998 
X-CRM114-Status: UNSURE (   8.95  )
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
Subject: Re: [PATCH] commands: add varinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 15:07:40 +0100, Ahmad Fatoum wrote:
> Tab completion is very helpful, but it's not sufficient for enum-typed
> global variables. To know what the permissible values are, devinfo
> global must be consulted, which can have a lot of output.
> 
> As alternative, let's add a varinfo command that can be used together
> with parameter tab completion and that will just print out the
> parameters that start with the specified string.
> 
> [...]

Applied, thanks!

[1/1] commands: add varinfo command
      https://git.pengutronix.de/cgit/barebox/commit/?id=b1e45718bb15 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



