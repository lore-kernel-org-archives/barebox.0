Delivery-date: Sat, 20 Dec 2025 23:01:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX51N-00Dg2z-0f
	for lore@lore.pengutronix.de;
	Sat, 20 Dec 2025 23:01:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vX51M-0006MI-Ls
	for lore@pengutronix.de; Sat, 20 Dec 2025 23:01:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o0qLwZ1Q86GsKvYGmXIh+wHgV/SzcmAbk1fBBcPm2Ns=; b=p6icsOPz9mQBFAbpmbKKCWxlyU
	gpMtjtgS1vOmqAUAhXYABm50fwDzQgg5SpxP9oJHK9mECXcA5HiEv7rLpspytRjAAf4OT0OLFpe+J
	lJLXBld4G9qmdQYfdQ85dfzIBq4NHvnYnrK1KYeOetjnV6mEOiwdR6V4G9meTxd6OaHD6K71mwF49
	+T3QCClIQHMBsyPWWYQEBGn4FVtPMFC6v6tG5e0M+lC9lDx92dfEkAUg/Ucv+U4JN3PzGDHvwsJmF
	G0kFiOsoYLqGEw6BXzydhpwA9iDtO3Jmax5N0aHXgP+Jj4496jsaQxiGqU/mFvnXuyAZb0u1Zsl+T
	ox7jnnfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX50R-0000000BvpS-2fTl;
	Sat, 20 Dec 2025 22:00:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vX50L-0000000Bvnq-1Vip
	for barebox@lists.infradead.org;
	Sat, 20 Dec 2025 22:00:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50I-0006Cg-Nx; Sat, 20 Dec 2025 23:00:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50H-006fzR-24;
	Sat, 20 Dec 2025 23:00:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vX50H-00000007sSo-2QHN;
	Sat, 20 Dec 2025 23:00:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251220170029.2691798-1-s.hauer@pengutronix.de>
References: <20251220170029.2691798-1-s.hauer@pengutronix.de>
Message-Id: <176626804557.1877494.7318397383026871563.b4-ty@pengutronix.de>
Date: Sat, 20 Dec 2025 23:00:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251220_140049_405737_5D193815 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MN-EVK: Fix maximum load size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 20 Dec 2025 18:00:29 +0100, Sascha Hauer wrote:
> The i.MX8MN has 512 KiB of SRAM from which 0x70000 bytes can be used.
> Adjust the loadaddr and max_load_address accordingly.
> 
> The i.MX8MN EVK PBL is much bigger than most other PBLs as it contains
> the firmware files for DDR4 and LPDDR4 RAM setup. Depending on the
> features compiled into the PBL the previously configured area became
> too small, but fortunately the SRAM is much bigger than previously
> configured.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX8MN-EVK: Fix maximum load size
      https://git.pengutronix.de/cgit/barebox/commit/?id=c63a44e08f86 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



