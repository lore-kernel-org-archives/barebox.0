Delivery-date: Thu, 21 May 2026 10:37:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyu9-002AiB-02
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyu8-0002aT-DU
	for lore@pengutronix.de; Thu, 21 May 2026 10:37:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eDrCRI7yZom1I6T9GUbOkYRhFsxPnFi75NMaNBSF+4E=; b=i84FCoutFD8LShGP1sD3w0wvdO
	fEN2KdKzUYr8FexzCIVYgPaCxJLQzrfR1yldlYNAMMSm7vEGulvpOniZjbGtodeLOduxPuAMu2aH7
	Po4hjqSkqKKPvs7GfzTdZc2+MUxsDbAbaqpAf+rqX/7Cjf45lK1Zn55oQlnzv8AGy7QQ8nP1nE2x/
	ynOcmhwdqlimw7LYeSWMv7HJuwCbQHmJt3sxdJOlNQtHAA9j2Y+YsYsHkoufv1K0zQbFDrkufaLVE
	8viV4vbBq8A12bNIYqt4B/i8Q4sS9xTHZgn6nqD2I3+SWPq1WE80a9gnZP38JD3+GQE4oZ/6MaZ3F
	ddUf7I3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytq-00000007ArU-2NB2;
	Thu, 21 May 2026 08:37:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytm-00000007Aom-21KY
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0002MX-EA; Thu, 21 May 2026 10:36:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytj-0014d2-2V;
	Thu, 21 May 2026 10:36:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0000000DTPV-18VZ;
	Thu, 21 May 2026 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:36:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-pci-of-dynamic-v1-2-951f1878e378@pengutronix.de>
References: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
In-Reply-To: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779352616; l=1290;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3Y+Z0kE/33uGwr95h5xxB9z+9TlJ7BjrRQKU0RSgRD8=;
 b=pGlBx8KSkN5o/CHq7J+A96yZnoVX1tOPC0CFOVGshIRFIGFiiCRTWj5TSbm9S1FbtnpcLV677
 tKQyjeTLJDmDAk44T/u+IIhCAMTucjgqmXO+PWNKu+G2kg31Ak3N73I
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013658_530631_63445281 
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] pci: fix DT node matching when reg encodes a non-zero
 bus number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

pci_of_match_device() compared (reg[0] >> 8) & 0xffff against devfn, but
devfn is only 8 bits. The standard PCI DT binding encodes the bus number
in bits [23:16] of reg[0], so any child node with a non-zero bus byte -
which is the common upstream convention - yielded (bus << 8) | devfn and
never matched a plain devfn. For a typical host -> root port -> endpoint
DT nesting (e.g. pci@0,0 { reg = <0x300000 ...>; ethernet@0,0 { reg =
<0x310000 ...>; }; }), the root port match failed and scanning never
reached the endpoint, so endpoint properties like local-mac-address were
never picked up.

Mask with 0xff to match only the devfn byte, like Linux's
of_pci_get_devfn().

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 32624fe05b..8d18889109 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -558,7 +558,7 @@ pci_of_match_device(struct device *parent, unsigned int devfn)
 			 * address, other properties are defined by the
 			 * PCI/OF node topology.
 			 */
-			reg = (reg >> 8) & 0xffff;
+			reg = (reg >> 8) & 0xff;
 			if (reg == devfn)
 				return np;
 		}

-- 
2.47.3



