Delivery-date: Wed, 27 Apr 2022 11:40:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nje9X-00Grhk-IW
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 11:40:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nje9U-0004zH-VW
	for lore@pengutronix.de; Wed, 27 Apr 2022 11:40:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kSnw7OS8BQdMOKbZ+GIz9zazDkBVCqw5IrGqefM2+Q=; b=gS8L91EO4lQtz4
	5lqGCw/CjK4DH8U5iJCmvMYn6NKW3mqNISw8BQDYuyubcgQSZWfaGc2PKctTK9H2867MR0YyjsX3+
	KQb3i2PzwEayawKg0TyslTBXwfclDKyHyqXqJGpbWTSo3SNhofD4g7slf+EtfvWgJAfTHOo1GotSb
	MldekRTW5YC08rFBLGtgC0GKYFvHMzpw+1KG/GsNSMg7xi1GW4BdSGaza3b66g1Oh4+oJJfolzlTl
	XspJbRpLiwbpwcryOWPhcDlqEBKseCAqLLms9YC53OM1PZkRiqVhMGXHMYWn2CJGGqATz6L+9fNcs
	O7bhEjHTz8EIOLas6h4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nje87-000muP-KW; Wed, 27 Apr 2022 09:38:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nje7S-000mYM-CU
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 09:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7P-0004cZ-Io; Wed, 27 Apr 2022 11:37:55 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7P-005Wte-Hx; Wed, 27 Apr 2022 11:37:54 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nje7N-007KTB-8p; Wed, 27 Apr 2022 11:37:53 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de,
	Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 27 Apr 2022 11:37:48 +0200
Message-Id: <20220427093752.1746932-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_023758_499736_26631A61 
X-CRM114-Status: UNSURE (   7.28  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/4] add different OF board fixups 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v2:
- protonic: use only allowed chars for generated compatible
- protonic: make use of of_get_machine_compatible() to get board name
- of_fixup_machine_compatible: make curcompat optional
- add $global.of_machine_compatible

Add optional fixups for board serial-number and machine compatible.

Ahmad Fatoum (1):
  common: add $global.serial_number with device tree fixup

Oleksij Rempel (3):
  ARM: boards: protonic-imx6: make use of barebox_set_serial_number()
  of: add generic of_fixup_machine_compatible()
  ARM: boards: skov-imx6: make use of of_fixup_machine_compatible()

 arch/arm/boards/protonic-imx6/board.c | 20 +----------
 arch/arm/boards/skov-imx6/board.c     | 40 ++-------------------
 arch/arm/mach-imx/Kconfig             |  1 +
 common/Kconfig                        | 10 ++++++
 common/misc.c                         | 33 ++++++++++++++++++
 common/oftree.c                       | 50 +++++++++++++++++++++++++++
 include/common.h                      |  6 ++++
 include/of.h                          |  6 ++++
 8 files changed, 110 insertions(+), 56 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

