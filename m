Delivery-date: Thu, 12 Jun 2025 12:07:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqe-006TXQ-0h
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 12:07:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPeqd-00073t-Jx
	for lore@pengutronix.de; Thu, 12 Jun 2025 12:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rNqy0k1aa9aKQ9s/KnWlUrXVto8oteITdFEVQtLYlAI=; b=MNAu6pQOKrqsxCrghS98btGOt1
	6ezi3Lo/8CESYXB3r32BAtBxHc7KTTykhVbvMDAVJ7hxQ7eTNsrAulbh3Lx3vCGLBSQzfLi9c+E7H
	13d3WKdMeRKcO9CO1NA2LlUYjtOCCXShhM9oE09wdc9GR5n1aLUpUVGtcOUmSdKeUBDq5q8g3WytT
	DQSRdW9+paR/cipKtCMUsTVi4ZJqml3jg8+yaVxFdqj0if+Y0ZberyJ3QkldiqoCdKrfn58L4wjYK
	CmwA+/esj8lgtMoZ0shLw3Yp/GReWSU0Brnksb9iYZO9f1/Jv5tbXpMoIh3Sv6j5hV+SAQggjP+5t
	4gOCdVHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPeqA-0000000Cv1d-2L1G;
	Thu, 12 Jun 2025 10:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPdjB-0000000CjsA-2l8D
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 08:56:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uPdjA-0001k5-Fj
	for barebox@lists.infradead.org; Thu, 12 Jun 2025 10:56:04 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Thu, 12 Jun 2025 10:55:59 +0200
Message-Id: <20250612085603.4190573-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_015605_698631_689ADEB7 
X-CRM114-Status: UNSURE (   9.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] test: py: add FIT image boot test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series assembles a FIT image with a compressed barebox, an
uncompressed device tree and a small initramfs.

Then the newly introduced test_fit.py checks that it can be booted
and device tree is fixed up with command line, initrd location,
generic and custom fixups.

It already caught a regression in next that broke initrd loading on
ARM64 & RISC-V and it can also detect the FIT image compression
regression in v2025.05.0 that was fixed by Stefan recently.


Ahmad Fatoum (4):
  ci: pytest: mount virtfs with signed FIT image into VMs
  test: py: add FIT boot test
  ci: pytest: multi_v8_defconfig: pass --runxfail
  ci: container: add device-tree-compiler

 .github/testfs/multi_v7_defconfig-gzipped.its | 57 +++++++++++++++++
 .github/testfs/multi_v8_defconfig-gzipped.its | 57 +++++++++++++++++
 .github/workflows/test-labgrid-pytest.yml     | 22 ++++++-
 scripts/generate_testfs.sh                    | 26 ++++++++
 test/Containerfile                            |  1 +
 test/arm/virt@multi_v7_defconfig.yaml         |  1 +
 test/arm/virt@multi_v8_defconfig.yaml         |  1 +
 test/py/helper.py                             | 15 +++++
 test/py/test_fit.py                           | 63 +++++++++++++++++++
 9 files changed, 242 insertions(+), 1 deletion(-)
 create mode 100644 .github/testfs/multi_v7_defconfig-gzipped.its
 create mode 100644 .github/testfs/multi_v8_defconfig-gzipped.its
 create mode 100755 scripts/generate_testfs.sh
 create mode 100644 test/py/test_fit.py

-- 
2.39.5



