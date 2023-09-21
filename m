Delivery-date: Thu, 21 Sep 2023 12:24:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrL-005lBu-B6
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 12:24:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjGrH-0002H7-Uu
	for lore@pengutronix.de; Thu, 21 Sep 2023 12:24:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kb4oNTy1S886Y5kxnyIRke0aluH5ckBFm7tHXJNu04U=; b=XrbIuDj91dscv8H5R0GSMGJtl0
	BsO1e2Uog6pgMRs83YkskHwjjT1tXVP/MXWgn6CpEUs9EwewjdI8X3LpeTxzchPXQcWBFN604FoeQ
	8ddTpAJv8oyQIRH+qv7npegT16GTgTz0mmZ4reAg8me7dMALhsoYS4E1sJETm60+bU4TLt3kSHuSr
	/5+NL7jjaRd0cftcCMAfSV7k9ThKWfcLl2FYt676gBzR5luXG/gzXV/4wjAGof+DWfgvPcHgJWzM1
	4iZKeaCz7r9fpELj0jUNmRV2CdbXVypXTx3sLl9/f1fAB4WZF4/qNL1CgaTK1fPhMx8hmAskfUaha
	PR6z3B1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq7-005hbI-2l;
	Thu, 21 Sep 2023 10:23:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjGq4-005hZF-0R
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 10:23:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-0001lC-TL; Thu, 21 Sep 2023 12:23:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-007u1m-Do; Thu, 21 Sep 2023 12:23:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qjGq2-004eRL-1C;
	Thu, 21 Sep 2023 12:23:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 21 Sep 2023 12:23:09 +0200
Message-Id: <20230921102310.1108543-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
References: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_032316_185647_7D89A53E 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] rsa: fix typos and missing type definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Including <rsa.h> as first header shows some that some includes are
missing and looking into the file, the kerneldoc comment is out of date.
Fix both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/rsa.h | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/include/rsa.h b/include/rsa.h
index 650fb234f263..f1e3c1b6c366 100644
--- a/include/rsa.h
+++ b/include/rsa.h
@@ -12,6 +12,7 @@
 #ifndef _RSA_H
 #define _RSA_H
 
+#include <linux/types.h>
 #include <errno.h>
 #include <digest.h>
 
@@ -38,10 +39,10 @@ struct rsa_public_key {
  * Verify a RSA PKCS1.5 signature against an expected hash.
  *
  * @info:	Specifies key and FIT information
- * @data:	Pointer to the input data
- * @data_len:	Data length
  * @sig:	Signature
  * @sig_len:	Number of bytes in signature
+ * @hash:	hash over payload
+ * @algo:	hashing algo
  * @return 0 if verified, -ve on error
  */
 int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
@@ -51,6 +52,8 @@ int rsa_verify(const struct rsa_public_key *key, const uint8_t *sig,
 /* This is the maximum signature length that we support, in bits */
 #define RSA_MAX_SIG_BITS	4096
 
+struct device_node;
+
 struct rsa_public_key *rsa_of_read_key(struct device_node *node);
 void rsa_key_free(struct rsa_public_key *key);
 const struct rsa_public_key *rsa_get_key(const char *name);
-- 
2.39.2



