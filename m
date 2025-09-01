Delivery-date: Mon, 01 Sep 2025 19:29:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LI-006z7F-0T
	for lore@lore.pengutronix.de;
	Mon, 01 Sep 2025 19:29:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ut8LG-0006ko-Vv
	for lore@pengutronix.de; Mon, 01 Sep 2025 19:29:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g/3BhS8YQponVMxj3RsLpQWSEA+LozT0keKCdwZ4Xxg=; b=ybDi9P7DLhUiSkV3liugcS/YpK
	Vt4lJRBzXBEhBABejxTyjujOJXw0uFSW7ql/R8fEsqIYO5PeAwOsw0mEi1Wb8rgqwzSbasz0yAxfJ
	w2RfqyQJwEnTXxvGEv+mGyPEDVZPgxfTL42MWteCXAQJ+8CuR9UX32b5oW3S6aLm9hXjC5GujXlvh
	JGZJzcj6cAaDrddPHDrxD8XtokdWsZMsUSIqP90WkfuXrM7+imL5aT6VaVbFffJKbi4LiUJ6cfjED
	g2gaVjEibX4zW9krDlr2dhXCHtHktL9vLVapC1aeheqmoSyAuJEYw4mTcKycbtyhiiwmyw1Sydob/
	01zHgYHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut8Ki-0000000DST2-1kDh;
	Mon, 01 Sep 2025 17:28:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ut5HK-0000000CoUK-23Vj
	for barebox@lists.infradead.org;
	Mon, 01 Sep 2025 14:13:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00005r-Kd; Mon, 01 Sep 2025 16:13:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-003Emy-1T;
	Mon, 01 Sep 2025 16:13:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ut5HI-00000001k7f-1XvU;
	Mon, 01 Sep 2025 16:13:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Sep 2025 16:12:57 +0200
Message-ID: <20250901141259.415561-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250901141259.415561-1-a.fatoum@pengutronix.de>
References: <20250901141259.415561-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250901_071302_533701_DC7F918A 
X-CRM114-Status: GOOD (  12.16  )
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
Subject: [PATCH master 3/3] sandbox: add simpleconsole_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We only tested in CI the build with hush and full console and the
headless build with neither. Missing is a build with a simple console
and a simple shell, so breakage in the simple console went unnoticed.

Add a new configuration, so CI can test it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile                      | 4 +++-
 common/boards/configs/simpleconsole.config | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)
 create mode 100644 common/boards/configs/simpleconsole.config

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index f9d79e9a7d15..55b8ca1780df 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -3,13 +3,15 @@
 KBUILD_DEFCONFIG := sandbox_defconfig
 
 generated_configs += headless_defconfig noshell_defconfig lockdown_defconfig \
-		     libfuzzer_defconfig
+		     simpleconsole_defconfig libfuzzer_defconfig
 headless_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,headless)
 noshell_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,noshell)
 lockdown_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,headless noshell)
+simpleconsole_defconfig:
+	$(call merge_into_defconfig,sandbox_defconfig,simpleconsole)
 libfuzzer_defconfig:
 	$(call merge_into_defconfig,sandbox_defconfig,libfuzzer)
 
diff --git a/common/boards/configs/simpleconsole.config b/common/boards/configs/simpleconsole.config
new file mode 100644
index 000000000000..1ac5f27a9644
--- /dev/null
+++ b/common/boards/configs/simpleconsole.config
@@ -0,0 +1,2 @@
+CONFIG_CONSOLE_SIMPLE=y
+CONFIG_SHELL_SIMPLE=y
-- 
2.47.2



