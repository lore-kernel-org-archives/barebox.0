Delivery-date: Fri, 26 Sep 2025 11:01:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Kp-001Gkw-2V
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 11:01:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Kp-0001CV-7P
	for lore@pengutronix.de; Fri, 26 Sep 2025 11:01:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=d+tEZj1aXnJSIX2VFvg1p3RaZMJigzlggMBrKAwFuk4=; b=5ALSuSJZzGSPJTLDQBEhLK1rh2
	kjPKpTLWcuuQwbtO6Rc/8YZETc4YTeMrk5TC6L8F3HkDHA6czXETe9Bp/j1qfvpqmEcpkgbGSSpYg
	O8vrq+ntmRE5c6OOuJonRMGOzOV45DdOb2jmFMFvQtUQdPzYaRvGTRfGpQFIDPbwhyGBzysCpt16b
	HrxSmN8xxLweCyOMR9Jmn0Iu9Ehid82feNqRPNJHC9B67FOj/IVNA8sL5BqocEcCexuea6Ji/hRWK
	A5pkbP0uxOEu44lQhNJ0G5rrexmSr9f2WRwmHqh8yvQsjhPyZr/QVhpbtoaG1ouo2G6VC8bDXLJQc
	XqIUa8Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24KH-0000000HN6A-13ps;
	Fri, 26 Sep 2025 09:01:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24KB-0000000HN1F-30mq
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 09:01:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24K9-0000zD-TL; Fri, 26 Sep 2025 11:01:05 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24K9-000Z8k-2K;
	Fri, 26 Sep 2025 11:01:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24K9-00000003qPT-2ale;
	Fri, 26 Sep 2025 11:01:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Sep 2025 11:01:00 +0200
Message-ID: <20250926090102.915685-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_020107_756795_BF9D1EE9 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: binfmt: replace generic ENOENT message with "Command not found"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A message like

  tlv: No such file or directory

can mean either tlv command is missing or it returned -ENOENT.

Let's differentiate between these two situations, so the former becomes:

  tlv: No such command

Reported-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/binfmt.c | 4 ++--
 common/misc.c   | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/binfmt.c b/common/binfmt.c
index 6a1e9fc83e34..1d5035535581 100644
--- a/common/binfmt.c
+++ b/common/binfmt.c
@@ -30,7 +30,7 @@ static int binfmt_run(char *file, int argc, char **argv)
 		if (ret != -ERESTARTNOHAND)
 			return ret;
 	}
-	return -ENOENT;
+	return -ENOIOCTLCMD;
 }
 
 /*
@@ -73,7 +73,7 @@ int execute_binfmt(int argc, char **argv)
 		return ret;
 	}
 
-	return -ENOENT;
+	return -ENOIOCTLCMD;
 }
 
 int binfmt_register(struct binfmt_hook *b)
diff --git a/common/misc.c b/common/misc.c
index 2ee6fdd7d612..0af5a9cf30cd 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -60,6 +60,7 @@ const char *strerror(int errnum)
 	case	ELOOP		: return "Too many symbolic links encountered";
 	case	ENODATA		: return "No data available";
 	case	EOPNOTSUPP	: return "Operation not supported";
+	case	ENOIOCTLCMD	: return "Command not found";
 #if 0 /* These are probably not needed */
 	case	ENOTBLK		: return "Block device required";
 	case	EFBIG		: return "File too large";
-- 
2.47.3



