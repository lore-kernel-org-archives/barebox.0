Delivery-date: Fri, 26 Sep 2025 12:15:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tn-001IHc-1F
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 12:15:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v25Tm-0004mv-6j
	for lore@pengutronix.de; Fri, 26 Sep 2025 12:15:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d27L2CQtBGASRk0RYVVLzCQPq4BBZ4Ggc7evsqrIjhs=; b=e1Vo5XmeIfJoysG5MQNd2Bh/Xn
	kmaALxI4iw/kUqzVxXY4FXB4ifpNz1ucaAts0ByZl0UVlq9VXD0Uav/tju6rfZTs9waX7ebuTm5DW
	4UZ9dITpO1sgayTRLl9L2mfT20Sk7B6PCws+h8JsEClYlHzzutEjXdLgEzfdtsUzKuJlOtjB0Ujy2
	R5C/dau2E5mdgImJ5WZgoP4OIKH3XnzI4FI4xC40+eg331hES8EFSm8QwY6t+ryRLTEfQH7o9fq9s
	IE6qK1GA+ctseyX59igi2TWg/XlKL5NLjQKFtdVRDsWwwwW2s3UvAtEearaIP+a4yd32ZkEvZybIR
	I0rsgZpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TG-00000000Idb-3Ncd;
	Fri, 26 Sep 2025 10:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v25TB-00000000IWo-1ZZ2
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 10:14:32 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v25T8-0004Ji-GT; Fri, 26 Sep 2025 12:14:26 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 26 Sep 2025 12:14:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250926-tlv-integration-v1-5-45dc68b9b602@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1005; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=iFeo3AtjuwFu9w/cIpOk18QbDXu8BwuBHPlD+w9G2y4=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4lt7AlPAxdt4c92mPWWVFg7I6tzi6556VeHXAp8g5J
 /DcU97bHaUsDGJcDLJiiiyxanIKQsb+180q7WJh5rAygQxh4OIUgInoizIynC7cJPE+RGjZlAn7
 /2tPeM6c/yAiKzFm5sL9V7OeWWzbHcPIcHt57MtX2SFrq++kXSxenMN7Pi/9gegs9mddJS/mGTj
 rcQMA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_031429_474611_F04C9394 
X-CRM114-Status: GOOD (  10.30  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] commands: tlv: clarify error opening tlv
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Returning PTR_ERR(tlvdev) instead of printing an error message leads to
the same output when CONFIG_CMD_TLV and when the specified path could
not be read:

  tlv: No such file or directory

In the latter case, print an explanatory message instead.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/tlv.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/commands/tlv.c b/commands/tlv.c
index 53fbc2a291..6118a2947f 100644
--- a/commands/tlv.c
+++ b/commands/tlv.c
@@ -28,9 +28,11 @@ static int do_tlv(int argc, char *argv[])
 	if (!filename)
 		return COMMAND_ERROR_USAGE;
 
-	tlvdev = tlv_register_device_by_path(argv[optind], NULL);
-	if (IS_ERR(tlvdev))
-		return PTR_ERR(tlvdev);
+	tlvdev = tlv_register_device_by_path(filename, NULL);
+	if (IS_ERR(tlvdev)) {
+		printf("Could not open \"%s\": %m\n", filename);
+		return COMMAND_ERROR;
+	}
 
 	if (fixup)
 		return tlv_of_register_fixup(tlvdev);

-- 
2.51.0.297.gca2559c1d6



