Delivery-date: Tue, 03 May 2022 06:44:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlkOJ-000DCn-0c
	for lore@lore.pengutronix.de; Tue, 03 May 2022 06:44:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlkOG-00006I-BH
	for lore@pengutronix.de; Tue, 03 May 2022 06:44:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=keWaZmXUhQ+KARLzF1dahzA0MH0Pew0IH5zHDnDD6rs=; b=3wfFZHym3KdeBr
	Z10U/O/8FwZud/DTFjaBgX70M2j86VkJKdZv7ns/fomc3TCIVv36MjCHj6vWZZTM5n6zvDocV2XuS
	i2PaXmZoJSH6JObSggmRgyfpmuITwPphk71o+XbtNKhof/wgZC7h2XC7Sgb3MRdW/ZTqSsHn19CWa
	Xh7BzZzOljukYe/xD6gb5BE0h1aYlPnbHcx9xbglegfdTqQoV85zXZQDTcgnfF7nDTXJ7xVSfy2pd
	RVNlzQNYdEGr8ODyNIiDAI1PWqWCZ3DUidxhxhC/PbKB6JyOXcQKOWMqN3OxiXSjM1pnvEpOLh18N
	tpZ/NOv5GN5b30BdKv+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlkMi-003foC-Dt; Tue, 03 May 2022 04:42:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlkMZ-003flG-26
 for barebox@lists.infradead.org; Tue, 03 May 2022 04:42:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMT-000869-3m; Tue, 03 May 2022 06:42:09 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMT-0002qF-OQ; Tue, 03 May 2022 06:42:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nlkMR-00DYzO-FM; Tue, 03 May 2022 06:42:07 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  3 May 2022 06:42:01 +0200
Message-Id: <20220503044206.3232712-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_214215_180901_964703BC 
X-CRM114-Status: UNSURE (   8.20  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 0/5] add different OF board fixups 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

changes v5:
- remove SERIAL_NUMBER_FIXUP Kconfig
- s/of_fixup_machine_compatible/of_prepend_machine_compatible
- remove bogus comment
- check if the passed device tree already is compatible to @compat

changes v4:
- s/code info device/code into device/

changes v3:
- rename global.of_machine_compatible to global.of.kernel.add_machine_compatible

changes v2:
- protonic: use only allowed chars for generated compatible
- protonic: make use of of_get_machine_compatible() to get board name
- of_fixup_machine_compatible: make curcompat optional
- add $global.of_machine_compatible

Add optional fixups for board serial-number and machine compatible.

Ahmad Fatoum (1):
  common: add $global.serial_number with device tree fixup

Oleksij Rempel (4):
  ARM: boards: protonic-imx6: make use of barebox_set_serial_number()
  of: add generic of_fixup_machine_compatible()
  ARM: boards: skov-imx6: make use of of_fixup_machine_compatible()
  ARM: boards: protonic-imx6: add HW revision specific machine
    compatible

 arch/arm/boards/protonic-imx6/board.c | 42 +++++++++++------------
 arch/arm/boards/skov-imx6/board.c     | 40 ++--------------------
 arch/arm/mach-imx/Kconfig             |  2 ++
 common/Kconfig                        |  5 +++
 common/misc.c                         | 39 ++++++++++++++++++++++
 common/oftree.c                       | 48 +++++++++++++++++++++++++++
 include/common.h                      |  6 ++++
 include/of.h                          |  6 ++++
 8 files changed, 128 insertions(+), 60 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

