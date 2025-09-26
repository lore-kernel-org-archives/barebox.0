Delivery-date: Fri, 26 Sep 2025 11:10:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Th-001H2v-1H
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 11:10:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v24Tg-0002mf-ST
	for lore@pengutronix.de; Fri, 26 Sep 2025 11:10:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1Xd82wpJO3aaRSwbLMrCK3ZRgKxlYNqlIvQLj5CmDfo=; b=K/R4j+My2u4f/nrqfdeLiB+iJo
	a9SxO8sfkhlEM9XIrAUm64u7yOu0GDdC/TnmyRxOSYlihxRgCp/a8XREtSZ+Z6WuJh/Ex2ZSgPxHk
	vaHFc5BdcT8tyXe0ScUG4S04ptTF4BNqXpBM74bpkBi4xYpJ9BSLGUG0QzBLQGpBWb5E2irCbnpkI
	AI3aZaofEfC/CF5zudGwj3Wf1wxxDT/MZz1RYGtfucJs0EyO4rWqJZi6ouR91VxenWUJtPBGCZd/s
	p0l0DT1VcT3Z5DAbnc8IoxYkR5VMihUNwjqdsl5UClVRxhMTllrm4mPpFQArjLWa7/FIOIEhl0E5x
	PFWgUdhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24TJ-0000000HRWY-0vWf;
	Fri, 26 Sep 2025 09:10:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v24TG-0000000HRUD-2QdI
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 09:10:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-0002eB-Uo; Fri, 26 Sep 2025 11:10:28 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-000ZFJ-2T;
	Fri, 26 Sep 2025 11:10:28 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v24TE-00000004IdF-2m9U;
	Fri, 26 Sep 2025 11:10:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 26 Sep 2025 11:10:04 +0200
Message-ID: <20250926091027.1024322-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250926091027.1024322-1-a.fatoum@pengutronix.de>
References: <20250926091027.1024322-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_021030_619769_2EB8D546 
X-CRM114-Status: GOOD (  12.56  )
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
Subject: [PATCH v2 2/2] common: binfmt: replace generic ENOENT message with "Command not found"
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
v1 -> v2:
  - no change
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



