Delivery-date: Thu, 12 Mar 2026 10:17:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAt-00Alrl-2M
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 10:17:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAu-0006P0-1x
	for lore@pengutronix.de; Thu, 12 Mar 2026 10:17:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ADz0ub3YBvm0ttNYNTMxKy8KP5dKU5CntuCLrxV51BE=; b=Ad3+FuIEkk7SuU
	YRlAD27/KFKDlTFJZACrci2YmNdVaXqBA5NBVmNKAkdeFVYAJw+QhSVfik7u9mgrKlQyhy/oti1zp
	qodBCA3O3mtNW0e1eoGDRMFGxYYV7HRru4fnSn+xCe2moqydkLQUYlP2nyUziDErBXuBy5IZm3zmR
	42XoskBNVg0f3psqANVstC1BSlhXw7uJGx/EQUpTQB62iqcPLEG6lto6cYHdUhIuVvTvSy0yAAwXM
	tJbw/YaWgIK+LG2kR2SV5ld0VMPiS21+Wd0I3eXpqLWVHCSbnx51ssBIukX879bkpgzMeMEozM6ic
	c8WlXM2oAFTa8u+KZy7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAJ-0000000DhPz-4Acl;
	Thu, 12 Mar 2026 09:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAD-0000000DhN9-1GNS
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 09:17:07 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0cA9-00066g-QP; Thu, 12 Mar 2026 10:17:01 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 10:16:41 +0100
Message-Id: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHqEsmkC/x2NQQqDMBBFryKz7kAmDcX2KlJEkokdkEQyIkLw7
 o2u3n+b/yooF2GFT1eh8C4qOTWhRwf+N6WZUUJzsMa+zJMI92uhsWhwy6t4VJ9TlHls0Lww0tv
 1zk7kmAK0m7VwlONODN/z/AMRPhfzcgAAAA==
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_021705_359411_F606849E 
X-CRM114-Status: UNSURE (   6.94  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds helper functions to the security policy framework to
do additional work based on the selected policy.
Like adding the policy name to the commandline and configuring pinmux
based on the selected policy.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Fabian Pflug (4):
      common: bootm: add policy to commandline
      security: policy: set active policy on boot
      security: configure pinctrl based on policy name
      security: kernel_pinctrl: fixup pinctrl in kernel dts

 common/bootm.c            | 23 ++++++++++++++++
 drivers/base/driver.c     | 12 +++++++-
 include/bootm.h           |  5 ++++
 security/Kconfig.policy   |  8 ++++++
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 70 +++++++++++++++++++++++++++++++++++++++++++++++
 security/policy.c         | 15 ++++++++++
 7 files changed, 133 insertions(+), 1 deletion(-)
---
base-commit: 8c9d58cef2c65434e719ccbd3799b23014cb779d
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



