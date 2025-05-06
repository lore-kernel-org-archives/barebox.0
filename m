Delivery-date: Tue, 06 May 2025 15:54:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCIkH-002oJl-09
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 15:54:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCIkF-0006M2-94
	for lore@pengutronix.de; Tue, 06 May 2025 15:54:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8hHQHU1re7ijXbY4nit2Pt4QCjBo+K3o/3HS8iDZ+5o=; b=atEzbad/LUJCkCXOpeFpB6bi/h
	8cVcx+40CfkLzMSaPfrpBey9xhKmc3+Ngfp2LgUMIF0CvNLwqm+HtsAjja8dYLU1ae4N2DHRFzXnG
	QGqt072tQGy8IGgOxZW+UWauurmgv15GM1jT/g7TfUzdoVS4zLrWs4H1u5qcmkOBt3Ahf4XgElTDk
	EdyR6a4X7y/pN+Ws7SkM5PWkRZ48JY0TKRmjicgsWMT3/kP7ing6qvea8bR2qyr/5YGUBfYEq2cYp
	9ssG8GSgCxsRlhBybQBTWnX0dU/FYbrebJu6Owo3dlQUoeSMoRCFMmrEtCgabZicFwZ/2QZ3iiCb2
	WCeFRzJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCIjh-0000000CD6l-1o1H;
	Tue, 06 May 2025 13:53:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGPs-0000000Biyv-0CsT
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 11:24:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGPq-0001Xz-ME; Tue, 06 May 2025 13:24:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGPq-001Nxa-1c;
	Tue, 06 May 2025 13:24:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGPq-004cAW-2n;
	Tue, 06 May 2025 13:24:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 13:24:49 +0200
Message-Id: <20250506112449.1100020-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_042452_083014_279FD759 
X-CRM114-Status: UNSURE (   9.19  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: security: add cross references with SECURITY.md
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a top-level SECURITY.md, because it's handled specially by the
Github Web UI. Additionally, we have a security chapter in the
documentation, so add references between the two for easier
discoverability.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/security.rst | 7 +++++++
 SECURITY.md                     | 5 +++++
 2 files changed, 12 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 5beedfc9a5bf..cc15c8b512b2 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -170,3 +170,10 @@ a compiled-in RSA public key. Board code should read the JSON Web Token
 (e.g., from a raw partition on a USB mass storage device), verify the
 serial number claim within against the board's actual serial number and only
 then unlock any debugging functionality.
+
+Security Policy
+---------------
+
+For general information on supported versions and how to report security
+vulnerabilities, refer to the top-level
+`SECURITY.md <https://github.com/barebox/barebox/security/policy>`_ document.
diff --git a/SECURITY.md b/SECURITY.md
index 476ab3186e04..9dd19d73d0aa 100644
--- a/SECURITY.md
+++ b/SECURITY.md
@@ -12,3 +12,8 @@ Compatibility with old kernels is maintained over barebox releases.
 
 Please report security vulnerabilities to security@barebox.org.
 We will work with the reporter to create a fix and to coordinate the disclosure.
+
+## Securing barebox
+
+Refer to the [Security Considerations](https://www.barebox.org/doc/latest/user/security.html)
+chapter of the documentation for information on how to configure barebox securely.
-- 
2.39.5



