Delivery-date: Tue, 15 Oct 2024 09:34:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0c4N-004Zno-2R
	for lore@lore.pengutronix.de;
	Tue, 15 Oct 2024 09:34:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0c4N-0004FB-6w
	for lore@pengutronix.de; Tue, 15 Oct 2024 09:34:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i9cBKHBNYe50NHAa2EW69i862pae8A8ACqdjtNa6sMI=; b=IwZK/wCLIOZRyy466Vj929B5KB
	Opmfnqun8GQekP/MA7zWPB2Mu38KJmcXZa+zQE84wmNg7WFVhYjaKtoWMzeXpmgmYGDOw7wnyp32m
	/17i5xMRo7UoGz1tgZf7aIvUVPh7l2TmWv2KQz8gaMdr5AjBPnQIEGXnJJfkcjLZJ/kLfxPXUWwey
	nTDaNvNEQQD4/+fUk649a8G6893C4mD7BWLiQLW2ifpZqjQ2N4xNXIdNj66s/+NcD3QJ+ig+ktoYz
	BiHGFa2iWJXYrtp0bGxGfJgTtJUGVtFTM0UnOVXkA5Wkq+tIDk5yYNeTAvoeQgXnH/ICNi/2HxCgm
	+sKiWVUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0c3m-00000007MHP-1yGJ;
	Tue, 15 Oct 2024 07:33:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0c3j-00000007MGg-3d7c
	for barebox@lists.infradead.org;
	Tue, 15 Oct 2024 07:33:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0c3i-0004C3-BH; Tue, 15 Oct 2024 09:33:34 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0c3h-001ye7-VE; Tue, 15 Oct 2024 09:33:33 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0c3h-0090cY-2x;
	Tue, 15 Oct 2024 09:33:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
References: <20241014115213.2846066-1-a.fatoum@pengutronix.de>
Message-Id: <172897761391.2147205.799126428002588233.b4-ty@pengutronix.de>
Date: Tue, 15 Oct 2024 09:33:33 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_003335_938290_2F325356 
X-CRM114-Status: UNSURE (   7.31  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] keytoc: check for memory allocation failures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Oct 2024 13:52:11 +0200, Ahmad Fatoum wrote:
> System headers may mark asprintf with an attribute requiring that the
> result isn't used unchecked. Add the check and check the malloc() return
> code as well for good measure.
> 
> 

Applied, thanks!

[1/3] keytoc: check for memory allocation failures
      https://git.pengutronix.de/cgit/barebox/commit/?id=7607389f52a2 (link may not be stable)
[2/3] crypto: fix compile with empty CONFIG_CRYPTO_PUBLIC_KEYS
      https://git.pengutronix.de/cgit/barebox/commit/?id=543df8c88ded (link may not be stable)
[3/3] FIT: add dependency on CRYPTO_BUILTIN_KEYS for signature verification
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a60caf7963f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



