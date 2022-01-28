Delivery-date: Fri, 28 Jan 2022 09:24:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYv-00FmXE-04
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 09:24:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYt-0002M0-HJ
	for lore@pengutronix.de; Fri, 28 Jan 2022 09:24:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lwnuKNSEUUG1IMpU3LfpztJEtp4iR7h80q1XEuDR9sg=; b=UWjEQozbXBl8hw
	wy3KxXdsXktY9kzHG63kPYgp+MZMvuoKwknsFu/+Ekxi0pbs9k0UzHiw4RyfFzy6XaKdKeGphxnub
	e4h6yav3lbqSJjM5OxDhEvxzu7gT4vzrwR25SYueVFQfLQnb+sbR5gGJQRquZP6HofLPtxeof9+ZI
	edgoOmfaaqd0SsWTAW5o96w9F14TT+xUvSEYf6nKxYwNGU1O4YS2ljv4ue2UbU3cejABtXTBgL6MW
	5AlxPcss4PPu+u5ybCb+3HbYrPuinUiT2W0+9gggGk164pqsqGnGs+Coz4BBbfBp32uTHC6fgriUG
	VjSdaNGLNvR8RaBWQHIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDMXY-000zX3-Ko; Fri, 28 Jan 2022 08:23:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDMXT-000zUc-6u
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 08:23:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXQ-00026a-8F; Fri, 28 Jan 2022 09:23:20 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXP-00A74n-NB; Fri, 28 Jan 2022 09:23:19 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 28 Jan 2022 09:23:13 +0100
Message-Id: <20220128082317.2410427-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_002323_274267_3EF0D652 
X-CRM114-Status: UNSURE (   9.23  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/4] refactore rpi board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v2:
- rework clk driver to properly support deep-probe
- remove currently not supported compatibles from board code
- reduce struct size
- rework rpi_get_dcfg to return *dcfg directly

Oleksij Rempel (4):
  ARM: rpi: convert board code to a driver
  ARM: rpi: move clk support to a separate driver and enable deep-probe
  ARM: rpi: validate devicetree compatible instead of changing model
    name
  ARM: rpi: set host name based on DT compatible

 arch/arm/boards/raspberry-pi/rpi-common.c | 486 +++++++++++++---------
 drivers/clk/Makefile                      |   1 +
 drivers/clk/clk-rpi.c                     | 109 +++++
 3 files changed, 396 insertions(+), 200 deletions(-)
 create mode 100644 drivers/clk/clk-rpi.c

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

