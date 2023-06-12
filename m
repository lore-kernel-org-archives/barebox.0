Delivery-date: Mon, 12 Jun 2023 15:04:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hDV-003qhT-3T
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:04:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hDR-0001GU-Sz
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:04:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DH5GFSF2i09KY54GV2OTIRu3VZXyLlLpb7fSY/0qgn8=; b=WdMpG2Wjefn9zhto2ODVKG7t+s
	LStF8AexZ/z6EkOyyGY5NuXUTAqVL51LNVMKQnCJWxbPvk5Bae+Gjek1RHtOUO0QVqE5++lLTN04l
	bn985mRWXD3ZMKbSFwM34AmcRgDcuJeFTZ3rG54KYh78koJwYE3g/8f31MhBwzr4w/thdMxFJr+2T
	T6WckGAYSNLju6aPJxnYIpVga4C4nSwk0jaQJhmx/cnV/B+t39umH/Ju7qnZltF+yL8snUbmD9AtP
	fpCJoXv33pUJzSKtt108nHO3NCTaLeeVMf6+ryagzRRZRgoGnvZ4RAy88ajJrJoWIzu41mmOFm+F4
	TxDUntTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCi-0047rB-1n;
	Mon, 12 Jun 2023 13:03:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCf-0047nU-21
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:03:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hCe-0000LM-Dc; Mon, 12 Jun 2023 15:03:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hCd-006tWb-Fr; Mon, 12 Jun 2023 15:03:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hCc-004aWr-Sa; Mon, 12 Jun 2023 15:03:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:03:22 +0200
Message-Id: <20230612130322.1093717-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060325_661571_788F7685 
X-CRM114-Status: GOOD (  12.39  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] boot: don't print error message on -ENOMEDIUM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It can be expected for a boot entry to usually fail, e.g. when it checks
for a removable USB drive that's not always connected. Such boot targets
have the choice of either returning 0, which means it was a dry run and
boot aborts or an error code, which yields an error message.

Let's handle -ENOMEDIUM specially and not print an error for it, so it
can be used in such scenarios.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index 9c6fc3044271..4edea682219b 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -151,7 +151,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	}
 
 	ret = be->boot(be, verbose, dryrun);
-	if (ret)
+	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed\n", be->title);
 
 	return ret;
-- 
2.39.2



