Delivery-date: Tue, 24 Mar 2026 10:53:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySB-004SF9-2F
	for lore@lore.pengutronix.de;
	Tue, 24 Mar 2026 10:53:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4ySA-00084Y-SE
	for lore@pengutronix.de; Tue, 24 Mar 2026 10:53:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZoyxkY000+hl6/zoxp3ie5Qqq+sFSGM9dJ5PAA13NI0=; b=H1euS5ArUcAgpR
	THhQ+F38XMAfxTK3jN2uxVLStN8SHCFRIVIzz8OmMb3iapp3CJxtSPBKtiGsO2977KrNVk0AVX+cM
	ci98+al4egWLCv6RiPamr5/NK9Yf+AoseMEiKfKwGqhAszNzNBYur9UKHLSmVdosd9Bx1G0Ahgt5k
	oEIZXnSdpyK8SV+XwpqZMR5u8ZzJg+3cpNk+dGdijpLv9mRTPTNumnSTiaSYQzoNFj1h5vDMdGIId
	BDJL4XZ4sxP02FqZT/tyVf34UsKryYE2WhaCOir3X2S2kBTLxn8973CbvN5mZVDcwI/wJPQsArKwA
	c+DSQNLP24YKi3/yxavA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRf-000000018hl-3yw8;
	Tue, 24 Mar 2026 09:53:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRc-000000018fw-3Heh
	for barebox@bombadil.infradead.org;
	Tue, 24 Mar 2026 09:53:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=ZoyxkY000+hl6/zoxp3ie5Qqq+sFSGM9dJ5PAA13NI0=; b=N33xw5VcaIYXLD/4nR6wezSOUp
	/ewGqzdSJ/hTFIXrRiKLk0UNiYMlJm0F8Itbn5IOtmYcPkcP0uhiXPVCHuX1srhv66gcz9dsLKp7M
	kyBHzS49fVcfp8xTK8HXaozAxTNaLHYQ4doNYCxPfmQBYCOUNxCP8cLaKe5uNduVaUxE7dj3R3vGM
	yQC4penM6tqdRAa1REZFxiOYVkt1oUCm83JJj8802pnVBCtVimVCwKC0uXoLSXOo5/EZwEm2J7Ecu
	cwj5WxfUA80zGDG3huLQ48Y3QBWwqrgg+NqlZSEufD/fiDe0RRx1HC/9snB0YdYwrccWeP1OvQMoT
	0XzBV4AQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4yRY-0000000Do1W-0Ic5
	for barebox@lists.infradead.org;
	Tue, 24 Mar 2026 09:53:03 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w4yRU-0007eb-55; Tue, 24 Mar 2026 10:52:56 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Tue, 24 Mar 2026 10:52:33 +0100
Message-Id: <20260324-v2026-02-0-topic-sconfig_console-v6-0-f0eb6af2cc06@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOFewmkC/5XQ0WrEIBAF0F9ZfK5FRxOTfep/LEsxkzErlBg0l
 S1L/r1moRBooOmTzlw5F3ywRNFTYufTg0XKPvkwlqF+OTG82XEg7vsyMxBQCyUlz+uNC+CCz2H
 yyBOG0fnhvRwpfBCXrW40WKlJ9qwwUyTn78+Ky7XMN5/mEL+ejVmu2x8c/sazLJFG5RCts52kt
 4nG4XOOYfT3157Y2pBhq9YH1DWSRNSgqaGjbldVW7U5oKoSUXldVdBqA2pX1RsVxAFVl8hiq3r
 TGteg21Wr/6pViYAcWmuwE+r3vy7L8g1q0AedLQIAAA==
X-Change-ID: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_095300_168138_DC684F82 
X-CRM114-Status: GOOD (  11.95  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v6 0/7] Add helper for security policies
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
 security/kernel_pinctrl.c     | 67 +++++++++++++++++++++++++++++++++++++++
 security/policy.c             | 23 +++++++++-----
 test/self/of_manipulation.c   | 14 ++++++++-
 test/self/of_manipulation.dts |  5 +++
 14 files changed, 272 insertions(+), 14 deletions(-)
---
base-commit: 1d386a53086d28a0c4eda138ae9408a418b97b7e
change-id: 20260311-v2026-02-0-topic-sconfig_console-194842a14e1d

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



