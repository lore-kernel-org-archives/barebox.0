Delivery-date: Fri, 20 Mar 2026 07:45:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tby-002wAO-0O
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:45:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tbx-0003Qc-Eq
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:45:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TaedFDO6X+IBe9+Q201qEMZakvSpLA4VzS1hZAHonXc=; b=SbOFlH2bptvZPZ
	gFUfI8fx68SVlmnUtvrikkFt9Z99f4zg2ViKBGamf74AxzcUzR5gwk6BP/RKJ0RpREhZ9PbIxlX6Y
	sqsYNcyIoaK+sQufP/EYzPj/eZDym0YyiLSlYrW67/iGvgOz5B4ANLeXPi5XnaBi2xN2GV5iWPDnf
	UfuYFpuQgvjqijnN2l/jCMHbCm+61KL0C1UpVd9JPUcU4c6tuRESXRLkZQ9oldc1aStmsnbQsNB5i
	EO1zxsU1IKR7tDyXsfJB8TAWCt5sFDM16c/YMafbZ5elJxwHLv/dCpFKCohyxpQeX+YXPyH295XRd
	RUBBuNEnz+KolI1PQobA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TbW-0000000CBuG-2m5T;
	Fri, 20 Mar 2026 06:45:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TbS-0000000CBrB-45Th
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:45:05 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w3TbP-00033a-U8; Fri, 20 Mar 2026 07:44:59 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 20 Mar 2026 07:44:47 +0100
Message-Id: <20260320-v2026-02-0-topic-sconfig_console-v4-0-ac93d797f8cf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN/svGkC/43N0QrCIBQG4FcJrzN2jrZWV71HRGzubB0IHbpkM
 fbuuUEQFNSV/v7y/aMI5JmCOKxG4SlyYGdT0OuVMNfStiS5TllghnmmAGScbzJDmcnedWxkMM4
 23F7SEdyNJOx1obEETVCLxHSeGh6WidM55SuH3vnHshhhfn3h+BuPkCptVGNM2ZQV0LEj29577
 ywPm5rEvBDxXc3/UOcKiKgwuxwrqr6q6l0t/lBVqij93m5xr3eoPtRpmp4oYBkxgQEAAA==
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_234503_046242_5AD529B5 
X-CRM114-Status: GOOD (  12.42  )
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
Subject: [PATCH v4 0/7] Add helper for security policies
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
 security/kernel_pinctrl.c     | 65 ++++++++++++++++++++++++++++++++++++++
 security/policy.c             | 21 +++++++++----
 test/self/of_manipulation.c   | 14 ++++++++-
 test/self/of_manipulation.dts |  5 +++
 14 files changed, 269 insertions(+), 13 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



