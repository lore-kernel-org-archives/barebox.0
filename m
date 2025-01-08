Delivery-date: Wed, 08 Jan 2025 15:23:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWyR-000lvH-2H
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:23:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWyR-0006zX-N1
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:23:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2/C5Sf6hO6wue3hzbmBIz0Dw+hQAY9U+w8UDIi/fYxo=; b=W56I//9yJBsX1CENp+u5xelTZM
	AxCgMJjRVTlfnBFMwse9cNAi0vFau1KuI2wkx/13QI7BSm6OEZqkkO45Twm10miOPDzs8FKrHXXWj
	7nxyOHQgAnipTRVfv68cC9unNlGx1EpZV9JfD1YCbpmEgIjltEV/i8Hxj0vk5ryN6/RhZZxxj9y/W
	t8dbiIjZZQdmLaLONx5kAIEs0YWRzGUu1KliFLbu3F8mtH+JC+AKqgJSkCAW7VnRNE2IL/8Ycb32V
	K1hVA6BwEfS7ZYMupIvzi0vGHcuFlnI62xLO0P64063dRzVfe8AMuVd6oiyUhARvZURR5n/9BPuYB
	0xIYjOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWy3-00000008mMQ-3YqH;
	Wed, 08 Jan 2025 14:23:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWy0-00000008mLm-1Sdh
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:23:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWxr-0006kw-3U; Wed, 08 Jan 2025 15:23:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWxq-007XJz-0O;
	Wed, 08 Jan 2025 15:23:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWxq-000Iq1-2g;
	Wed, 08 Jan 2025 15:23:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de
In-Reply-To: <20250108110420.1850995-1-a.fatoum@pengutronix.de>
References: <20250108110420.1850995-1-a.fatoum@pengutronix.de>
Message-Id: <173634619882.72366.13224875531665896265.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:23:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_062328_392600_AE8E05C8 
X-CRM114-Status: UNSURE (   7.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: linux/iopoll.h: add optional PBL support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 12:04:19 +0100, Ahmad Fatoum wrote:
> While we don't have generic clocksource support in PBL, there is no
> reason to not enable read_poll_timeout for use on platforms that have
> their own get_time_ns.
> 
> Allow these platforms to use read_poll_timeout by defining two macros:
> read_pol_is_timeout and read_poll_get_time_ns().
> 
> [...]

Applied, thanks!

[1/2] include: linux/iopoll.h: add optional PBL support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e94a110c8766 (link may not be stable)
[2/2] mci: imx-esdhc: implement esdhc_poll using sdhci_read32_poll_timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f91d2c53b03 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



