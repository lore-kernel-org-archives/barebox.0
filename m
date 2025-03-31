Delivery-date: Mon, 31 Mar 2025 09:09:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9Gs-006Szc-13
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:09:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9Gr-0002pr-PK
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:09:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1XE/989pB81RMfOsaKyMPIwosMXCWLZ//SKdyHOVcSY=; b=BxEhuF6NH92fRARGn0j9aJCJkC
	KOwQCHLeLBcjQ5YrCTQSE+L+Y081FUvuCJ55NgjW061EbSIt9B4SjlX1E9yVeco1/Jr8SSsFMDQN1
	FfFhI532uQIDTkpe9VCjMCnuNHjt5yJFbB3lAHi+pEHip6CC92UVLMfUIIXekwYWIOMXPV8yWVlJA
	Pgn8AfL8pewJs3iJROosIMljJBbdVASK91uzgO0ogvDJSpUlYpM1lHwI7g+tadJ5pz/W8kBuFIj4S
	/3CKkd/DiZdUVO8XwAiF33lNuoCFEYtlhEJa+blPeH/cHIteRY3Hb4b0Vw21IlJvJ7kyNajDCX2nP
	tyBH+3MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9GQ-0000000HANl-2LZL;
	Mon, 31 Mar 2025 07:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9GN-0000000HANG-0lVT
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:08:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9GL-0002kT-Mx; Mon, 31 Mar 2025 09:08:49 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9GL-002YFv-1g;
	Mon, 31 Mar 2025 09:08:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9GL-00169Q-1S;
	Mon, 31 Mar 2025 09:08:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
Message-Id: <174340492945.261895.5641894409898783345.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:08:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_000851_221939_17BC2F5E 
X-CRM114-Status: UNSURE (   6.97  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] ci: fix sandbox allyesconfig build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 15:47:38 +0100, Ahmad Fatoum wrote:
> With these changes applied, the most recent container image can be used
> to run the pytest tests for allyesconfig.
> 
> Ahmad Fatoum (4):
>   sandbox: env: switch from CONFIG_DEFAULT_ENVIRONMENT_PATH to bbenv-y
>   test: bthread: change comparison condition for switches vs. yields
>   ci: pytest: rename build directories
>   ci: pytest: enable console and libc allocator for allyesconfig
> 
> [...]

Applied, thanks!

[1/4] sandbox: env: switch from CONFIG_DEFAULT_ENVIRONMENT_PATH to bbenv-y
      https://git.pengutronix.de/cgit/barebox/commit/?id=1faaaabc6faf (link may not be stable)
[2/4] test: bthread: change comparison condition for switches vs. yields
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea6cdcd699dc (link may not be stable)
[3/4] ci: pytest: rename build directories
      https://git.pengutronix.de/cgit/barebox/commit/?id=8052dd98ab6a (link may not be stable)
[4/4] ci: pytest: enable console and libc allocator for allyesconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=bc13b2175583 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



