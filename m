Delivery-date: Tue, 13 Jan 2026 12:03:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcBM-000rFQ-1l
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 12:03:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfcBL-0001qI-Js
	for lore@pengutronix.de; Tue, 13 Jan 2026 12:03:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u/K1bxYCW9GFB2icIRHAnCaE18rm1FH/MCaYZfx/lt4=; b=HmLjFTE/bwPkfaEwsUu2IPMjeO
	ftcX3lqBnr/nUKbfy9hs1X1l7IkQaekRoA3kI+woTga1QT+AeED9Pa243LjU4ZWio5bwfQya0PiX5
	b0y/4LgXwxY4f2C2heL0TfcKItngj73X5nRQ50ABkDbZq3s9uGo6wW4DUlQnxOfUEIDnj650ITU3C
	S15yNpLp+t53DUYvHLn8E1pRBGs5wo+FPAQHTyaaiHcX5n4KnT3Kyrw8eiYQdjWF7OEs5YacuQzun
	MiJilGk3J4hOhza47JPre9XT3Wagi5BZeh+GmsuLZWbTgK/iQA7BF4SvRotRKze/Yd14S2l2hn7zN
	WNhKtBNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcAm-00000006ynl-28Nj;
	Tue, 13 Jan 2026 11:02:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfcAj-00000006ynG-2pk3
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 11:02:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcAi-0001U7-3S; Tue, 13 Jan 2026 12:02:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcAi-000PN9-1l;
	Tue, 13 Jan 2026 12:02:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vfcAh-00000005FPM-3P1O;
	Tue, 13 Jan 2026 12:02:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260112161506.3092667-2-a.fatoum@barebox.org>
References: <20260112161506.3092667-2-a.fatoum@barebox.org>
Message-Id: <176830216780.1250149.10447855013150346715.b4-ty@pengutronix.de>
Date: Tue, 13 Jan 2026 12:02:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_030249_717539_32D4A516 
X-CRM114-Status: UNSURE (   9.10  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ci: drop workaround for missing
 opensbi-riscv32-generic-fw_dynamic.bin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 12 Jan 2026 17:15:04 +0100, Ahmad Fatoum wrote:
> It will be soon 5 years that we had that quirk to download
> opensbi-riscv32-generic-fw_dynamic.bin, because the QEMU version in
> Debian back then didn't ship with it.
> 
> This should no longer be needed nowadays, so drop all the special
> handling we have for this.
> 
> [...]

Applied, thanks!

[1/1] ci: drop workaround for missing opensbi-riscv32-generic-fw_dynamic.bin
      https://git.pengutronix.de/cgit/barebox/commit/?id=3d3b66682f52 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



