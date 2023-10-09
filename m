Delivery-date: Mon, 09 Oct 2023 13:54:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoqB-001qc4-NG
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpoq8-0002Uz-NP
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:54:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/81/9NEqfCNTZgTmFw76kUYsRdCTUoVJDpxu2lc+/4M=; b=hjgELa9pHcIZnin6odE5u0EB2J
	jdG84TEMTV8H8Q6QCg19h/AkVzQkfWDi95aTSj5eZMM5QAl8uKJMKm6xgcMwR22zdLsOM9U1+l+cF
	AEQ4K8uN5cXSdMJsmX5IeGMsUUhvPXi6bZ4L31O6zIWksYSRJSKYz/g6mE9fBsBgTS6ohf5I3Qhj3
	6gZXrhVKsPJk2M/g6xN1bQYXScpGgZNnj/jjX9MEQCQxvhP/0ehfQhOj7z5XE4KZxrq9Art0TXMtG
	nllL/4W8f/HVbyrkO12TuafL8fnCaHG6c0KAylhafkyJ3puiDiKAVbIAFq5lDf9QLBtV0TCijzh67
	D0z92yaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpooy-00AWQS-2B;
	Mon, 09 Oct 2023 11:53:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpoov-00AWO2-0S
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:53:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-0001nK-HN; Mon, 09 Oct 2023 13:52:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-000P3s-1i; Mon, 09 Oct 2023 13:52:58 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qpook-009yt0-03;
	Mon, 09 Oct 2023 13:52:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:56 +0200
Message-Id: <20231009115257.2371076-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
References: <20231009115257.2371076-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045309_178408_1C732678 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] test: self: have SELFTEST_ENABLE_ALL select all tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_SELFTEST_ENABLE_ALL is meant as a toggle to just enable all
tests that are applicable. imply doesn't do what's expected, because
it won't enable an option that's explicitly disabled. Thus switch
over to using select instead and while at it add the missing
select for SELFTEST_TEST_COMMAND.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/self/Kconfig | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/test/self/Kconfig b/test/self/Kconfig
index 15e00f0244b5..e7da07491a91 100644
--- a/test/self/Kconfig
+++ b/test/self/Kconfig
@@ -33,16 +33,15 @@ config SELFTEST_ENABLE_ALL
 	select SELFTEST_PROGRESS_NOTIFIER
 	select SELFTEST_OF_MANIPULATION
 	select SELFTEST_ENVIRONMENT_VARIABLES if ENVIRONMENT_VARIABLES
-	imply SELFTEST_FS_RAMFS
-	imply SELFTEST_TFTP
-	imply SELFTEST_JSON
-	imply SELFTEST_DIGEST
-	imply SELFTEST_MMU
-	imply SELFTEST_STRING
-	imply SELFTEST_SETJMP
-	imply SELFTEST_REGULATOR
-	help
-	  Selects all self-tests compatible with current configuration
+	select SELFTEST_FS_RAMFS if FS_RAMFS
+	select SELFTEST_TFTP if FS_TFTP
+	select SELFTEST_JSON if JSMN
+	select SELFTEST_DIGEST if DIGEST
+	select SELFTEST_MMU if MMU
+	select SELFTEST_STRING
+	select SELFTEST_SETJMP if ARCH_HAS_SJLJ
+	select SELFTEST_REGULATOR if REGULATOR && OFDEVICE
+	select SELFTEST_TEST_COMMAND if CMD_TEST
 
 config SELFTEST_MALLOC
 	bool "malloc() selftest"
-- 
2.39.2



