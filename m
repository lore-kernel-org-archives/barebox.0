Delivery-date: Fri, 14 Feb 2025 16:48:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tixvW-002JwA-2t
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 16:48:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tixvU-0007WC-9M
	for lore@pengutronix.de; Fri, 14 Feb 2025 16:48:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a0NQC5rpTXQQZkBdJ6JZg3jH78qfgk70WB9TKQwY5RA=; b=eQ7l+BAOdUPAsPkeVtExiCbkQM
	NKo9L1Z5zord25RLxJZUTNcatiOX6GjUx+fTTR6gcC15Fy9mfw41Fezqgx9Lktsz/uFKNZHidVGMn
	VXcPMIcUKcValPf7Yzu/CI5S86gR9FKG3ZD2AUBnRRZIHp7aG7lxlBuTk4PU2aieEhOia8KoZYdMM
	PklQFQ9uU3w7rJP+1Gxdxv3CVGlzw+Gv+Fj49nD9thiqvsChHpVBw3j990pi5MEL9V1QqcK9TMgWM
	eaXe35CKYKRJJAWqaGPUVnwSYQcyJDD9sJmpqzuxJOE1WRE1i2pv73dtsunfmdR+ikgq1JKtjxI/+
	5SL2aKew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tixuz-0000000FONV-2hI8;
	Fri, 14 Feb 2025 15:47:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tixtY-0000000FNxa-2UD0
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 15:46:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tixtW-00076F-WC; Fri, 14 Feb 2025 16:46:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tixtW-000wPd-2Z;
	Fri, 14 Feb 2025 16:46:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tixtW-000zP9-2I;
	Fri, 14 Feb 2025 16:46:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 16:46:22 +0100
Message-Id: <20250214154622.235998-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_074624_627208_AF864749 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: change default verification mode from hash to available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The default of global.bootm.verify=hash means that barebox will refuse
to boot images without hashes, but won't bother verifying the signature.

For verified boot setups, this parameter needs to be set to signature,
preferably enforced via CONFIG_BOOTM_FORCE_SIGNED_IMAGES.

For everything else, it's better user experience if barebox would just
verify what's available instead of refusing to boot images without hashes,
like the image.fit that Linux can now generate as part of its build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 80905d4cf1ce..dd9ba2eae3b2 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -87,7 +87,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 	bootm_dryrun = data->dryrun;
 }
 
-static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
+static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
 
 enum bootm_verify bootm_get_verify_mode(void)
 {
-- 
2.39.5



