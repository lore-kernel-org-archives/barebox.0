Delivery-date: Tue, 06 Jun 2023 13:39:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6V28-00D07J-W4
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 13:39:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6V26-0002Gb-45
	for lore@pengutronix.de; Tue, 06 Jun 2023 13:39:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KZUaAyHhOsqyyhSMvEXLrmaVURiMrtvbllQIvyw7ltI=; b=3+zGK4lMrqpoa4uxUScJMj8q6l
	vT1JFF41HSJJDxTp7l1lvUxWJDNcfNMRw2DOQdoAMQs9nx5alDnXmpbqzdl2WFVNwgOPqYSFcYSxu
	JZtj1jDEaJrr7J++frtEFXCp7/vGpTzEheyldA5W+7LVsSgvVU+RORnzW1j9i5xWdTsSTLv+Fv+lD
	K3q5gMUa3E3FvGPPA5DULOUB9+KK7EsFoNAKrIp9CbHtSsT+iiMrsmfPYX88VVYMZXrtIMBmry1pB
	sQWBzrBxhF8fdJUEApVpJp6dq4L8HWWziJEpwR2cmAUUvJNONjelyR8pcVulB5p9C7ejr8ft726D8
	7LlzsXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6V0y-001TCE-2s;
	Tue, 06 Jun 2023 11:38:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6V0v-001TA1-2L
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 11:38:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6V0s-00028l-75; Tue, 06 Jun 2023 13:38:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6V0q-005Ugz-Or; Tue, 06 Jun 2023 13:38:08 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6V0q-00DAGG-1Q; Tue, 06 Jun 2023 13:38:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 Jun 2023 13:38:06 +0200
Message-Id: <20230606113806.3122376-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_043813_765709_D0FAFC79 
X-CRM114-Status: GOOD (  11.58  )
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
Subject: [PATCH] ci: test-defconfigs: build with -Werror
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CI builds a lot of code and warnings can go unnoticed. Ensure this won't
happen anymore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml | 3 ++-
 test/kconfig/enable_werror.kconf       | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 test/kconfig/enable_werror.kconf

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index ff9264721d87..335976f18d06 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -40,4 +40,5 @@ jobs:
         ./test/generate-dummy-fw.sh
 
         ./MAKEALL -O build-${{matrix.arch}} -k test/kconfig/disable_size_check.kconf \
-                -k test/kconfig/disable_target_tools.kconf '${{matrix.config}}'
+                -k test/kconfig/disable_target_tools.kconf \
+                -k test/kconfig/enable_werror.kconf '${{matrix.config}}'
diff --git a/test/kconfig/enable_werror.kconf b/test/kconfig/enable_werror.kconf
new file mode 100644
index 000000000000..f54ff6cdaab8
--- /dev/null
+++ b/test/kconfig/enable_werror.kconf
@@ -0,0 +1 @@
+CONFIG_WERROR=y
-- 
2.39.2



