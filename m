Delivery-date: Mon, 02 Dec 2024 09:18:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1dq-0030nX-0R
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:18:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1do-00015j-Qq
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:18:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lMGkJkrrIv4SUw4aYtDpKuM/mRZnmpXjjRQN08CEwDY=; b=wk31090p/Itqu0ZBbH+eZO0K9D
	CsK7w0nuou1ZwU6wCbA6T03/6RUaL0GHSvssDbuuJkI6yE32uMgMHs2y4XLHCXH0kN8xeCTIouLVh
	YRk07mc4AIEWoPNmjzisPbexkWYy/jr487Z8L48zrMSyOiIgD3S2erTOniypdXd2T8jKOZnNTcPQ3
	OhGI/+d9Qbe42Qy5zuKcF/rcMnedONlaKHe1wzFOH18Ir7HSjlBIBpIJn470yQqr3/LcgyHd/eBnx
	BFqmUwrqaOu++3Lio/4len9JIOZWwEPVEb3Cuye1evjODlqModn3zK7yHhdQtjYqTkZBSY5SeFLyn
	vyODAs9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1dP-00000005P40-2aT1;
	Mon, 02 Dec 2024 08:18:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1dK-00000005P07-09Sn
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:18:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1dI-0000lh-Qf; Mon, 02 Dec 2024 09:18:16 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1dH-001GL8-2l;
	Mon, 02 Dec 2024 09:18:16 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1dI-00EaGv-1k;
	Mon, 02 Dec 2024 09:18:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 09:18:14 +0100
Message-Id: <20241202081815.3475994-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241202081815.3475994-1-a.fatoum@pengutronix.de>
References: <20241202081815.3475994-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_001818_086599_32D4682A 
X-CRM114-Status: GOOD (  13.06  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] hardening: support register zeroing on function exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To prevent information exposure, let's add a config option to zero
registers on function exit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile              |  3 +++
 lib/Kconfig.hardening | 22 ++++++++++++++++++++++
 2 files changed, 25 insertions(+)

diff --git a/Makefile b/Makefile
index bbb5d9409ea8..bc75c6335177 100644
--- a/Makefile
+++ b/Makefile
@@ -705,6 +705,9 @@ KBUILD_CFLAGS	+= $(CC_AUTO_VAR_INIT_ZERO_ENABLER)
 endif
 endif
 
+# Clear used registers at func exit (to reduce data lifetime and ROP gadgets).
+KBUILD_CFLAGS-$(CONFIG_ZERO_CALL_USED_REGS)	+= -fzero-call-used-regs=used-gpr
+
 KBUILD_CFLAGS-$(CONFIG_WERROR) += -Werror
 
 # This warning generated too much noise in a regular build.
diff --git a/lib/Kconfig.hardening b/lib/Kconfig.hardening
index 84aaab1693e0..6457d24c7382 100644
--- a/lib/Kconfig.hardening
+++ b/lib/Kconfig.hardening
@@ -107,6 +107,28 @@ config INIT_ON_FREE_DEFAULT_ON
 	  wiped immediately, making live forensics or cold boot memory
 	  attacks unable to recover freed memory contents.
 
+config CC_HAS_ZERO_CALL_USED_REGS
+	def_bool $(cc-option,-fzero-call-used-regs=used-gpr)
+	# https://github.com/ClangBuiltLinux/linux/issues/1766
+	# https://github.com/llvm/llvm-project/issues/59242
+	depends on !CC_IS_CLANG || CLANG_VERSION > 150006
+
+config ZERO_CALL_USED_REGS
+	bool "Enable register zeroing on function exit"
+	depends on CC_HAS_ZERO_CALL_USED_REGS
+	help
+	  At the end of functions, always zero any caller-used register
+	  contents. This helps ensure that temporary values are not
+	  leaked beyond the function boundary. This means that register
+	  contents are less likely to be available for side channels
+	  and information exposures. Additionally, this helps reduce the
+	  number of useful ROP gadgets by about 20% (and removes compiler
+	  generated "write-what-where" gadgets) in the resulting kernel
+	  image. This has a less than 1% performance impact on most
+	  workloads. Image size growth depends on architecture, and should
+	  be evaluated for suitability. For example, x86_64 grows by less
+	  than 1%, and arm64 grows by about 5%.
+
 endmenu
 
 config STACK_GUARD_PAGE
-- 
2.39.5



