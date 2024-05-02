Delivery-date: Thu, 02 May 2024 12:18:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2TWJ-00EpzJ-2l
	for lore@lore.pengutronix.de;
	Thu, 02 May 2024 12:18:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2TWJ-0004o4-9d
	for lore@pengutronix.de; Thu, 02 May 2024 12:18:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aU8zNqoeUyQirdXSlyy9rnlrQJybQngvikeCMjiEkgc=; b=3kDBa/2K1vrj8B6mkSeU9XtwCD
	0a/9vfajX8720PSVDtneT78gftZNeVMO821te4uxU7CxorM54EBFM1FA8poCb2u7xMsNBrXdc03LZ
	bVucJZmin9I2lbyYEquCtRJFWBhBThMa0rLAuOBwuKg/2l7ajwUWy7t5puvuqIob32aoP96QXYHk0
	W48Hz8fD1gN8kJiXSMWX0fT1MGsoVOh6ykzJShevPJDkpy8SzyG8e0qcG9yXNT6tt4yvhahioBm4E
	NGnIxCCoAZ9D0y7VuMZsjhims4Ou9a+sGJVJ5GBvpnP3pMEWYUORvvdUmjeNVvsJJDnhuKtyCNoM7
	W1tcPmmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2TVh-0000000CItU-32cK;
	Thu, 02 May 2024 10:17:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2TVg-0000000CItG-2JaW
	for barebox@bombadil.infradead.org;
	Thu, 02 May 2024 10:17:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=aU8zNqoeUyQirdXSlyy9rnlrQJybQngvikeCMjiEkgc=; b=Ca4ZgxWLdkF5gAbC4BCLo2Csa+
	b+MfenMUrMB4Z9UNhO9n0OzsDdZJlhLRLzkLzFNKP15nMFQEjKZNiWmgI7jNVSCkU03yt1H/2tp8d
	0tXqMH6oLOzJ66Si6HEu0KFnHBSpTI6OfGjyDtyDBbLknX9qLOPhE5a7RBhSvMW4X5ZvIUE6elf7k
	q0CDULBltLSsoAiyfKv/2ijbfid0WM5OVF5uW0+Blyj5JRjEAw3D+ycZucdu5jkQCIh1Ef4lbfVbY
	rwU2F+A1q1mGGE/R6+I6OHZtxgD+DLQGQgUmX40suwTFnvRxX3zt9Oxu9bAozOWow8esf/4fuaSDk
	2ydDG0YA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2TVU-000000007q2-2FTb
	for barebox@lists.infradead.org;
	Thu, 02 May 2024 10:17:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2TVF-0004Zk-Cg; Thu, 02 May 2024 12:17:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2TVF-00FVCj-04; Thu, 02 May 2024 12:17:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2TVE-00Ax09-2v;
	Thu, 02 May 2024 12:17:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: has@pengutronix.de,
	bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 May 2024 12:17:24 +0200
Message-Id: <20240502101724.2609941-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_111742_832509_06B6DB6B 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: pca9450: print reset reason as hex if unknown
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On an i.MX93-based board, it was observed that a potential ELE-induced
reset ended up with an unknown reset reason. To aid in debugging this,
print the value in hexadecimal when no mapping is known.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/pca9450.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 8fa5363f8a60..be357c10239f 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -52,7 +52,7 @@ static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
 		type = RESET_EXT;
 		break;
 	default:
-		dev_warn(dev, "Could not determine reset reason.\n");
+		dev_warn(dev, "Unknown reset reason: 0x%02x\n", reg);
 		type = RESET_UKWN;
 	}
 
-- 
2.39.2



