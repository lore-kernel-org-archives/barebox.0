Delivery-date: Wed, 13 Mar 2024 20:46:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYa-004nnb-1a
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:46:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYZ-0000lR-RC
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:46:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3q7iY2aHem2O/HbeUBZ3FyzmkBdVWpgeO8CnV909hzk=; b=a3Zdcov3Eb1bUVFGVtmmFqsZh8
	/L1h45e01xEfcVt16iOW9XRffk1M1jiHbEppwF5IwYTNeqVSagdV2C79vx89Un7qzy/SINNCUOWA5
	qyLYzK+nPyeeQ1DIEY6wr6p6YrFDc43B5M/gJSNVzM3MzHGEjn0d1rtqUsz2xF5dPmb5cKEbrSRvX
	sy5Z21q/Vb9Ad948i0LL2vxzE3fFzL6cRDdFLwZYcJ2J32PrYmdH1nKMvPurkT3tIbdLObGFsj3Nb
	NUjAwpBTHQrjVpkAs3aCjVfB4ZiUt6NplB8ZsMmluG63lQQpeI4hGy21JYYI7tvgywjQE38H/5Tn2
	EKaSXSBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUY3-0000000BgnK-0pVF;
	Wed, 13 Mar 2024 19:45:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUXy-0000000BglS-4BSr
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:45:56 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUXv-0008L0-NT
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:45:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:45:45 +0100
Message-Id: <20240313194547.3725723-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313194547.3725723-1-m.felsch@pengutronix.de>
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_124555_075124_75F788FC 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] common: env: make use of isempty()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Start making use of the new isempty() helper. No functional change.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/env.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/common/env.c b/common/env.c
index d673b061ab7a..3ffde8bbd1dc 100644
--- a/common/env.c
+++ b/common/env.c
@@ -336,10 +336,10 @@ const char *getenv_nonempty(const char *var)
 {
 	const char *val = getenv(var);
 
-	if (val && *val)
-		return val;
+	if (isempty(val))
+		return NULL;
 
-	return NULL;
+	return val;
 }
 EXPORT_SYMBOL(getenv_nonempty);
 
@@ -347,7 +347,7 @@ int getenv_ull(const char *var , unsigned long long *val)
 {
 	const char *valstr = getenv(var);
 
-	if (!valstr || !*valstr)
+	if (isempty(valstr))
 		return -EINVAL;
 
 	*val = simple_strtoull(valstr, NULL, 0);
@@ -360,7 +360,7 @@ int getenv_ul(const char *var , unsigned long *val)
 {
 	const char *valstr = getenv(var);
 
-	if (!valstr || !*valstr)
+	if (isempty(valstr))
 		return -EINVAL;
 
 	*val = simple_strtoul(valstr, NULL, 0);
@@ -373,7 +373,7 @@ int getenv_uint(const char *var , unsigned int *val)
 {
 	const char *valstr = getenv(var);
 
-	if (!valstr || !*valstr)
+	if (isempty(valstr))
 		return -EINVAL;
 
 	*val = simple_strtoul(valstr, NULL, 0);
-- 
2.39.2



