Delivery-date: Thu, 21 May 2026 10:38:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyuy-002AkA-09
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:38:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyux-0003cB-4S
	for lore@pengutronix.de; Thu, 21 May 2026 10:38:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lLADn0kAc9k+uiuKkTK/ZCBcTkQZDQD7KQLC4NQArAU=; b=vrDTkuQMTIUF7BVUJJHKBL2poc
	EeafHnv8CWaUvz9IXnjix5tZm10CRWquHPaomURDN8qA3qjMGRwQWKIdRwYo+37SZ7GQGxCoV6AtP
	IITbAf/Qw6UTYxyBhyBXpfKV8xGDBLfbftqt+rSHlCdPVka4ecX2pwk8Npo+yFuIb3iqMG1yQ/g6c
	Ig+opk5Xal1iwUOtoOwWbOSAFw+0TcD7J7Pe9fdGCzhxi+0bCQdgQTIm6pobGyh7CZ1lCNlEw20VQ
	sOvsjkez60P41k4UXJfRVPd2F2EcvKQoIz0LDZplvktSEamtc7D6Wcfrtlw71Ddh67ZFmhpgydMWQ
	PZZ4lI4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytq-00000007Arg-34Qn;
	Thu, 21 May 2026 08:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytm-00000007Aoi-21GI
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:37:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0002MY-EF; Thu, 21 May 2026 10:36:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytj-0014d0-2W;
	Thu, 21 May 2026 10:36:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0000000DTPV-15EF;
	Thu, 21 May 2026 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:36:54 +0200
Message-Id: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACbEDmoC/x3MQQqAIBBA0avErBtQwaKuEi1CZ2oWaShEId49a
 fkW/xfIlIQyzF2BRLdkiaFB9x24Yws7ofhmMMoMyhqNlxOMjP4N2ykOtfVsFfM4KQstuhKxPP9
 wWWv9AOnqfb1gAAAA
X-Change-ID: 20260521-pci-of-dynamic-15df50ff7905
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779352616; l=1873;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=HZWQxv9n/Qfj7A7eKfpSYYlqb2bOJ5QgRl/wa2X8lyo=;
 b=5B3HUdQtEikHjf6WEMCFPEmisYNy/CJeFQEPv56rZuqoYL1Fbbd37PAUmzRMCk9Fzvkt3p+jj
 x+6LDTG/x4HCeLkXgATGUW2IFe3B1Romd1mg5QGvBU0X5ZEIbQo0aHF
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013658_532622_A5A407D1 
X-CRM114-Status: GOOD (  15.70  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] PCI: populate PCI host controller device nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PCI devices usually don't have and don't need a representation in the
device tree, but sometimes they do. This series adds support for adding
device nodes for PCI devices to the barebox live tree similar to what
Linux does with CONFIG_PCI_DYNAMIC_OF_NODES enabled. We also fixup the
Linux device tree with the PCI device nodes. This allows PCI device
drivers to register of_fixups for PCI devices: The barebox internal
PCI device now gets a device node (from the patched barebox live tree)
and it can use this node to find the corresponding device node in the
Linux device tree (possibly added by barebox as well).

In my case I do not need a PCI device driver to add a node to the
Linux tree. What I want to archieve is that a MAC address of a PCI
device that is initialized in a board specific way is forwarded to
Linux using the mac-address property. For this case there are is no
further code needed, the only piece missing is the creation of the
PCI device nodes added with this series.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      of: fall back to parent-prefixed encoding when address translation fails
      pci: fix DT node matching when reg encodes a non-zero bus number
      pci: add pci_is_bridge() helper
      pci: synthesize devicetree nodes for enumerated devices

 drivers/of/base.c        |   9 ++-
 drivers/pci/Kconfig      |  23 +++++++
 drivers/pci/Makefile     |   1 +
 drivers/pci/of-dynamic.c | 173 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.c        |  12 +++-
 include/linux/pci.h      |  14 ++++
 include/of_pci.h         |   6 ++
 7 files changed, 235 insertions(+), 3 deletions(-)
---
base-commit: 6bde1c5bcd518f378189c2f4b41704126713f3c4
change-id: 20260521-pci-of-dynamic-15df50ff7905

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



