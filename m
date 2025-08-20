Delivery-date: Wed, 20 Aug 2025 16:34:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojtz-002eL4-2n
	for lore@lore.pengutronix.de;
	Wed, 20 Aug 2025 16:34:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uojty-0007KJ-N1
	for lore@pengutronix.de; Wed, 20 Aug 2025 16:34:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MR1NsrclbtS/Pk0L9Qew6o/oBgh9+p7JXOjgMEPuePQ=; b=oCO1cQ/a8XDzmg3msgm9qNtl6x
	nMDjl87BAGCegvmkMoucMdaCiqXVguWo+J/2txuMIBYIO64+nvT/WFTdGonNKHoLWr3wjjfV20cMN
	hdWhdM/H0vJRsEJbAdjO+QqDDPDaYJ6lqnOxYA/rnT1Pk7h5v3CCSENGahP8VQ7Oi/xBGgrQjrfDt
	3LS2TNK0Oed2KBNtKxqncBn4F0Lmt7hR6958SVNOIcNWNWSBs8+0Mb2BHrN4OosKu3OMgtXAaGjWz
	nJWxC1Uiy0i4RtX1QMf0I5jBxFr0SdPyKJ8A//MTvfZ6gHiX5i8gl+nVsNckCDWYbY5Yl9hqJlRjG
	PfhvuB6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uojtV-0000000E5tg-3gvG;
	Wed, 20 Aug 2025 14:34:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoiz4-0000000Dpca-2Si1
	for barebox@bombadil.infradead.org;
	Wed, 20 Aug 2025 13:36:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=MR1NsrclbtS/Pk0L9Qew6o/oBgh9+p7JXOjgMEPuePQ=; b=gqPw7wVIHjbv4IoDdG0RLg5mXi
	ZiS4/3kbJtxG5+ISnUOUkUyjJbWU44wWLVNqOV5SmNdEpmvIJpXPRtZ0C+XbLMcMBAcFN7AinjipH
	TeDhiQePXokeJIKj3LlViQESSUdHieEi22xgRVrRbHTSRvVURHjaYPlB96T9crukZ79bEMRbI9dNl
	x5rt0WbaxLa3XZCsDY1ovuIfCLyl28WwcERyN7osM7+xAAZWi5ug9jrWLImW4Re4upHBm0BBKx7MG
	KhIKIfOp0bmpnd7m8mmQLG3LmQx5AQMryj5RiXK0ElhaNg6i54e3h8pbNRO3x+b6yqhOfFap4TOhV
	3vrS8+dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoiz1-00000000Kqu-3FAo
	for barebox@lists.infradead.org;
	Wed, 20 Aug 2025 13:36:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoiz0-0003eX-OM; Wed, 20 Aug 2025 15:36:06 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoiz0-001Fwf-1p;
	Wed, 20 Aug 2025 15:36:06 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoiz0-00CHop-1U;
	Wed, 20 Aug 2025 15:36:06 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 20 Aug 2025 15:36:05 +0200
Message-Id: <20250820133605.2928419-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250820_143607_894247_F24BCEEC 
X-CRM114-Status: GOOD (  11.94  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] crypto: public-keys: improve diagnostics for unsupported keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If we have CONFIG_CRYPTO_RSA disabled, we will compile in the keys, but
not use them and fail at FIT verification time with a confusing
image signature BAD.

Improve upon this by mentioning both at init and verification time
whether keys are usable or not.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/image-fit.c   | 5 ++++-
 crypto/public-keys.c | 4 +++-
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 2cde844e46a6..5272d9654a43 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -260,6 +260,7 @@ static struct digest *fit_alloc_digest(struct device_node *sig_node,
 static int fit_check_signature(struct device_node *sig_node,
 			       enum hash_algo algo, void *hash)
 {
+	const char *fail_reason = "no built-in keys";
 	const struct public_key *key;
 	const char *key_name = NULL;
 	int sig_len;
@@ -283,6 +284,8 @@ static int fit_check_signature(struct device_node *sig_node,
 	}
 
 	for_each_public_key(key) {
+		fail_reason = "verification failed";
+
 		if (key_name && !strcmp(key->key_name_hint, key_name))
 			continue;
 
@@ -291,7 +294,7 @@ static int fit_check_signature(struct device_node *sig_node,
 			goto ok;
 	}
 
-	pr_err("image signature BAD\n");
+	pr_err("image signature BAD: %s\n", fail_reason);
 
 	return -EBADMSG;
 ok:
diff --git a/crypto/public-keys.c b/crypto/public-keys.c
index fba963db4eb8..0c27ddd70902 100644
--- a/crypto/public-keys.c
+++ b/crypto/public-keys.c
@@ -94,8 +94,10 @@ static int init_public_keys(void)
 	for (iter = __public_keys_start; iter != __public_keys_end; iter++) {
 		struct public_key *key = public_key_dup(iter);
 
-		if (!key)
+		if (!key) {
+			pr_warn("error while adding key\n");
 			continue;
+		}
 
 		public_key_add(key);
 	}
-- 
2.39.5



