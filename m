Delivery-date: Fri, 20 Mar 2026 08:18:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7Q-002wp1-0h
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:18:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3U7P-0000rI-6j
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:18:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lFfs5AqqS2EqNittDkj6mPA+F/XJ9ts42ZaWC71n2Lc=; b=W342agP/xP5sMT
	Li20oYVj9HN8TvOzFWEPU6Q3rc+vYH3QG7SkR5yFuJahA+lSPkZ9TgWxh3MOuqWp28R/q1pOnot7T
	cRQwhPBvqa0f0GSMDocsKxzl3dMc3aD841ZYu99rzoLoelKjgKkpluCegPuV/+K1VwRaukOLrfqX8
	zKW2rT4kR98B2k9aFW8pVxnvpQwjAYVfBhLBRqwrsVZhjWTbqF7nlAAbWygWckIrFmlFN8gdIPZyi
	HjRxS7U3F79Yf3F6YdtzZRJHN2srMs6+NGMQEWD3EQzXr3jH2lJUokYiM0KO8Eg+VWjlL37YhAcEO
	lSrINcuX1Tf3/KuDuz7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6x-0000000CE3W-0Oof;
	Fri, 20 Mar 2026 07:17:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U6t-0000000CE1G-3Cz9
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:17:33 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w3U6r-0000T8-Sm; Fri, 20 Mar 2026 08:17:29 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 20 Mar 2026 08:17:26 +0100
Message-Id: <20260320-v2026-02-0-topic-sconfig_console-v5-0-2efcaa7cb03e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIb0vGkC/43N3YrDIBAF4FcpXq/FGc3fXu17LGUxZkyFRYNmp
 aXk3dcUCoEWmis9HvnOjSWKjhL7PNxYpOySC76E6uPAzFn7kbgbSmYosBYSgOf1xgVywecwOcO
 TCd668accKfwSh061CjUogoEVZopk3eU+8X0q+ezSHOL1vphhfX3g+B7PUCplpDVGW90DfU3kx
 785Bu8ux4HYupBxq9Y71LUCImpNU2NP/UtVbtV2hypLReV3VWGnGpQvVbVRUexQVam06eTQdI1
 tjX1Sl2X5B3NbTGjXAQAA
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_001731_811544_F51362DF 
X-CRM114-Status: GOOD (  12.65  )
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
Subject: [PATCH v5 0/7] Add helper for security policies
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
 security/kernel_pinctrl.c     | 67 +++++++++++++++++++++++++++++++++++++++
 security/policy.c             | 21 +++++++++----
 test/self/of_manipulation.c   | 14 ++++++++-
 test/self/of_manipulation.dts |  5 +++
 14 files changed, 271 insertions(+), 13 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



