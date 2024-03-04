Delivery-date: Mon, 04 Mar 2024 20:05:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcw-008dCY-2Q
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcv-0000di-C6
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=emfq+E3lnAzPffAhunf1rbmaS36LLLdRObKHDs2vR58=; b=cK3s9VfI1oAC1vruSO0VOSNbgu
	FBCxV9AG9kCeL7wlT6q2M+A6ijDBDwtisn2IK4Dmd9KmpA8z4NQwylkSS1G03FV8qBu+2996wIiul
	K+DzU9Y4eLNNPDzXjJksnEgjs8h5CJd0qapI80vfKZ1uretTUcdMXvoNLppMRCh3ab5nIA6qyeeKW
	aHOYOVoQgr/zO4naaajdWA7UfLHkCIboej4vFWD+PYs76pWXaxeNY3Y3Yly4fXrhWQuEIFrRJXXr4
	wHe0ODNVFV9j/gocabUgvQUhZRrNerO6nU6Jv1NiQSW9Ud5c7h1B4UkOJH/f057JWma2tVHu6yhzW
	i7D3ghmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcJ-0000000AJp5-0fQx;
	Mon, 04 Mar 2024 19:04:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaP-0000000AIRj-3o5g
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=emfq+E3lnAzPffAhunf1rbmaS36LLLdRObKHDs2vR58=; b=fcbYeTablFVxHCZ13mgLDcBhU1
	bOmWqYNA8A/Rgtl480Zw+gKtgEbuNXQV32gGlM8MOygkOHxmwQwqayTooZVbLp7sLy13QzRMpHqc/
	7xyTDnEBHP2kZcaCFoq334O/A4b462cAX/DeXTamnhih/cyzSJ0k/QWpZEtNj+NOiCeqDV1xT2b8f
	BWKMRzISKeb20cvQgZx2y5vPdv+RCZXwHSRXYCfSgIe1MfOf5/NbeWEbPx00qWwdELb4RNcLmtJjB
	pWiA9jQeuwunRHQKu9Hs/DecQpNRen50YFv2T2RSer8ST/f1fPxnmxMGz1OL4QQ40slYGAeLigcfz
	lsYNueIw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051vg-18Vi
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaJ-0006Io-8A; Mon, 04 Mar 2024 20:02:47 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PMa-PS; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYK-00Ed9V-0B;
	Mon, 04 Mar 2024 20:00:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:07 +0100
Message-Id: <20240304190038.3486881-23-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_405695_13D8C514 
X-CRM114-Status: UNSURE (   9.66  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 022/113] commands: stat: display bootable partition table bit info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no common code yet, but board code may iterate over cdevs to
handle the boot partition specially. Make writing such code easier
by adding the new flags to the stat command's output.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index a7097dd3946e..b3eac2e55ad6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -101,6 +101,10 @@ void cdev_print(const struct cdev *cdev)
 			printf(" gpt-partitioned");
 		if (cdev->mtd)
 			printf(" mtd");
+		if (cdev->flags & DEVFS_PARTITION_BOOTABLE_ESP)
+			printf(" boot-esp");
+		if (cdev->flags & DEVFS_PARTITION_BOOTABLE_LEGACY)
+			printf(" boot-legacy");
 		printf(" )");
 	}
 	printf("\n");
-- 
2.39.2



