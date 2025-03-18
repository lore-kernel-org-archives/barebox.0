Delivery-date: Tue, 18 Mar 2025 15:47:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE1-0014eu-1j
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYDz-0007oz-SU
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gq8K56n22qHkgJZQx9MIDaaRNv2GWj2h5emFIb9Hi/Y=; b=ChhIoBtiijDOT0Gtd5qZzZSigt
	3aaBaKygV7MmfR3fV6XJvoF1bgiB3waBGn0G3uEwtqSnd2TXWUK0W6TgXW58EAzzPWkYABk0c/sHC
	tKUNaa+XzoI3QG8FsyvChkAnva4ciDvpJU/2YBl2VUsOjLg3kj8kXbiD+nVAvPlXOQaVAdM8AplOG
	qVvMiXbZSFU/RrIiYdqImYk71wX/NZ7g85nzSh2vWdGY4iF8Gqy5NJnr4bAmwxoKZKFpkMUfkdJJX
	6HZT2GI7VYCFHm5Hjo5qVXisEZywg8K8mdYeIpWBowWYNjVFNhn6Wi4ZMZzThk2CpLDCNQhlApv+d
	4aMmjqcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDR-00000006E2d-0QpX;
	Tue, 18 Mar 2025 14:46:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8X-00000006DKX-1K8d
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nH-CW; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Raf-28;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-3A;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-4-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=743;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BGPddYRnL3ZU9qwH8Z+QwxsrhZpyd0a7bMMud7gaGxo=;
 b=X7uCdcC8nJUrCz3piHwgPabbAniiNnaqU72boYmtHDz9XsfTO1bGSzYbeWkisvtTfMSWZkeSE
 ZNnE0wdF6r8BBUCoZEDgqp9J69XCUV57URDcW7XNnwiK3LjADgUsCsb
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074145_396311_33867815 
X-CRM114-Status: GOOD (  12.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] filetype: let cdev_detect_type() only detect
 filesystems
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

cdev_detect_type() is only used by the fs code to determine the
filesystem type on a cdev, so it only needs to be able to detect
filesystems and no other types. Call file_detect_fs_type() instead
for smaller binary size.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 1e2d4ed0e3..b8d65dfb9f 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -523,7 +523,7 @@ int cdev_detect_type(struct cdev *cdev, enum filetype *type)
 	if (ret < 0)
 		goto err_out;
 
-	*type = file_detect_type(buf, ret);
+	*type = file_detect_fs_type(buf, ret);
 	ret = 0;
 
 err_out:

-- 
2.39.5



