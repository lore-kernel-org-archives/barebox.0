Delivery-date: Thu, 15 Aug 2024 10:50:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seWBv-009ojM-0P
	for lore@lore.pengutronix.de;
	Thu, 15 Aug 2024 10:50:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seWBu-00085g-Gw
	for lore@pengutronix.de; Thu, 15 Aug 2024 10:50:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MaOCPnBBWJFHKqcASKgYtaMRi50WBMY9+6rjggB6DRg=; b=kZQTTn7gu/8h/CvWZgsn3IPR+3
	sBSOfz6mGWsK81Z3nLFqjAl440MIUm0gZd/BMf9qbPOyAyaFQ5aXG5Ch+DTDhVBOBbJfolLo6L2VI
	y9AFm3RSaCaoQBKZxZ3EcX1rj7LVGcQgTdr7odkYDeEbOhJpK4bpQfgoDhfM6eElrGXH3O60+A0K+
	CJva2AnrEdK0OTzDNMSNIn9l6UV5HGlMHHfASrKm3UQVLBjIJXMPAaQ00uxjpw+YhI2P8yLHVqKQ8
	OEhYOLTtps8NHzLPHbwUBonNdnFLUCBVXmzJz0eX4PMfGQh6amU/y+y6okPVyQ2A9H0nB3RNlpSAb
	F5fy/aDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seWBF-00000009QNx-3wVC;
	Thu, 15 Aug 2024 08:50:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seWBC-00000009QMq-2PbS
	for barebox@lists.infradead.org;
	Thu, 15 Aug 2024 08:50:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWB9-0007zx-Cg; Thu, 15 Aug 2024 10:49:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWB8-000YV5-Vw; Thu, 15 Aug 2024 10:49:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seWB8-004lD3-2z;
	Thu, 15 Aug 2024 10:49:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stafford Horne <shorne@gmail.com>
In-Reply-To: <20240814161435.566270-3-a.fatoum@pengutronix.de>
References: <20240814161435.566270-1-a.fatoum@pengutronix.de>
 <20240814161435.566270-3-a.fatoum@pengutronix.de>
Message-Id: <172371179492.1134754.9264719507234438377.b4-ty@pengutronix.de>
Date: Thu, 15 Aug 2024 10:49:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_014958_645671_4E45286D 
X-CRM114-Status: UNSURE (   5.73  )
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
Subject: Re: (subset) [PATCH 3/3] ci: container: downgrade OpenRISC
 toolchain from 14.2.0 to 13.1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 18:14:35 +0200, Ahmad Fatoum wrote:
> The newest toolchain bump breaks OpenRISC start-up under QEMU: The console is
> now completely silent. Steps to reproduce the hang:
> 
>   CONTAINER_GCC13=bdfdd5effcc169ebf8a9df2f1a5956ef34549682f78b450a97aceea2afd76f7a
>   CONTAINER_GCC14=fa35adeae1ab49b4dc09fc3bf4d68f92541a0d1f41e0df91a4879fd331e4b592
>   CONTAINER_BASE=ghcr.io/barebox/barebox/barebox-ci@sha256:fa35adeae1a
> 
> [...]

Applied, thanks!

[3/3] ci: container: downgrade OpenRISC toolchain from 14.2.0 to 13.1.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=6d4c6b01f4c4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



