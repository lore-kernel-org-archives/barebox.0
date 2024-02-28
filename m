Delivery-date: Wed, 28 Feb 2024 14:15:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm6-00DUeZ-10
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 14:15:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfJm2-0008Fw-En
	for lore@pengutronix.de; Wed, 28 Feb 2024 14:15:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A+FqTtp9J7uBHH0HjI21PpW5peQOBNbMAl1gdS8RRkg=; b=o6v0PFZEm7vQ5D
	vkiz58z5r7yNn300xV654FpZwx8wohDXuILFaoEW29sT3Xh0V3vHLq4pgrQp1jpkXyYFlzlnOsDdi
	ZviR8DZi8HwG0+pJCg+8ifv0ngInrTK3YcjZotXOQTNKilrqbnXUEeJa+in+0hvyxAm7leEaOPsJv
	9euZ+AXgScVieMOjoXiZlyPorqV1/O0TTRb53oLEwhkLesvgMno0amxbRA+9mr3mvxeJflrwDpLY0
	SBoMHDLQzsPputCPIVLQFksNmZ4TlXIXGP/xWaddv220nc7sp7j05CZ/9ORSC1i7U/uX7iPEkCyTw
	twgqkoBfiSuZH3SZm+Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlZ-00000009Qfm-0C4C;
	Wed, 28 Feb 2024 13:14:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJlU-00000009QeB-3NI9
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 13:14:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-0007ym-Ik; Wed, 28 Feb 2024 14:14:19 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlL-003P11-34; Wed, 28 Feb 2024 14:14:19 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rfJlK-002uZZ-1g;
	Wed, 28 Feb 2024 14:14:19 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 28 Feb 2024 14:14:07 +0100
Message-Id: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ8x32UC/42NQQ6DIBREr2JY9zfwpY3tyns0Lgig/oVAgBJb4
 92LnqC7eTPJm40lG8km9mw2Fm2hRN5VwEvD9KzcZIFMZYYcJUe8QzkScAQO2QfSQMvaLeAgQP4
 qDbLjWohWK35DVi0h2pHW8+E1VJ4pZR8/52ERR/u/u4i6oBlRttyoRyf7YN30ztE7Wq/GsmHf9
 x+wM6T10wAAAA==
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_051428_916212_E9F7E4E5 
X-CRM114-Status: UNSURE (   8.11  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] arm: mach-imx: tzasc: port lock id_swap_bypass bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series ports the U-Boot commit 1289ff7bd7e4 ("imx8m: lock
id_swap_bypass bit in tzc380 enable") to barebox and refactors the tzasc
driver for the imx platform to use the `cpu_is_mx8xyz` macros.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Changes in v2:
- Rebased onto next to pickup code relocation from
  arch/arm/mach-imx/imx8m.c to drivers/soc/imx/soc-imx8m.c
- Link to v1: https://lore.kernel.org/r/20240226-v2024-02-0-topic-imx8m-n-p-tzac-v1-0-2df2430da984@pengutronix.de

---
Stefan Kerkmann (3):
      arm: mach-imx: tzasc: lock id_swap_bypass bit
      arm: mach-imx: set cpu type in pbl
      arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros

 arch/arm/mach-imx/Makefile  |  2 +-
 arch/arm/mach-imx/atf.c     | 13 +++++++++----
 arch/arm/mach-imx/tzasc.c   | 47 ++++++++++++++++++++++++++-------------------
 drivers/soc/imx/soc-imx8m.c |  2 +-
 include/mach/imx/generic.h  |  5 +++++
 include/mach/imx/tzasc.h    |  8 ++------
 6 files changed, 45 insertions(+), 32 deletions(-)
---
base-commit: 5fcad261420f1316ee924549778a7a2be2389481
change-id: 20240226-v2024-02-0-topic-imx8m-n-p-tzac-480c113ca052

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



