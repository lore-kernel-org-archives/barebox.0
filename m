Delivery-date: Fri, 09 Jan 2026 18:00:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFr8-0033fr-0c
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 18:00:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veFr7-0008E9-LL
	for lore@pengutronix.de; Fri, 09 Jan 2026 18:00:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vuuHb2120toqWYiMtMSLoBLomny0gIzbaDI6ebBybe8=; b=r04XaUYPizk+NUEJvEkfQoZG7Q
	W5+E3E1aD8nrIkPpLQzdf+i2a1zCX43jaeVdA9gjy9WfK7Hw7YUwtTr44eRVylX6lZFB2xZZQE9Ls
	om+jVRVotqONiL0Czs1mfO+Kb7udXymp3/PkFM20fY58heetXU7XsxDiuAMQmIg/hnWn/xlG+nfF6
	9rO1Ndsbp6pRa5jE0fWT5+EiCsBf/AtDp6AMy4dbSpx/ZHPpe2BAPMkvJGTKhcpFWEYCJ4UCwofmb
	Hi7wAeYZJHR1CqenxDxPO0N3TXz5Q+Go25fqne9CV15pCBLIvobAFf7cLdNYuIhZb4OPpE8+IOVJv
	n8ViYAYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqR-00000002gqk-0wcp;
	Fri, 09 Jan 2026 17:00:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFqN-00000002gno-1yA2
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 17:00:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1veFqL-0007jb-6V
	for barebox@lists.infradead.org; Fri, 09 Jan 2026 18:00:09 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri,  9 Jan 2026 17:57:26 +0100
Message-ID: <20260109170007.805177-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_090011_506385_809AF4FE 
X-CRM114-Status: UNSURE (   7.22  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] test: arm: boot test Debian image in CI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, we had no automated tests that actually booted a kernel
on every push (or PR). This series addresses this by 
a Debian ARM64 image and trying to boot it three times:

  - via GRUB
  - directly via kernel EFI stub
  - directly without EFI

Ahmad Fatoum (5):
  test: arm: multi_v8_efiloader_defconfig: use qcow2 image
  test: py: strategy: add helpers for booting kernel and bootm
  test: py: efiloader: prepare get_dmesg for more general usage
  test: py: add more kernel boot tests
  ci: add Debian ARM64 EFI loader boot test

 .github/workflows/test-labgrid-pytest.yml  | 20 ++++++
 .gitignore                                 |  4 ++
 scripts/fetch-os.sh                        | 35 ++++++++++
 test/arm/multi_v8_efiloader_defconfig.yaml |  7 +-
 test/py/test_fit.py                        |  2 +-
 test/py/test_linux_efiloader.py            | 75 +++++++++++++++++++++-
 test/strategy.py                           | 36 ++++++++++-
 7 files changed, 171 insertions(+), 8 deletions(-)
 create mode 100755 scripts/fetch-os.sh

-- 
2.47.3



