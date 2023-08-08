Delivery-date: Tue, 08 Aug 2023 11:27:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0G-00CDpe-Rt
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 11:27:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJ0F-0002fk-4a
	for lore@pengutronix.de; Tue, 08 Aug 2023 11:27:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qUsEqz4jjj8cb1A9L3khVwWHN2nVhez/wmi5Up8F6EM=; b=gvaA+d75qmwNZqK5nPGP7C0m+R
	FzQoDGrvNOCJpySMyCnTIsj2Cf3BKQvSStEmYfDdH03FJ3K7tckVvB4Ef/8JvXBpj5r96KpgN1d+W
	Qvi/A+tilgE5SVBm0xevd2RWniHPvdr507LMz3INDEkPc5z+EE9Djo2EdDQgEv2ZKMgfqD/W+E+yI
	Jl169jR1wiJOcaPDHthlMksMtggb3+43pecPqBheQegZne8M+R0BkpXLBtQiZVI040UE+uesomW0H
	SK1hEWvTrWMZwGEXp1jOg+s6Tr0/hv3PhAGVQcOALyDJcWkHoGghgGdcpxV6zFEvUyFcQI4PjNs31
	B0034MNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIz1-0028NR-06;
	Tue, 08 Aug 2023 09:26:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTIyw-0028LS-2u
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 09:26:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-0002V4-WC; Tue, 08 Aug 2023 11:26:20 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyp-001wyq-Bj; Tue, 08 Aug 2023 11:26:19 +0200
Received: from rhi by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rhi@pengutronix.de>)
	id 1qTIyo-008YLg-2J;
	Tue, 08 Aug 2023 11:26:18 +0200
From: Roland Hieber <rhi@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  8 Aug 2023 11:26:16 +0200
Message-Id: <20230808092617.2037996-3-rhi@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808092617.2037996-1-rhi@pengutronix.de>
References: <20230808092617.2037996-1-rhi@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_022626_936326_101BB2FA 
X-CRM114-Status: GOOD (  12.81  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] doc: user: state: update note about redefining existing partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: ec34c2f5333adfee4724 (2023-06-07, "cdev: have devfs_add_partition return existing identical partition, not NULL")
Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 Documentation/user/state.rst | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 594c2c15945b..7f4547f75507 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -542,10 +542,15 @@ SD/eMMC and ATA
 
 The following devicetree node entry defines some kind of SD/eMMC memory and
 a partition at a specific offset inside it to be used as the backend for the
-*state* variable set. Note that currently there is no support for on-disk
-partition tables. Instead, an ofpart partition description must be used. You
-have to make sure that this partition does not conflict with any other partition
-in the partition table.
+*state* variable set.
+
+.. note::
+
+   If the medium has an on-disk partition table, the device tree partition
+   must either be identical in start offset and size to the MBR/GPT partition
+   or it must reside in non-partitioned space. If this constraint is not
+   satisfied, barebox will emit an error message and refuse to register
+   the device tree partition.
 
 .. code-block:: text
 
-- 
2.39.2



