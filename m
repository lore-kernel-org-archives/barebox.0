Delivery-date: Mon, 08 Apr 2024 09:37:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtjYr-002JqB-24
	for lore@lore.pengutronix.de;
	Mon, 08 Apr 2024 09:37:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rtjYr-0002a6-2n
	for lore@pengutronix.de; Mon, 08 Apr 2024 09:37:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zy6QLHlC03FilcGmXOFF2s89dfh1eAG8vUCYSIR6izI=; b=m1yWIhYsBVfL88GnIyPRicgwEh
	4e3fOhqph/VdcHASItpGUpMZJ9ZvecBVMreLz/EQKzS/PWDZSUx8qHaF7O+/ekCsxGoO9mCnB8oHe
	gwDdLSeoamGPXkqJlUsHBl+8viMlTlgYC5RGSXDqH1uV+f7QCpOzc8gmedR6ganlYGTjdXE9+USDS
	sSZpseWj6Hz8CJq2OmpeiHcrdS7YDC8QsyR8R6pT3c0XX+w409tZyacMqKZM7OGiV1wy3sDHKgPxR
	gqQlMEt++adCjsMsgJvflVWHvrYKHybuGKnJFHnNpRJiH3M8OdDrMz0JJfbSsKo4+GhfdmyAmaNU5
	dkuz+Yvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtjYI-0000000EgKW-0127;
	Mon, 08 Apr 2024 07:36:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtjYA-0000000EgGV-1B2l
	for barebox@lists.infradead.org;
	Mon, 08 Apr 2024 07:36:20 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rtjY5-0002LS-75
	for barebox@lists.infradead.org; Mon, 08 Apr 2024 09:36:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  8 Apr 2024 09:36:12 +0200
Message-Id: <20240408073612.4075622-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240408073612.4075622-1-m.felsch@pengutronix.de>
References: <20240408073612.4075622-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_003618_546444_0E58DF11 
X-CRM114-Status: GOOD (  10.33  )
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
Subject: [PATCH 2/2] bootm: always apply strict signed FIT boot rules
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We do use an strict boot rule if the CONFIG_BOOTM_FORCE_SIGNED_IMAGES
switch was enabled. Instead of only checking the compile time switch we
should check the runtime configurable $global.bootm.verify param too
while applying the rule.

Therefore make use of the bootm_get_verify_mode() to query the mode. If
CONFIG_BOOTM_FORCE_SIGNED_IMAGES was enabled the only allowed value is
BOOTM_VERIFY_SIGNATURE.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/bootm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index e6703b19b3ba..03af3d2b28f7 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -699,7 +699,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		goto err_out;
 	}
 
-	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES)) {
+	if (bootm_get_verify_mode() == BOOTM_VERIFY_SIGNATURE) {
 		data->verify = BOOTM_VERIFY_SIGNATURE;
 
 		/*
-- 
2.39.2



