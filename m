Delivery-date: Tue, 21 Apr 2026 12:30:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF8Mq-00EgVX-35
	for lore@lore.pengutronix.de;
	Tue, 21 Apr 2026 12:30:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wF8Mo-0006hE-Sl
	for lore@pengutronix.de; Tue, 21 Apr 2026 12:30:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kmSfvc7bJnn87lOpR2he/GyHRqOWF6Ib9vrkJy6oGxA=; b=zHNNqu9JifdOWM
	Cz3VzVeLbdkmL71oTXnNM5TSQtc3980MW8bQcxtfO3eKM6vHZceZeKdrPEnqNF/llJgzn8PjN8EY7
	oskbhSGuNFion3V7KgcrzxnXMcIYSpAW5xrE9xPU/qQXYC/Nhamo/0YJb/BlQUahphzppuxbcoiZu
	qYfwJGLQ6+wPh4nMeX4Up7hJZ5YqNN9IYwMdQ4pDlzVfWXajZgjNG/bmKYMB0tiQenYmZPY19CLpB
	3YsvgAYVOBbqS8x9krOYeR41ieGZZborvcLoA59jdDDeDwiEeIxjla/wp8bLhDPjc1NLgWffoIskZ
	AtxFbrlLmGXdV1G73UoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF8MO-00000008REr-3HtJ;
	Tue, 21 Apr 2026 10:29:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF8MK-00000008RBY-12ED
	for barebox@lists.infradead.org;
	Tue, 21 Apr 2026 10:29:39 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wF8MI-0006MC-If; Tue, 21 Apr 2026 12:29:34 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 21 Apr 2026 12:29:29 +0200
Message-Id: <20260421-v2026-02-0-topic-sconfig_console-v8-0-261cdfc6b0da@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIlR52kC/5XQ3WqEMBAF4FdZct2UZPKne9X3KKXEcbIbKCrGy
 pbFd++4UBAq1F4lkxO+A3MXhcZMRZxPdzHSnEvuOx6qp5PAa+wuJHPLswAFXhmt5bzepAKp5NQ
 PGWXBvkv58s5H6T9I6tpWFqK2pFvBzDBSyrdHxesbz9dcpn78ejTOen39weFvfNYcWTQJMabYa
 HoZqLt8TmPf5dtzS2JtmGGr+gPqGmkiqjB4aKjZVc1WrQ6ohiPi385BbQOYXdVuVFAHVMtRxNq
 0oQ6pwrSruv+qjiOghDEGbJTZ36vfqvaAyqlMihofEyAqv6uGrRoOqIEjH6KDlLyj9vdel2X5B
 urjcBLZAgAA
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260421_032936_379479_0A797499 
X-CRM114-Status: GOOD (  14.04  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v8 0/7] Add helper for security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds helper functions to the security policy framework to
do additional work based on the selected policy.
Like adding the policy name to the commandline and configuring pinmux
based on the selected policy.

If this series is to be applied after Ahamad's bootm change series, then
the block to change the commandline has to be moved up to roughly line
720 into the function bootm_boot_prep, where all the other
bootm_data->provide_*** checks are, so that the previous context remains
the same.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v8:
- rebased on top of v2026.04.0 and resolved conflict
- Link to v7: https://lore.barebox.org/barebox/20260327-v2026-02-0-topic-sconfig_console-v7-0-67a52ff65ed3@pengutronix.de

Changes in v7:
- Replaced > SCONFIG_NUM with >=
- Check for active_policy in bootm
- Add warning, if more then 10 pinctrl names are used in dtb.
- Fix spelling errors
- Link to v6: https://lore.barebox.org/barebox/20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de

Changes in v6:
- Made active_policy static
- Add trailer for Ahamad
- Link to v5: https://lore.barebox.org/barebox/20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de

Changes in v5:
- Fix error in kernel_pinctrl. The array was never written back.
- Link to v4: https://lore.barebox.org/barebox/20260320-v2026-02-0-topic-sconfig_console-v4-0-ac93d797f8cf@pengutronix.de

Changes in v4:
- removed the global variable active_policy and replaced with a getter
  function
- add sanity check for is_allow parameter
- add new notifier chain to security_policy on change without checking
  policies is_allowed
- rewrote the pinctrl to make use of new notify chain
- changed pinctrl to use barebox,policy-<active-policy>-<name> to
  replace pinctrl for <name> instead of replacing 'default'
- Link to v3: https://lore.barebox.org/barebox/20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de

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
Fabian Pflug (7):
      of: add of_property_write_string_array()
      security: policy: sanity check parameters
      security: policy: remove global active_policy var
      security: policy: add notifier chain for name change
      common: bootm: add policy to commandline
      drivers: pinctrl: configure pinctrl based on policy name
      security: kernel_pinctrl: fixup pinctrl in kernel dts

 commands/sconfig.c            |  9 +++++-
 common/bootm.c                | 24 ++++++++++++++
 drivers/of/base.c             | 43 +++++++++++++++++++++++++
 drivers/pinctrl/pinctrl.c     | 73 +++++++++++++++++++++++++++++++++++++++++--
 include/bootm.h               |  5 +++
 include/of.h                  |  3 ++
 include/security/config.h     |  1 +
 include/security/policy.h     |  3 +-
 security/Kconfig.policy       | 15 ++++++++-
 security/Makefile             |  1 +
 security/kernel_pinctrl.c     | 73 +++++++++++++++++++++++++++++++++++++++++++
 security/policy.c             | 25 ++++++++++-----
 test/self/of_manipulation.c   | 14 ++++++++-
 test/self/of_manipulation.dts |  5 +++
 14 files changed, 279 insertions(+), 15 deletions(-)
---
base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



