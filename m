Delivery-date: Thu, 23 Oct 2025 17:42:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBxSg-00B0Gf-1K
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 17:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBxSf-0005S4-Ry
	for lore@pengutronix.de; Thu, 23 Oct 2025 17:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p+sGX9HHs2Ap+Jgoehw66W7wwws4Wemq4LNlqGu5w4w=; b=zABKiUEeUVJY7jVwQBlQsS7Y0S
	tXwTlFnh6TbrNfLbDicwodPON6xq00dg14syeshCb3M+rQkV+c0ABSz90xqMGeOuuumt+3ljcdavg
	UMEOgmoLn6vGdUA5hqYlV+44L930Guf1xC56sEaL9FvdPC5KAU+x80L+K9n4bpl2ztIqQ2JayeJOg
	6xWCIPOfAYkcddcpNKHj/e346/yd9GJ3MMEqYAl6pa/EGm0w2bihS+cmPXASN4tgcPWl+5EbBovc+
	cEpbZxEa8PpUEMiUY/5FNMwhmOK8rU/gZT7AD3NccM4aYd6fI2HjLzYwyBNbfxAsEP7l9Cx6SqQw8
	ph8EoM5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxS6-00000006n7V-03ck;
	Thu, 23 Oct 2025 15:42:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBxS2-00000006n76-2gWM
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 15:42:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBxRz-0005IK-RL; Thu, 23 Oct 2025 17:42:03 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBxRz-00550L-27;
	Thu, 23 Oct 2025 17:42:03 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBxRz-00000007sWR-2LlF;
	Thu, 23 Oct 2025 17:42:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Oct 2025 17:41:59 +0200
Message-ID: <20251023154202.1877854-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_084206_677262_730D4F2C 
X-CRM114-Status: UNSURE (   8.72  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] security: policy: remove duplicate SECURITY_POLICY_PATH symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Likely a side effect of rebasing, the symbol SECURITY_POLICY_PATH was
introduced twice:

- First in commit b720fb9a905d ("Add security policy support")
- Then again in commit 79cd2e4fe633
  ("security: policy: support externally provided configs")

Kconfig can handle this, but it's unintended, so remove a copy.

Fixes: b720fb9a905d ("Add security policy support")
Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 security/Kconfig.policy | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/security/Kconfig.policy b/security/Kconfig.policy
index 1f3becd4fba7..9ea52e91dad3 100644
--- a/security/Kconfig.policy
+++ b/security/Kconfig.policy
@@ -83,21 +83,6 @@ config SECURITY_POLICY_PATH
 
 	  Absolute paths are disallowed.
 
-config SECURITY_POLICY_PATH
-	string
-	depends on SECURITY_POLICY
-	prompt "Paths to additional security policies"
-	help
-	  Space separated list of security policies that should be
-	  compiled into barebox and registered. This option currently
-	  requires each security policy to match security/*.sconfig, i.e.
-	  be directly located in the security/ directory of the source
-	  source tree and have the .sconfig extension.
-	  If left empty, only security policies explicitly provided
-	  and registered by board code will be available.
-
-	  Absolute paths are disallowed.
-
 config SECURITY_POLICY_NAMES
 	bool
 
-- 
2.47.3



