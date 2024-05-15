Delivery-date: Wed, 15 May 2024 11:25:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7At9-00FbXK-1t
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 11:25:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7At5-0005Yd-R8
	for lore@pengutronix.de; Wed, 15 May 2024 11:25:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1MdOvKlJgzgRAJYz3I1dg/kP290Gx1o8TJGhqNNFNiU=; b=vHwyStMOga3AbhUH8ozYnCdN5O
	KSyRvTCILJQGuFOg7JIW++AcM7qwKWsFVrzSxkxUfAD8UKIV/jy29mK+4hgx7ngfRrRlSVHpH8NLt
	feK9OXbhCdjihURz+Fu5CTEVPSEG1TSblVEy7/eS9WCPZohoeFAHLYohamNlhbHyUP3bjz/1MGnBD
	Yg08dQRuJaGoq/H3iW2P86xun4dFadeiI7CZrpW8xYyNU0eBIYcuhuBmihqHWIwft6tZg/KvH00c+
	bw7amVgeNP1AytWHf7BNptU/hb46Qg3J9Wx1MGmZPTaelId9KMp4KIjR4fuKl4kfx30uuQpdErP7z
	okriir7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7AsY-000000014f5-0Qx6;
	Wed, 15 May 2024 09:24:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7AsU-000000014ea-1OX0
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 09:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7AsS-0005Mj-I8; Wed, 15 May 2024 11:24:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7AsS-001VdV-5X; Wed, 15 May 2024 11:24:48 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7AsS-000L35-0F;
	Wed, 15 May 2024 11:24:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 11:24:46 +0200
Message-Id: <20240515092446.80738-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240515080507.4056255-3-a.fatoum@pengutronix.de>
References: <20240515080507.4056255-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_022450_394129_04DA78F0 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! partition: reparse tables only if CONFIG_PARTITION_MANIPULATION=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

partitions: add prompt and help text for CONFIG_PARTITION_MANIPULATION

So far, CONFIG_PARTITION_MANIPULATION was only selected by
CONFIG_CMD_PARTED and influenced repartitioning support.

Now that it's used to guard the feature of reparsing partition tables,
it makes sense to give it a help text and a prompt for devlopment usage.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 97a03217eac9..67cbbf5197da 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -888,7 +888,15 @@ config PARTITION
 	prompt "Enable Partitions"
 
 config PARTITION_MANIPULATION
-	bool
+	bool "Runtime reparsing of partition table" if COMPILE_TEST
+	help
+	  Say y here to have barebox reparse the partition table automatically
+	  when it's rewritten. This is useful when using the parted command
+	  or when writing full disk images that change the existing partitions.
+
+	  Reparsing the partition table will delete existing partitions and thus
+	  may break users that don't do proper reference counting. For this
+	  reason, this option is currently disabled by default.
 
 source "common/partitions/Kconfig"
 
-- 
2.39.2



