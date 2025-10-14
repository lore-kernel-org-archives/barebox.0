Delivery-date: Tue, 14 Oct 2025 13:03:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coo-007iFd-0e
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 13:03:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8coj-0003DT-Qx
	for lore@pengutronix.de; Tue, 14 Oct 2025 13:03:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2YI/AhO+BRyCVGL08LKIXGNedqQksfeSL/uHblt9ewQ=; b=G2Cm/vONs1B+0P213gj5OwtkO4
	FTXhtrfn4hAQXw9HlPS5H7jr+Cpb+CKmL31K7eBJXgQUQWh3Vt3GlLK+WVTEXy7baZEOhRPquv+72
	7944Ncam04AB75J/uymSZItm52Y3Jrrla7GJ6xJ3I6XuL61AQMJEgyOGHP6jpQO4ykT5P7fZr//9Q
	3Q5Xcbfc4VVe0G+UXe9u46meFln08Afg1vA326JzPALjZPiiiMnHwXB7+9Zc1lfzpwv2+ldZ4WdCa
	1U9AezOS2PCAoHNUoJGmTKmtAJzEo0MBiMFAw6tyDqvV/v7y7q0Eep4VyTTYJG00RH6WAmSI/UJaX
	bfOZTyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8coB-0000000G0OB-2ASe;
	Tue, 14 Oct 2025 11:03:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8co6-0000000G0IE-3D8I
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 11:03:09 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8co5-0002Tj-Be; Tue, 14 Oct 2025 13:03:05 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 13:02:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-tlv-signature-v1-6-7a8aaf95081c@pengutronix.de>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=988; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=zzGi02W2tEHub2slXrEgFgChjSTQBE9V/6V5Ytxa8fA=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4p/uEYZ321ID9pv4aVj8W/XvZJZdcLTx5m8eyt+xP9
 +1r9do3s6OUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJrAhXJwCMJFtBgz/DBZ/9Epm33mvdtu7
 G1L2iRfWqwW8esEm9tHkVefRVMM5bIwMX3ZtPB1lpbt4s6TGzYnqeaa3GReoRXTseHPpjvLH5qW
 9fAA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_040306_813762_EC913809 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/15] commands: tlv: Error out on invalid TLVs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

TLV parsing happens in the TLV drivers probe function
(tlv_probe_from_magic()) but register_device() does not propagate
errors from match(), always returning zero.

match() however ensures that dev->driver is always NULL if an error
occurred on probe and since we're only probing the TLV driver, rely on
that as indicator of an error during TLV parsing (e.g. CRC mismatch).

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 commands/tlv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/tlv.c b/commands/tlv.c
index 6118a2947f..c01a7b0399 100644
--- a/commands/tlv.c
+++ b/commands/tlv.c
@@ -29,7 +29,7 @@ static int do_tlv(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	tlvdev = tlv_register_device_by_path(filename, NULL);
-	if (IS_ERR(tlvdev)) {
+	if (IS_ERR(tlvdev) || tlvdev->dev.driver == NULL) {
 		printf("Could not open \"%s\": %m\n", filename);
 		return COMMAND_ERROR;
 	}

-- 
2.51.0.297.gca2559c1d6



