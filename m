Delivery-date: Thu, 19 Sep 2024 08:46:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1srAw2-005xMp-1b
	for lore@lore.pengutronix.de;
	Thu, 19 Sep 2024 08:46:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1srAw1-0005Cg-EZ
	for lore@pengutronix.de; Thu, 19 Sep 2024 08:46:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SSWs4xHBKfD89cEnSXVTNVQ7yOhtzFBD1MuC0k4+yv4=; b=hSTzhsR8jY6kxAlOJKlA7rZ+9m
	ngm/E13gmYiBA8MLdhVmIEik8lzgTWZvhk0DuRsSKNZJva9IjE4v56ylzawXh8dqoBXYCMHT1xR2J
	nP63EIN6q2a3Np63pEUO4j4diIB4EnQ0sq8FKeczaH9yTfLR5tby81s+2GHq1rzigP9WQUm7nrRXv
	7myuUuqFr3F7STYlsCTwq9wIw8MZB05/ccT2jiibpVFgvz1A8hv3tNdRG6fphdr36NkLakSWfXu5H
	qNrdoiqZ7mty+sxZxs8dlXThtuGmalRL5890UgtG+mYrCUSQDQJNYeaAJZt3qI0HCWKCO0ra9udlw
	RkyqRkAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srAvO-00000009a9r-14Tu;
	Thu, 19 Sep 2024 06:45:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srAvJ-00000009a7N-3jMP
	for barebox@lists.infradead.org;
	Thu, 19 Sep 2024 06:45:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAvG-00052g-BA; Thu, 19 Sep 2024 08:45:50 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAvF-008za0-Uh; Thu, 19 Sep 2024 08:45:49 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1srAvF-0097hR-2q;
	Thu, 19 Sep 2024 08:45:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20240918-jre-remove-watchdog-list-v1-1-e56f1769e45e@pengutronix.de>
References: <20240918-jre-remove-watchdog-list-v1-1-e56f1769e45e@pengutronix.de>
Message-Id: <172672834987.2174528.15944686505343345062.b4-ty@pengutronix.de>
Date: Thu, 19 Sep 2024 08:45:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_234553_967200_6DAF4F79 
X-CRM114-Status: UNSURE (   6.84  )
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
Subject: Re: [PATCH] wd_core: remove obsolete watchdog list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Sep 2024 15:45:31 +0200, Jonas Rebmann wrote:
> this patch fixes a null pointer derefence on imx28 related to the
> incomplete removal of the watchdog list in 061e10.
> 
> 

Applied, thanks!

[1/1] wd_core: remove obsolete watchdog list
      https://git.pengutronix.de/cgit/barebox/commit/?id=419ea9350aa0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



