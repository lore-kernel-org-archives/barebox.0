Delivery-date: Thu, 26 Feb 2026 09:50:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4O-005pEC-0o
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 09:50:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvX4O-0004GE-FI
	for lore@pengutronix.de; Thu, 26 Feb 2026 09:50:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FCPhEzbvGx5GqAe/3KZWgGxLyBUSlRoRuaiKd7boyC0=; b=eL2dg2qcj0QC1F
	flgIXxSPzELoXjEn0wmdmIUekKIP0wBMPf+CgW/cTlSQ3q9yP+md60A8/65Qj1JQRZ5OkhuJRz6Yg
	xnRP/Wuiiy0af5mtE5tFLvroDknGPDmvjnqIWXl85BtBjdrKL6IJPcDr4y16V7EloDLxhOmyIySPI
	AOXsXuiBGNZE45BIyyi3zduh9o00H7HFIifm4hT81LQwLvUw/LLvmdBH1mwwde8VxbQuZFItxFpFN
	klrmEP7WvgyM3wXHvjng/cG3lKL7rzkBBfLk/oID3XnmlT+/uhCzStWb4NO1KRdJ2IFjkjE8Etb3o
	rY6M08xgzYYA/VhhypqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3p-00000005hOC-1wzg;
	Thu, 26 Feb 2026 08:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvX3n-00000005hLX-21fk
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 08:49:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3j-0003zh-WF; Thu, 26 Feb 2026 09:49:24 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3i-002hVy-17;
	Thu, 26 Feb 2026 09:49:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvX3j-00000004ufu-2dDr;
	Thu, 26 Feb 2026 09:49:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2026 09:49:16 +0100
Message-Id: <20260226-security-policies-not-so-much-compile-v2-0-b667deba06ff@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAwJoGkC/x2NwQqDMBAFf0X23AVZaJD+SulBti+6oEnIaqmI/
 97Q4xxm5iRHNTg9upMqPuaWUwO5daTzmCawvRuT9BJ6kcAO3attB5e8mDaVU97YM6+7zqx5Lba
 AwzAiAhKi3qm1SkW07//zfF3XD58zp5d3AAAA
X-Change-ID: 20260226-security-policies-not-so-much-compile-68aefee26fc5
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772095763; l=864;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=7lC5kHwJboCSiQ9U84IKAmVbwTKYMVitcK8FauwGui8=;
 b=RLvGz1E8j1aAeOQbBTJDSH/+ClgyWVs80AjJQS0pVcpgdS7V0epwev7IMOUawA2uLB8wxd1wC
 lTNS5+gtD1BAG5OOi8N2faPLVjQaFmkAIgfE9F7xDQaGoMcfhJd6uGR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_004927_521036_4D9BD8F1 
X-CRM114-Status: UNSURE (   7.28  )
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
Cc: Claude <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/2] Security policies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Two small patches for security policies. First one makes that we do not
compile all the host tools in scripts/ to do a security_*config, second
is for better integration into build systems

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Claude (1):
      kbuild: make collect-policies lightweight with standalone Makefile.policy

Sascha Hauer (1):
      kbuild: policy: support out-of-tree builds for external policy files

 Makefile                | 26 +++++++++++++-------
 scripts/Makefile.policy | 65 +++++++++++++++++++++++++++++++++++++++++++++++++
 security/Makefile       |  9 ++++---
 3 files changed, 88 insertions(+), 12 deletions(-)
---
base-commit: 810120e81a95963c35f1f50f75ed36be2dbd03d5
change-id: 20260226-security-policies-not-so-much-compile-68aefee26fc5

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



