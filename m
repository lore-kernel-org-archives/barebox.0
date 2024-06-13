Delivery-date: Thu, 13 Jun 2024 16:04:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHl3i-005P09-1G
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 16:04:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHl3h-0003Ni-Ov
	for lore@pengutronix.de; Thu, 13 Jun 2024 16:04:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V5pWVVxjgYqPqEmvQLQ1JwdIAAMHieFywPImhul0N0s=; b=nos3T78QK8QvifJEFdE5MM6Y3S
	J4xCSZZc7co6aUTMiEdAuBBk+j2ae3VROzpyUUxAskwDnPR6kPkS6T0o+j1BaNH+u12jSd/y9gmNv
	p3d0GgF4ysj/inpASN75a2BFGkA8NILzbXBAIBH4SlZQmFNc+dkr7ZYYmYHiNAkh7VxHQk4Ai4Y0c
	YLtQN2sI7I5ON5q2ThPrCFHtdBf2lCPFNFCK8pqvINl8wwPpdp75JpkNAsrAw9sZXKxf0arZxBl6E
	67AHxDxsSLqqx68AmSA86nuZ1lHazPtUHxaKevsaSiKuljQ4jO/toYka6vTr6r5tHxk8XIsE4SOzB
	w1coACVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHl3Q-0000000Gs1l-1h9F;
	Thu, 13 Jun 2024 14:03:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHk26-0000000Gb4s-48HU
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 12:58:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHk22-00045H-2l
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 14:58:22 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 14:58:08 +0200
Message-Id: <20240613125818.30499-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240613125818.30499-1-m.felsch@pengutronix.de>
References: <20240613125818.30499-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_055827_041579_02F38455 
X-CRM114-Status: UNSURE (   6.73  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/11] FIT: fix missing free in fit_open error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Free the handle if read_file_2() fails.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/image-fit.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/image-fit.c b/common/image-fit.c
index 251fda97b3fc..008804e6a6c3 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -922,6 +922,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
 			  max_size);
 	if (ret && ret != -EFBIG) {
 		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
+		free(handle);
 		return ERR_PTR(ret);
 	}
 
-- 
2.39.2



