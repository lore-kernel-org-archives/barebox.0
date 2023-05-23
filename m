Delivery-date: Tue, 23 May 2023 11:43:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OYC-00AcsJ-Uz
	for lore@lore.pengutronix.de; Tue, 23 May 2023 11:43:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1OYA-0007ld-IG
	for lore@pengutronix.de; Tue, 23 May 2023 11:43:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kMJkDIkbUpIIuPnECvz1aY8NsUYSdx0YWu6BbvmdZf0=; b=GQ/gEkfCu+FmoCuPeE8+DfWjOB
	e6EzX9nwKDqrFNjKnzzWmiDhJdsZufFflRkbmwjZ7gDx+XzqPLbFhhCZ2uDzgqWYaCLJsZNNt8raS
	8Y6fnk7MA3Zhxfkcdz+mHwPaBcfWiLhxJLcjGwNewP6IKCtYj24Qcq1ANBK7gsTXn2Ac6WCTegWRP
	6EakWdgY1Epr4yHnCuCNltJTrp929Xejo9JtNScuiveLv2vuSxb8ln/9zejOoxArzjQZK+brfPhri
	4jeCeKGZs3W7rJKVmtn/3wg2q5HV8emyi4zCA3LLTIHVoaNRkqpL4v+RydZy7NwfRrDwcpUpQVJo6
	56iv0s3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OX1-009eUf-13;
	Tue, 23 May 2023 09:42:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1OWy-009eTN-1A
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 09:42:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWx-0007TM-4J; Tue, 23 May 2023 11:42:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWw-002DLw-FR; Tue, 23 May 2023 11:42:10 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q1OWv-00EUXb-Mp; Tue, 23 May 2023 11:42:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 May 2023 11:42:08 +0200
Message-Id: <20230523094208.3453910-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523094208.3453910-1-a.fatoum@pengutronix.de>
References: <20230523094208.3453910-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_024212_395115_11317FE6 
X-CRM114-Status: GOOD (  13.54  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 2/2] test: self: mmu: fix invalid use of __is_defined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

__is_defined is only usable for undefined macros and defined macros with
a value. __is_defined on a defined macro without a value are will yield
zero, which is unfortunate as ARCH_HAS_REMAP is defined without a value
for the architectures that define it. The header has an arch_can_remap()
helper that's already used to guard remapping code in the memtest
command, so let's make use of it instead. While at it, fix the skipped
test count to correctly reflect the number of tests skipped.

This should fix failure of the test on x86, where remapping is not
supported as we run under EFI and don't touch page tables.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/mmu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/test/self/mmu.c b/test/self/mmu.c
index 48515b30aeb8..5e630e708f02 100644
--- a/test/self/mmu.c
+++ b/test/self/mmu.c
@@ -79,8 +79,8 @@ static void test_remap(void)
 	memtest(buffer, SZ_8M, "cached buffer");
 	memtest(mirror, SZ_8M, "cached mirror");
 
-	if (__is_defined(ARCH_HAS_REMAP)) {
-		skipped_tests += 10;
+	if (!arch_can_remap()) {
+		skipped_tests += 18;
 		goto out;
 	}
 
-- 
2.39.2



