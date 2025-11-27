Delivery-date: Thu, 27 Nov 2025 10:32:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYMp-005NiC-2h
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 10:32:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOYMp-0005Sn-7l
	for lore@pengutronix.de; Thu, 27 Nov 2025 10:32:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lv/mf5l89Fg0Td4F5ppWTTZ/8m1SKGgyOdtfC5t3lOA=; b=J4IvQhbLtygtHP+aLsyAYULy7Q
	4V7cZh5x8W/bD5lIghX/HSA5fNSsV8Sh53EhfEpSGitZqKKHr+VSzBgOfEbkAXwsIKjLPtS05A/gk
	oPLaJOURZHWpVgODgKmOVlW3jzSgWG5aIuOrrp6Np83NaG62X8KZIW/rPVR84s9naL8zIo4TTO6tp
	uIIDkrFVLbzjCxLofEa+Y2srBD73RQQQe8g5P0i4Sb9hkSl/JNBAHPj366ntMUvQ6CY1tb3TZk47m
	1Ksxl0sY2Z+4slNWngk1tDfPFR14T5HnlJQfi+fhOMtx46mWIP62k/EV3UHoren8+LjmSaLDsKmxZ
	QfDKBw+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYMM-0000000GJJt-2kCC;
	Thu, 27 Nov 2025 09:32:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOYMK-0000000GJJZ-48ON
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 09:32:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOYMJ-0005Nr-GA; Thu, 27 Nov 2025 10:32:15 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOYMJ-002lRd-0P;
	Thu, 27 Nov 2025 10:32:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOY9u-00000000tc4-1Omy;
	Thu, 27 Nov 2025 10:19:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Nov 2025 10:19:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251127-devfs-v1-10-4aff12818757@pengutronix.de>
References: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
In-Reply-To: <20251127-devfs-v1-0-4aff12818757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764235165; l=957;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EvgkdhCRtSMKBkm2SYM1VUNST7ks7ZTr+LZRepjvUxc=;
 b=C+aPnAr/n1Tk1rqhA7kqUwAlgRUUHorpRkAoPfObmX21PHlGOwwJGi0tMRftLpbFO5o9ghAR3
 vzWoDKqzs9qBr3ILVJmjsE/+zKpTqdgfWrYQOLHOjHDCQcy2knRWAuz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_013217_048533_FE6A75FF 
X-CRM114-Status: GOOD (  10.37  )
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
Subject: [PATCH 10/10] ls: use ~0 for FILE_SIZE_STREAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For stream size files we used to show ((loff_t) -1) as file size which
is quite unreadable. Use ~0 in this case.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 1ccd44f7bbc00a03b773b56020a7117ce94b24cd..5c9e0f738b03ae36655b04ec1037811a4abc0423 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -33,8 +33,12 @@ static void ls_one(const char *path, const char* fullname)
 		return;
 
 	mkmodestr(s.st_mode, modestr);
-	printf("%s %*llu %*.*s", modestr, SIZELEN, s.st_size, namelen,
-	       namelen, path);
+	if (s.st_size == FILE_SIZE_STREAM)
+		printf("%s %*s %*.*s", modestr, SIZELEN, "~0", namelen,
+		       namelen, path);
+	else
+		printf("%s %*llu %*.*s", modestr, SIZELEN, s.st_size, namelen,
+			namelen, path);
 
 	if (S_ISLNK(s.st_mode)) {
 		char realname[PATH_MAX];

-- 
2.47.3



