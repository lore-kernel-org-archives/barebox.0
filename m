Delivery-date: Fri, 13 Mar 2026 14:34:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eQ-000DM8-23
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:02 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12e5-0008AP-Db
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uCbC4E//FHUnChRLGoqAbH/+5Dtr+ZSj6NMdheTHIao=; b=vZdUm4rCNyHw3n
	9PtrTq3sHsdgyQK6Db/EmV/PXWrlZ029E7V/dghcCsbxiCcpOdzn9m/KWFImSbin0Nmlem9/evf2f
	6xe5I3UMI8WQrugCxZwDGlygoW8+iVTL/Pr8OCOhUXd3kGU6rir3v0VgzpbkvUEOry5WthB/ZoyRn
	HEgIefwBJm+rZLFZBLoSnQ9FUE5/0IJUOieTlfkL5hucGczXHiKrF3MoKPjM0Uo8XpHEuyO/WR+js
	JoqJvNF76PQrSwlwr8RP9TCvtS8MO92JPhikSdlxR/gn1XD0/3k6v/RN7NVl2DVSBgjCa/ZsWACq7
	GNYYCLmTm9jdPYDBrFYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dC-00000000Fbs-09rD;
	Fri, 13 Mar 2026 13:32:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d7-00000000FWe-0eC8
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=uCbC4E//FHUnChRLGoqAbH/+5Dtr+ZSj6NMdheTHIao=; b=CpMrwAemd3Ol0wNZ2XLEmrx1Rb
	a4TACdqV4wzKWECTP0RZkaYxORp/zWrQ9m6u0ST/z3jaT8p9ZaeewjcvDAr9tXxTOtBuQlMW/sjcQ
	UAiAiX6P8jufWAU1/lSA1jyONZhcX1fK3I+Ac3ryil7b75pTHRnE2W0P5H2B0aeK8Dn7Xqf5XDTyA
	VUdtV6qOCfzQSfm91Tx12NiVVEww/W8gUIktEmKU31iOf2X2yEsj44m07l1f3xPFC86B0AAzI/7nU
	9GObRMlTTSsMdYkKMwnvogAWoQb0+QFPB8TBcpw6iV8Cw/kmoaROLPTcPlPEKiXmN+5ChwmVTXzjN
	pQJfSiIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cz-00000003OSl-1GRB
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0006pW-TN; Fri, 13 Mar 2026 14:32:32 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cy-0005TI-1x;
	Fri, 13 Mar 2026 14:32:32 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-1hbg;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:25:32 +0100
Message-ID: <20260313132631.2257573-49-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_086566_D7CC5CB4 
X-CRM114-Status: GOOD (  16.03  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 48/58] regulator: fix handling of off_on_delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

In Linux the off_on_delay field in a regulator is described as:

> The guard time (in uS), before re-enabling a regulator

The primary user is the fixed regulator which puts the value of
the "off-on-delay-us" property into it.

In barebox we put the off_on_delay into the enable_time_us field
which is the delay we introduce when turning on a regulator. This
is wrong and fixed in this commit.

The off_on_delay is defined as the time we should take before
re-enabling a regulator. Linux does it the complicated way of
remembering the time when it was last disabled and delays the
re-enabling if necessary. We use the simple approach here of
just waiting the off_on_delay time in the regulator disable path.

(cherry picked from commit 8095b70ba4e9738f6ffec745e8448bd11a2ac348)

Fixes: 26a4c78917 ("regulator: add support for struct regulator_desc::off_on_delay")
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.barebox.org/20260129-regulator-ramp-v1-1-6269bd55d432@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/core.c | 5 ++++-
 include/regulator.h      | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index f18622cba80c..6e18bc8a2d32 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -96,6 +96,9 @@ static int regulator_disable_rdev(struct regulator_dev *rdev)
 
 	rdev->enable_count--;
 
+	if (rdev->off_on_delay)
+		udelay(rdev->off_on_delay);
+
 	return regulator_disable(rdev->supply);
 }
 
@@ -309,7 +312,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
 	node->dev = rdev->dev;
 
 	if (rdev->desc->off_on_delay)
-		rdev->enable_time_us = rdev->desc->off_on_delay;
+		rdev->off_on_delay = rdev->desc->off_on_delay;
 
 	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
 		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
diff --git a/include/regulator.h b/include/regulator.h
index cb542b05c696..0b46714fcfa2 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -124,6 +124,7 @@ struct regulator_dev {
 	struct device_node *node;
 	int enable_count;
 	int enable_time_us;
+	unsigned int off_on_delay;
 	int min_uv;
 	int max_uv;
 	struct list_head consumer_list;
-- 
2.47.3



