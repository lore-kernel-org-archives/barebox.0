Delivery-date: Thu, 24 Sep 2026 16:54:57 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9kqf-005okj-27
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 16:54:57 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E99220026F
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 16:54:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=30YZ+3AI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="W/CtZ0os";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261697;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MnqK/1EUTwJGono1rXYp4VbLF/Igvn5bRTm7ljShpMQ=;
	b=ZUWmOzW2UgVLLExBuP6xJv7t9nKCiAabGA+c9bTK+3v/IaeENHIhXV5s99wXXAhdLOx0ls
	j88ymNCb8C9HrmMJcnwgFLhGc0gGPvb43LDYxy6bkuqtnPNTUBnmJea23BTGd1JzeGy9dM
	N94ZqHnMyD+oGQ1C4X1JTV4KcOV75NyPk6gTttgESuhi9/k1QJ36PfkNamGGbfJnCGcifY
	lk2SIGNN3tyjhRMjpR3jBxPqIP3sA4Vl4TtcnWPgLn2eod/dCfopcg+RSo9J1z0mEm+jtY
	uy2Mg2jPR2GPgjth3aRCBTBc1PCQ3bHr3p8+mLr5D0rRAE7fpx0t9A2S5U6tsg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790261697; a=rsa-sha256;
	cv=pass;
	b=Q/RjqMtmOq91JcyLXAweHCYZxFE5ayM+m5S2Zxpnv25MT/l1DL+QjpzfwTcl51yYibnq3Q
	Idoxrtlz1m5QHVXNlEXiEuGrPaXaXQPOtCT/WIz8txGpAmnVi+xUgjqS0qLefCGb8d8ARc
	ztp2Voc9x38N12WcpATiR4uVlNCkGoF4Lh87s5ZgnMNmEB9kY7mEC7i1M7ZgQ5bDPY0/Lk
	6pQCz7HEgY7zd5CPEFr4EoLPxlYutYFt6izgN4NPuXbeTT/R47h5EaYng2mr+H1Er4ra1Z
	MEvj0QO3lXZJdCykIQMNol3P8PxQE2DNsfsADA8ykLmbDNWu8P97Qyvvojy7wg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=30YZ+3AI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="W/CtZ0os";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MnqK/1EUTwJGono1rXYp4VbLF/Igvn5bRTm7ljShpMQ=; b=30YZ+3AIaBpuNLS1xOv8KcUE4W
	Hp6YDYRoJtjiqOCJOKuGPsp7ItRCLNWYsMLkYiQLnyFvL6/d1xgcwAef0lZXxxP0HdGvQcAPv4baX
	mHlP5ewpCidpmIDIiPlTcMV/7H5CR8kvjWkBJLuOmaU+gM4AoqmHaPFtrtrCu+tWJyOjPmcKre+kT
	OIeVglo8M1iUPF5WAHKKOclq7tgjh/ekrQgKuiWM4dyu4+o4UP8CtH8TCi/2+vuNESBCpCALIbBNQ
	CscsGLrlBmaVnDbK/mw3HLQWfGZ1sVPBheU8XxaF5cN7fTs7tCTvs1f3ixZE7mwVL5JRa14QvQjJT
	KgVaGtog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kpP-0000000BJLQ-2p3O;
	Thu, 24 Sep 2026 14:53:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kpN-0000000BJJw-132N
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 14:53:38 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4EB6F2000D8;
	Thu, 24 Sep 2026 16:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MnqK/1EUTwJGono1rXYp4VbLF/Igvn5bRTm7ljShpMQ=;
	b=W/CtZ0osb7zJC6LMOVxEVzgFhGEYZFYqsiWDvO0BisKWoSFzF5Q9oX1SjzOrobrEGerS5P
	urWR+nuAkhgaO0B31vTP03+jZ+IifHwBZdKmB076jMQ4KOj5tM+xtLAoCsp6k8G2mMwTtU
	Kb0dw7H+wCELqBRtXQWPZCrS2R5L7rolc/dQWcIYeDjdJUz5518rl/3vK0iwFSwkNO/Y8n
	GZF2Aw+2XOfLy1XGtHsWpCR464Vxie7P/vfxTQ2qXGSgBXNEmgcie5iGB9GpBZnqz0z69L
	gI+zKNnMiywwbe1UWYtB2Paujbal5vTPHGcRYRPCE0nRTnDSvXbp5bxk+33X8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=MnqK/1EUTwJGono1rXYp4VbLF/Igvn5bRTm7ljShpMQ=;
	b=QfDow8Rx9nuWXPlbNKXEhJU3SgVk9M+5sgbHKkaJGF+mB1Cc20R8dWMebRzuBPd6DD3fk4
	YHZR9jO4qmbupc4VKJIZ5loOPQOXbF9kWf0oSzIL1r2qyZXF5brVP8667mUJDRFMZHZSps
	M+NJbwg/LAvjZC1y8QZYrSID3OvEk8r+EyzKs/JpSfX7mKUuolt+gvz3EU4fxrC1Q8YEbO
	gHZL7jFafMwv+n/sAXRyc9ctHhbiYVa8ZBGd1yuUVYQo5vcR2P3XgTAnqt3R6yVCHJHc3y
	bVma+bd20e0emygViiw9t/c9DF01KZ6ymJUjPbeTyE9WkkBJEJ2QZYr00AgY8Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790261613; a=rsa-sha256;
	cv=none;
	b=BW9kavEgjZ9KdIpXFyhm7WxJloKbYfe6DWqBEgXLcZQjCBg4FZ4fig2SsbyIDcCWqom/Or
	pVXa1DenBE208TBD3kUTFfzFawkXpcjEKntmV5rVUCvVYmEvZNFk7VHNstAsFyV9T71BDb
	syYrrkTDOLKPKa7lSXxu/+9ZqcE2w4SPOuup7lK1TVaQvqSIg+LroeHGCYLPhNb/Q8Vn3L
	Qj/HRcGD8mmo9kk7GiI4RdAW5qXN4JUshukJL13Lek69G/xUKkSBz/PXypuSTFoV0Idwqi
	1wQqI1Cs30+aL/75nt5Ej0IK6gJa/oS6jsGluZkFMYDXp/ICLGf90fRxgdAL0A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 30F95741ADB;
	Thu, 24 Sep 2026 16:53:33 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/2] Documentation: troubleshooting: mention bootrom command
Date: Thu, 24 Sep 2026 16:53:28 +0200
Message-ID: <20260924145332.2712276-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_075337_438956_073FBF13 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The bootrom command is easily overlooked, but it's useful
   when debugging BootROM refusing to boot on i.MX8M, so mention it. Signed-off-by:
    Ahmad Fatoum <a.fatoum@pengutronix.de> --- Documentation/devel/troubleshooting.rst
    | 11 +++++++++++ 1 file changed, 11 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 7E99220026F
X-Stat-Signature: t5ebhb54kb5bfqt1kgowzkqiffcr5u9g

The bootrom command is easily overlooked, but it's useful when debugging
BootROM refusing to boot on i.MX8M, so mention it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/troubleshooting.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devel/troubleshooting.rst b/Documentation/devel/troubleshooting.rst
index f96b4d2b15ff..796f5eef4f13 100644
--- a/Documentation/devel/troubleshooting.rst
+++ b/Documentation/devel/troubleshooting.rst
@@ -142,6 +142,17 @@ System-on-Chip.
   functions that can be used to toggle a GPIO. These can be used for
   debugging early hangs by toggling an LED for example.
 
+- Inspect via fallback boot method
+
+  On some systems, a failure to boot from one boot medium causes the
+  BootROM to try a fallback. If the fallback can actually boot barebox,
+  you may be able to get more information once the shell is reached.
+  For example, if the BootROM refuses eMMC boot, is eMMC at least usable
+  from within barebox?
+  barebox can also decode BootROM logs on some SoCs via
+  :ref:`command_bootrom`, which can answer questions as whether the
+  BootROM even attempted access to the desired boot medium.
+
 - Trace BootROM activity
 
   If you have no indication that the barebox prebootloader is being started,
-- 
2.47.3



