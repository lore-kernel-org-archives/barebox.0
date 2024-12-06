Delivery-date: Fri, 06 Dec 2024 11:12:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVJo-004hVV-2E
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:12:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVJo-0000mZ-LE
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:12:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QvfixRpP6h0EQcEl8BfEfjrONX9+dZsyF3cBJMUE8+8=; b=lNsX91ET3Y5w5ICz4tM4BQWg6D
	ClnR+FFvEEraC1lnRiclvWz2Oazdhivb8LkStHxCBI4iIqMpmEMKAMMPngoji8ojc3jmfuyF4goTD
	u/snWqs7zZ23PU14JOldoyd3nvg1ZTBKmgEO9vkFvNJYTlZcbbgHZamXiSiSyHkC8FmS4oyV9Jk4n
	Qm6jZUB9GqQmk0iADuGCbPuf2lEsUP6FDjUSzAF5c6wDJqeYZ7E+t+BTF4v/6lOyV8W2ZIT7qc8eQ
	TXRsecW6HLapj9J66s4L+dFJX+qyPFDKPkmU6DI/eESlRWFinx+yobb3NPZI5vN9jjI0il1r1937c
	OUdUxv0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVJR-00000001CxL-2Kut;
	Fri, 06 Dec 2024 10:11:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVJP-00000001Cwz-1A2n
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:11:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVJN-0000go-W3; Fri, 06 Dec 2024 11:11:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVJN-001yzG-03;
	Fri, 06 Dec 2024 11:11:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tJVJN-000ZeN-2K;
	Fri, 06 Dec 2024 11:11:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Christoph Fritz <chf.fritz@googlemail.com>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241023-feature-emmc-background-ops-v1-1-535161eeefec@pengutronix.de>
References: <20241023-feature-emmc-background-ops-v1-1-535161eeefec@pengutronix.de>
Message-Id: <173347990971.136988.1229121592103921865.b4-ty@pengutronix.de>
Date: Fri, 06 Dec 2024 11:11:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_021151_355122_3AEBCFD9 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: mmc_extcsd: split background operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 23 Oct 2024 10:28:03 +0200, Stefan Kerkmann wrote:
> The current implementation of the  `mmc_extcsd -b` subcommand enables
> manual background operations and automatic background operations if
> available, which is unexpected and can be problematic:
> 
> With the eMMC JEDEC Standard 4.41 eMMCs gained support for decoupling
> internal maintenance operations from foreground operations like read and
> write commands. This is feature is called background operations. This
> allows the host to manually trigger these maintenance operations e.g.
> during idle times.
> 
> [...]

Applied, thanks!

[1/1] commands: mmc_extcsd: split background operations
      https://git.pengutronix.de/cgit/barebox/commit/?id=2eaaaf5da732 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



