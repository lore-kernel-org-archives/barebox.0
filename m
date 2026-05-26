Delivery-date: Tue, 26 May 2026 09:19:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm4a-003vQR-1P
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 09:19:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRm4Z-0007Ed-LE
	for lore@pengutronix.de; Tue, 26 May 2026 09:19:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fdo8pNwd1e6glh3T4dJ0Pl8Q6w0idCfe03ZxI9q1/Qc=; b=CY7GA63O5GUwY9qabR4LD9GWEY
	EJZ117mGveDKNmU20ntZmKtUwyYXSmwuNxdMu3uUorJt2H3sCuGz7S9cyeUI07g6jyUwW1dp3rlPK
	cEhHl1lChCFk4mQyfV516t+U9nd+DrD4OuQnhPFWUwszVrLBob7z6UaAjuM2x9CjlOXv7V2rRkNs0
	I/J6G+Kz4oZSRVpq4f1IJ4EPcOc2Vhz5QKARsFgtrEsXPSiLkEdJ59WaxBCp0pBANZ35qBp6ls+DX
	cPPDVIhXAJNPxx90CbAUCnxpgHdn+W48iVJkafgtaWJm7izwgDmxHeSBXhg7/opqNBcS7wEhbNJLc
	8Y5rxfAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRm4M-00000001FYE-1L8I;
	Tue, 26 May 2026 07:19:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRm4J-00000001FXc-2ZzR
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 07:19:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRm4I-0007B8-0M; Tue, 26 May 2026 09:19:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRm4H-001sUQ-1F;
	Tue, 26 May 2026 09:19:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRm4H-0000000Gn04-3b3s;
	Tue, 26 May 2026 09:19:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
References: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
Message-Id: <177977995385.4001509.6236911223033605166.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 09:19:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_001915_735547_C12C5072 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: Re: [PATCH 0/4] PCI: populate PCI host controller device nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 21 May 2026 10:36:54 +0200, Sascha Hauer wrote:
> PCI devices usually don't have and don't need a representation in the
> device tree, but sometimes they do. This series adds support for adding
> device nodes for PCI devices to the barebox live tree similar to what
> Linux does with CONFIG_PCI_DYNAMIC_OF_NODES enabled. We also fixup the
> Linux device tree with the PCI device nodes. This allows PCI device
> drivers to register of_fixups for PCI devices: The barebox internal
> PCI device now gets a device node (from the patched barebox live tree)
> and it can use this node to find the corresponding device node in the
> Linux device tree (possibly added by barebox as well).
> 
> [...]

Applied, thanks!

[1/4] of: fall back to parent-prefixed encoding when address translation fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f550a03ae82 (link may not be stable)
[2/4] pci: fix DT node matching when reg encodes a non-zero bus number
      https://git.pengutronix.de/cgit/barebox/commit/?id=c532dc4f8e3e (link may not be stable)
[3/4] pci: add pci_is_bridge() helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b1594f8748d (link may not be stable)
[4/4] pci: synthesize devicetree nodes for enumerated devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=461b93d42776 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



