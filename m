Delivery-date: Wed, 18 Mar 2026 10:22:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6p-0028AP-0r
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:22:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6o-0004qK-8q
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:22:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3PkvDoXBM52nbuwf8k2jrUHmJsmwqP3QcwxDX82dLMY=; b=LZPz5ufKkuVZuG
	8qoA0229Ym0AuGDVFI8WNpPOzQBtmUz8Db0rzofBxEgDhNKMLwkA/vHKNvIvoxWxMt+609QzXjJ1S
	Xzd4IjaYaVhP3DAM8mRp8aJvUFWjoDrEqRolFerShTlSHD97KrclwO4V88aUeAJRa4VyhH1RGkWxk
	nq5DRaXb/u7JVe4+dbx2xXe56Zp8sYvan6RimYoJRiVzD46eiXSKc0t5NHBLKkiWxTubI2hDWEapf
	HrBJ3zuS1uF0Xe116Kcot3zxuOGyU6hZYgcai+ydkHwjky1gzla5OlB6bHiLM5XNto8mftJyvjtzm
	j/XV3aTySXy8o7GlcJBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6T-000000087sq-0Ogj;
	Wed, 18 Mar 2026 09:22:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6N-000000087oj-3Tex
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:22:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w2n6K-0004T5-SV; Wed, 18 Mar 2026 10:22:04 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 18 Mar 2026 10:21:58 +0100
Message-Id: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALZuumkC/42NQQrCMBBFr1KyNpJJQ62uvIeIpOm0HZCkJDVUS
 u9uUhAEF7qa+f/DewsL6AkDOxUL8xgpkLMplLuCmUHbHjm1KTMpZCVKAB7zx4Xkgk9uJMODcba
 j/pZOcHfkcFS1khoUQssSZvTY0bwpLteUBwqT88/NGCG3b7j8DY+QJmXKzhjd6QbwPKLtH5N3l
 uZ9iywbovykVn9Q8wSIWJtDJRtsvqjrur4A95e6ICsBAAA=
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_022207_874586_2F923FA0 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/5] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds helper functions to the security policy framework to
do additional work based on the selected policy.
Like adding the policy name to the commandline and configuring pinmux
based on the selected policy.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v3:
- replaced while loop with of_tree_for_each_node_from
- removed unsused variable definition in base.c
- Link to v2: https://lore.barebox.org/barebox/20260316-v2026-02-0-topic-sconfig_console-v2-0-1eee8c762beb@pengutronix.de

Changes in v2:
- Add of_property_write_string_array function
- Add selftest for of_property_write_string_array
- Add exra-check for active-policy
- Use "linux.bootargs.dyn.policy" instead of version without dyn
- Iterate over device-nodes instead of recurse through tree
- Link to v1: https://lore.barebox.org/barebox/20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de

---
Fabian Pflug (5):
      of: add of_property_write_string_array()
      common: bootm: add policy to commandline
      security: policy: set active policy on boot
      security: configure pinctrl based on policy name
      security: kernel_pinctrl: fixup pinctrl in kernel dts

 common/bootm.c                | 23 ++++++++++++++++++
 drivers/base/driver.c         | 12 +++++++++-
 drivers/of/base.c             | 43 +++++++++++++++++++++++++++++++++
 include/bootm.h               |  5 ++++
 include/of.h                  |  3 +++
 security/Kconfig.policy       |  8 +++++++
 security/Makefile             |  1 +
 security/kernel_pinctrl.c     | 56 +++++++++++++++++++++++++++++++++++++++++++
 security/policy.c             | 15 ++++++++++++
 test/self/of_manipulation.c   | 14 ++++++++++-
 test/self/of_manipulation.dts |  5 ++++
 11 files changed, 183 insertions(+), 2 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



