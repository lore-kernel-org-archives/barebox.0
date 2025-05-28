Delivery-date: Wed, 28 May 2025 15:16:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGe5-001CSR-0W
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 15:16:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKGe4-00051f-DL
	for lore@pengutronix.de; Wed, 28 May 2025 15:16:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qZ7i1ysam1yWAA9oDIzU6OCTkPKkcCI4wPetP5qD9F4=; b=YChKDGtEj6Q1tD26rg9n+hnrQj
	CiEJwCjkyLvvz2ooMS1UK4XaWNQfpWw4DhicT0fa5+UO+0fHcROrl2f6hdXdH0OZIEbs7K3LV++UZ
	r3Wq/ukUMPJjJWB394MpMu0kP+U9UQwLZnVq3MP/qLHpfgvLgHqVmkRidIBd5+nxx74WSUvVhSPqB
	ZXBUL5bN8sn5BalwhSSzIe8t2hq9X0RE1Z541J/cckrus0ZztRAbUdOvSOE4NhuQPK3EAb7A4RTuo
	bOLK8sfYT/lh/P2OQp1RjnxXONRDGvmBWdw0M2H3LZjInFOmHohxPF66vE4wfa4ICdqiOetIamBJL
	qDfB3nCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGdU-0000000DDFF-2wNj;
	Wed, 28 May 2025 13:16:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGbu-0000000DD8O-2PV1
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 13:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qZ7i1ysam1yWAA9oDIzU6OCTkPKkcCI4wPetP5qD9F4=; b=JYGfLd3F4+HkV49MXqcQhYapdh
	flVfKrT28z7kt5/79rurRqnmWWZHg+OvkVSAjqFDfBETi9btS1zzslsuuQZZdenxVvQANcWblSprQ
	rMbVLnrQzcR2Nt4FDudobI8dyQEStCo4QgkgR6Eux/c2mbT9qusAvP55Z9MptKwFrqnIqLnHYlGnU
	KioPnB7PSn78E0h9lFafkTS60NYoeloRe7v9SjpcpuSY7AneV+jsMNOP161LKDV6qfOrjoY7nMQZU
	D6QKhJdPWC5qTUhaFYU2uqVxxzpQZXu71a2EIpNG8rRdQGneRlCas3+LAp4IS3HL2vdiAyuZKYmdp
	Pbp3nBRQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKGbr-0000000DfSz-35W4
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 13:14:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uKGbl-0003JX-0N; Wed, 28 May 2025 15:14:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 28 May 2025 15:14:11 +0200
Message-Id: <20250528131411.935668-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528131411.935668-1-a.fatoum@barebox.org>
References: <20250528131411.935668-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_141419_786476_AFB89DE7 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-7.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] Documentation: migration-2025.07.0: document CONFIG_DEEP_PROBE_DEFAULT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Out of tree boards will get a warning on startup now asking them to
explicitly opt-in or opt-out to deep probe. Document this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/migration-guides/migration-2025.07.0.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/migration-guides/migration-2025.07.0.rst b/Documentation/migration-guides/migration-2025.07.0.rst
index 896d2552e9ea..fe47c3109745 100644
--- a/Documentation/migration-guides/migration-2025.07.0.rst
+++ b/Documentation/migration-guides/migration-2025.07.0.rst
@@ -7,3 +7,13 @@ Configuration options
 * The legacy ARM 32-bit ATAGS mechanism is now disabled by default.
   It can be re-enabled using the newly added ``CONFIG_BOOT_ATAGS`` option.
   Use of ATAGS is deprecated. Users should migrate to OpenFirmware device trees.
+
+Board support
+-------------
+
+* barebox now warns at runtime about boards that disable the option
+  ``CONFIG_DEEP_PROBE_DEFAULT`` and list neither the ``barebox,deep-probe``
+  nor ``barebox,disable-deep-probe`` property in the top-level device tree node.
+  It's recommended that all boards switch to deep probe.
+  If deep probe breaks your platform, please report to the mailing list
+  and set ``barebox,disable-deep-probe`` in your device tree.
-- 
2.39.5



