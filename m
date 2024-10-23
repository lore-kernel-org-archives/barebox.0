Delivery-date: Wed, 23 Oct 2024 14:43:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3ahe-007shz-1s
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 14:43:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3ahd-0000AR-ST
	for lore@pengutronix.de; Wed, 23 Oct 2024 14:43:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUWGbI6WAEk6K/KR6Nq69SUytjwGFg9Bph1M0IOkAZg=; b=xvCGK9XkGBJe2TYSNXXUtWW9HN
	3u1XPG1Sm/RDqioaSRr0wWD9TPl61xp3fMmgRcik2j/n2wpX9DyT5jJsWPSGZpvBxbzdRHVHk8YVH
	KUllSO5B56RL16O9+l6CkhIJe3PdZ2w2YQos6oasGhlZeLY5ZEIVAYDwVhvqmX03JMWesfJH8gps+
	JmQIY08pnA1dpd2VAhCDM0FWJisKdUgNAqD9R+rD00lVroa10nTQ9z2HqsAPON22qXH42rh1DiPJo
	XSmL8VZIaF+zB+KMbNQYqnSVfXtOgS/vi9lHEtjm6dqCAmGEw3599vQxbBUv34YxJmBkB+wDo+l5F
	0zHBU7tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ah6-0000000EMBL-0Q7H;
	Wed, 23 Oct 2024 12:42:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ah1-0000000EMAH-3V8k
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 12:42:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3agz-0008Tb-EC; Wed, 23 Oct 2024 14:42:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3agz-0002HY-0p;
	Wed, 23 Oct 2024 14:42:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3agz-00GI9b-0d;
	Wed, 23 Oct 2024 14:42:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
Message-Id: <172968734519.3882988.3984035861871824325.b4-ty@pengutronix.de>
Date: Wed, 23 Oct 2024 14:42:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_054227_908083_DDA346A8 
X-CRM114-Status: UNSURE (   9.24  )
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
Subject: Re: [PATCH v2 00/12] ARM: Layerscape: LS1046a: switch to TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 22 Oct 2024 09:46:24 +0200, Sascha Hauer wrote:
> Our LS1046a support still uses the long deprecated and binary-only PPA
> secure monitor firmware. It's time to switch this over to TF-A. We do
> not bother to keep the PPA support as it's long outdated and it would
> also make the code code and barebox configuration unnecessarily
> complicated.
> 
> 
> [...]

Applied, thanks!

[01/12] ARM: Layerscape: TQMLS1046a: Update DDR timings
        https://git.pengutronix.de/cgit/barebox/commit/?id=4046483418b2 (link may not be stable)
[02/12] ARM: Layerscape: images: fix variable name
        https://git.pengutronix.de/cgit/barebox/commit/?id=c5fafdf54dc4 (link may not be stable)
[03/12] ARM: Layerscape: images: add missing FORCE
        https://git.pengutronix.de/cgit/barebox/commit/?id=b72e9217f230 (link may not be stable)
[04/12] ARM: Layerscape: TQMLS1046a: add support for 8GiB variant
        https://git.pengutronix.de/cgit/barebox/commit/?id=bf758a7ab323 (link may not be stable)
[05/12] ARM: Layerscape: ls1046ardb: remove unused variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=06afb0484b95 (link may not be stable)
[06/12] ARM: Layerscape: remove register arguments
        https://git.pengutronix.de/cgit/barebox/commit/?id=158ac96107b4 (link may not be stable)
[07/12] ARM: Layerscape: LS1046a: add TF-A support
        https://git.pengutronix.de/cgit/barebox/commit/?id=7d34aae4ae50 (link may not be stable)
[08/12] ARM: Layerscape: LS1046a-rdb: Switch to TF-A support
        https://git.pengutronix.de/cgit/barebox/commit/?id=ce679af25fcb (link may not be stable)
[09/12] ARM: Layerscape: TQMLS1046a: Switch to TF-A support
        https://git.pengutronix.de/cgit/barebox/commit/?id=aa6b6da282de (link may not be stable)
[10/12] ARM: Layerscape: LS1046a: remove PPA support
        https://git.pengutronix.de/cgit/barebox/commit/?id=5642ec046e7f (link may not be stable)
[11/12] ARM: Layerscape: LS1046a: add PSCI node
        https://git.pengutronix.de/cgit/barebox/commit/?id=beadf36a290f (link may not be stable)
[12/12] ARM: Layerscape: Update Documentation for TF-A
        https://git.pengutronix.de/cgit/barebox/commit/?id=36428685938b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



