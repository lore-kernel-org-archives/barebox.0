Delivery-date: Mon, 12 Dec 2022 17:43:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4luE-001pqD-TG
	for lore@lore.pengutronix.de; Mon, 12 Dec 2022 17:43:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p4luE-0006t1-B2
	for lore@pengutronix.de; Mon, 12 Dec 2022 17:43:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SixFLgwYUqsbhmOh4rLbHbQ00czyFt31gEvBK1jiERE=; b=KkszK+DE1Tlc3ZT7ANn414Lhm8
	GOPdQyrcT9Z7uijE1VrtYHtDlHwPHWChFpf3Cv3oFGLXKEOsrvm/5Puw5wJuVEu5kbr2gkPcMylq7
	QfXY3dk795j4h4pAAFz46tq6p7gBSUgPitRZChluCmbYLtBnN9s5zPYL4MByZoszGoSXc85tiVCX+
	csuwZqGfnSggtAPsuNfbpm9/WdY5a10siWxeMzX60AsVXkUyX3jgycwjrdOPwJ6iSiDeIUWElmvCG
	ljSoIc4eCjJ6/bJrljlFdfqxtk+7pKmWzZr45MHX7zYEKrT+H2wVaD+EkLtjZI66By3ZMa1tgDS+z
	ChEItFIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lsz-002FON-9J; Mon, 12 Dec 2022 16:42:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4lse-002F8P-8V
	for barebox@lists.infradead.org; Mon, 12 Dec 2022 16:42:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsc-0006eN-TW; Mon, 12 Dec 2022 17:42:14 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-0043p0-Gj; Mon, 12 Dec 2022 17:42:14 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p4lsb-009v92-Gk; Mon, 12 Dec 2022 17:42:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Dec 2022 17:42:12 +0100
Message-Id: <20221212164212.2358450-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
References: <20221212164212.2358450-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_084216_407774_6EB56A7E 
X-CRM114-Status: GOOD (  10.58  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] pbl: define DEBUG globally when CONFIG_INITCALL_DEBUG=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_INITCALL_DEBUG=y is a very useful tool for debugging barebox
hangs, but it's not so useful if the hang happens very early.
Define a new CONFIG_PBL_DEBUG symbol that will define DEBUG globally
in PBL to get more insight into boot hangs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - changed into separate config option instead of piggy backing
    CONFIG_DEBUG_INITCALLS (Sascha)
---
 common/Kconfig       | 9 +++++++++
 scripts/Makefile.lib | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 19cd79311016..46675dfe2ea7 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1566,6 +1566,15 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+config DEBUG_PBL
+	bool "Print PBL debugging information"
+	depends on PBL_CONSOLE || DEBUG_LL
+	help
+	  If enabled this will enable all debug prints in the prebootloader.
+	  For this to work, a console needs to be configured in the
+	  board-specific entry point and configured for either DEBUG_LL
+	  or PBL_CONSOLE.
+
 config DEBUG_PROBES
 	bool "Trace driver probes/removes"
 	help
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 85d18f07a2b6..6e0d92cf756d 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -156,6 +156,10 @@ _c_flags       += $(if $(patsubst n%,, \
 PBL_CPPFLAGS   += $(call cc-option,-fno-sanitize=all)
 endif
 
+ifeq ($(CONFIG_DEBUG_PBL),y)
+PBL_CPPFLAGS   += -DDEBUG
+endif
+
 # If building barebox in a separate objtree expand all occurrences
 # of -Idir to -I$(srctree)/dir except for absolute paths (starting with '/').
 
-- 
2.30.2



