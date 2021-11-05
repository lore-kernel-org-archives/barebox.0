Delivery-date: Fri, 05 Nov 2021 13:23:42 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyFy-0001lS-SN
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 13:23:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miyFy-0000Ke-20
	for lore@pengutronix.de; Fri, 05 Nov 2021 13:23:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YXGmpGT/djwL02mP+wUO3Zgw1X/QqbknK3hvTJzuZRU=; b=SJV3vpUilR5SVo
	CUjzYkWwrraE8dhEk2cAV3cD/7n+kE3aXaJ7If/lvQxOeL4PlsdLpH2wBtmOK8MYr0cmxrxPP64tG
	rNZpwA7wEo0Qp2DgJHISdgjEW8/2kNZHn/HjfYh8wa+tmIKLN9MoYCR9QHwDlJv5X9fZfDsyjV8KZ
	c15VSysqkyS198Gb53WsHQy9Tv54ej1MddolLv6pKp13MJxHz8aMuX9ibVRlJHuXxIqPUzytVsOAg
	uo9dLSuIQmrqdXyVeHfZfXy+f9UPhGBkQJ1gABSWM+wJNxgTzJWEhGunVQPLcDRTSvyG3gb0gCFrc
	rECbg18Q3HkTfljLrTpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miyEU-00BFFZ-NH; Fri, 05 Nov 2021 12:22:10 +0000
Received: from smtp92.iad3a.emailsrvr.com ([173.203.187.92])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyEP-00BFET-D3
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 12:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1636114920;
 bh=BqzFghUbAYgsbx6hXkWyQT/At13i3s+XMt9Gp97Sqm8=;
 h=From:To:Subject:Date:From;
 b=Wro3y1yfc3PX2CKa+0koglpy70BHhM2CbmNOK+84xb1ao64rqW4REFXvE3QGWBbRf
 KE/hFWvjJ64q2U6/vZaeqAgXHs3BVvKf7JbqT3avNcg2FvHtph0WDuwUuFO4uBDAYF
 K3srO1GXHRRSbf4hK9l6nDox1ErQ1tCPIOqIlN1M=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp36.relay.iad3a.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id 16C76429E; 
 Fri,  5 Nov 2021 08:21:59 -0400 (EDT)
From: Ian Abbott <abbotti@mev.co.uk>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri,  5 Nov 2021 12:21:44 +0000
Message-Id: <20211105122146.29370-1-abbotti@mev.co.uk>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Classification-ID: 6f09cc8c-29e8-4c57-a62d-ba4724a39c85-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_052205_585672_5131173F 
X-CRM114-Status: UNSURE (   6.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: socfpga: Use upstream compatible strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix up the 'compatible' strings for a couple of SoCFPGA development
boards to match those provided upstream (by Linux).

1) ARM: Terasic DE0-Nano-SoC/Atlas-SoC: Use upstream compatible string
2) ARM: Terasic SoCkit: Use upstream compatible string

 arch/arm/boards/terasic-de0-nano-soc/board.c   | 2 +-
 arch/arm/boards/terasic-sockit/board.c         | 2 +-
 arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts | 3 ---
 arch/arm/dts/socfpga_cyclone5_sockit.dts       | 3 ---
 4 files changed, 2 insertions(+), 8 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

