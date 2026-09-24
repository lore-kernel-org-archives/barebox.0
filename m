Delivery-date: Thu, 24 Sep 2026 16:52:40 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9koS-005oiP-17
	for lore@lore.pengutronix.de;
	Thu, 24 Sep 2026 16:52:40 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DDBA82001F2
	for <lore@pengutronix.de>; Thu, 24 Sep 2026 16:52:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o1N2oaqn;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=uZdN95yH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790261559;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lDIDWbHIY/wCx2PPmR6DU0MNqPNuRcsm1fjK591MnkA=;
	b=Cxg/BWh3SL9t894GwTou+mrKigWvjqwK7+rMl5x3zA32sRemR/BzB3GeeXDMWaNsNzxwGT
	oEwKFXIdQbNi1GcIm5CuM2JEVKNdFgofFwdeQ7uwMJDMGxQ3NdDt0wQ6HvbmK2Me1zdJWb
	lHw70eB3wQAdWNePFo473riCbwpiFCauJkOipd7b7Uh34JATlG+KqI08UFSAD0QA5tetU7
	cG7KwB95HetBrWwyxqcJFNfpPuOnxVkHJoubXgXpCVm5GzAFgmj2s5LmpM0fv4CPq5MWpt
	cvADfGce37VUYOhp/i2pM+UAKMPq9A86ie2vkZkgdBIEXWlxWdMZtBEyBeK0pg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790261559; a=rsa-sha256;
	cv=none;
	b=VcrjKNzYH1cMob905tlSY68fVdGxr+pYDLx8OleoxJNIyv/5utqkQCtmSgwrvqUkXf/CjC
	mFS3E4Bncs+zloe7GkPmuCR61zzKDqLdFqXM1M88WwUm5w6sDtNGLug8BM4W4kkPc7Xq09
	hmNrko0oIRxFQxFHDtFAcrVwqD++AS+r/BPjTZzfamhwZMIAYIG2MQQTwV37pd41GGHp8W
	dqDzbLSpmoLt7NQd0oPnQ0EA9UDcfIcIDZJXqIv6CZlKeT+qyPd9bMmPFwRHH8RypVv5IK
	00exDCcQYgTMxIvyhwUykhlxXZdbxTtqY9IFjAP9pWVaEXgxnAG7KSA/7lt6vQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=o1N2oaqn;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=uZdN95yH;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=reject) header.from=bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lDIDWbHIY/wCx2PPmR6DU0MNqPNuRcsm1fjK591MnkA=; b=o1N2oaqnMR987tLg95Vd32ousD
	ZW34BSUjX+aXuuGdeCByTIigkinDA9nBJ9JMs1CUKSv0TgRNoBaDS05ds/rSQtLNbbJge1QFcJwKi
	6/+Xf3hAeLQfCQOckeLjcl9oc0ypDm9NgfSy6TCJKMBh92nfuPp2zACGuUreLLM68jXgAi2/XofKX
	IYUcqtRwIL9WKqD0tuHNhiJHdqWIIBiIHeGRQCRVJ0KvP3S4jjGjfJudX7ssPa0vXeq+OSeilNtKU
	ZS3K5Cw7R/FtFaXbG39xcjaVVUIn5bZ1siffusiNetep1GLiyEmYP8kqfcZTQutfIK8e2EXyrInal
	eqpDqybg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kn0-0000000BJ3N-0qpv;
	Thu, 24 Sep 2026 14:51:10 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9kmx-0000000BJ2S-1XzD
	for barebox@lists.infradead.org;
	Thu, 24 Sep 2026 14:51:09 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0662FC211E7;
	Thu, 24 Sep 2026 14:51:50 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8453B60341;
	Thu, 24 Sep 2026 14:51:02 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 52EAF10328BAC;
	Thu, 24 Sep 2026 16:51:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1790261461; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=lDIDWbHIY/wCx2PPmR6DU0MNqPNuRcsm1fjK591MnkA=;
	b=uZdN95yHgWat2HeRSFn0m0dgypcQa2UO3gGMDWGf7hQcoK/a9MmglnpSURFkmvgC4T43YX
	vLFv/6CRthSF6Tp7S5qDKNPhlitgDFAATyPsSSJZsUAVO0BBZWyZL8wjIxKZ0Rhp+hUzJV
	5DiGoBtqxTfzyNpCCX+W1dsPOosQYKpshplT5Pj4pTCEC5lNG0LizahZi7eHuUVGjfsScW
	+CxHr+3SJdjHAkIavBkGiqi4eYYuG+IAc2HBOa66Xof0LSZe0PxaOBgma+mdfjk7baRasL
	kIstxWOJ2H5SmB5OWvQGmkKDqfGVkqPfH1VZP1o3A6/eFkkTPkZj2Eovenl2IQ==
From: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Date: Thu, 24 Sep 2026 16:51:01 +0200
Subject: [PATCH] test: fix typo in labgrid message
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260924-fix-typo-v1-1-9b042a419288@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMSw5AMBQF0K3IG2tCI43aihho3fIMkBYhYu+K4
 cn9XBTgGYGq5CKPnQPPU0SeJmSHduohuIsmmUmVaVkIx4dYz2UWpdGts9JBARTri0fMvqu6+R0
 2M8Ku757u+wGXIzcSbAAAAA==
X-Change-ID: 20260924-fix-typo-8b9afc2fe6ee
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_075107_579318_4BFC3F16 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Fix typo in the word directory which was written diectory.
    Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com> --- conftest.py
    | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-) diff --git a/conftest.py
    b/conftest.py index 2f2bf01692..74a255e71a 100644 --- a/conftest.py +++ b/conftest.py
    @@ -84,7 +84,7 @@ def pytest_configure(config): def pytest_report_header(config):
    report [...] 
 
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
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,bootlin.com:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.bonnefille@bootlin.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DDBA82001F2
X-Stat-Signature: onhhc9gjbb183brie5381kp5fmkp7x7k

Fix typo in the word directory which was written diectory.

Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
---
 conftest.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conftest.py b/conftest.py
index 2f2bf01692..74a255e71a 100644
--- a/conftest.py
+++ b/conftest.py
@@ -84,7 +84,7 @@ def pytest_configure(config):
 def pytest_report_header(config):
     report = []
     if lg_builddir is not None:
-        report += [f"Build diectory: {lg_builddir}"]
+        report += [f"Build directory: {lg_builddir}"]
     if lg_env is not None:
         report += [f"Labgrid Environment: {lg_env}"]
     return "\n".join(report)

---
base-commit: 75819f9e196e2da048e96c8589898fdc38ef8e7a
change-id: 20260924-fix-typo-8b9afc2fe6ee

Best regards,
--  
Thomas Bonnefille <thomas.bonnefille@bootlin.com>



