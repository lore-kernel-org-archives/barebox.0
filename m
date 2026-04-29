Delivery-date: Wed, 29 Apr 2026 12:20:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI225-0004Dv-2s
	for lore@lore.pengutronix.de;
	Wed, 29 Apr 2026 12:20:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wI225-0005Ys-6V
	for lore@pengutronix.de; Wed, 29 Apr 2026 12:20:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SdgJ9RFZJGh+wNQVLDdv7jE4MPE3AaRTp9uixR/rmcs=; b=5DeUjpOjmX7AeFcdHGr17cBzZi
	pbiKavBW0XwyH9OrCvTrEETC8JZBfeetXpfcWWyVx7tJsZU5WNZ7chVdPmX7QhHQpNCRmbW0Z4lxu
	N58qDBEG+4ruWvdh5acKItimPmRKww62jfjTpdaCCAwO/KtdCog1LcURYMTDnybTHr5QI4jDTXIGt
	qQFuX9pnBxNK35QG5cbycg1aRJ29lN3pEMWXdaqAe0x8LpYL+c/oSDakeZxcUvi4ei8w3sDl1+WdO
	fKP0Q/2TvTK45oU6adClNU7uFBYYA5vHN+cXas5gi+6GMOrAUGoMtHb1DaxTnGptnDimoYJ/QGvKX
	pBsyi0/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21i-00000003RU3-3wKj;
	Wed, 29 Apr 2026 10:20:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21h-00000003RTc-4B9Z
	for barebox@bombadil.infradead.org;
	Wed, 29 Apr 2026 10:20:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=SdgJ9RFZJGh+wNQVLDdv7jE4MPE3AaRTp9uixR/rmcs=; b=pRhGoecgjv5KBWJGcrCowgXc/H
	s4WSc4lwjMKdszdjyWl40iVosmNpjk8f9J9Kgio5IV3rOQ8u47CqwNn/sfijYupT3pHXCIU5Qkp3j
	j0UAGIx5onSMwSdeeXCQprsjpW8iaXEybKF0Dxsp0RT64CjvjzAyn1yNN+B4w3vEMzZaSOKxnNgdS
	5lxLkN/+mAQnxxjd0wUUISgyfCZKOzKOxgd0LWzBXT06JLYx/ktoVLNn9IFKPec7qgZeRMQOJaSr5
	CzhIVHwpbvoghADZi4J1qQVOLrqDUlRPR0dKorqYiv5lMcl2bAPES7JX1L9ENn/TaXRipUk9bfIFE
	/w2noN1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wI21c-000000055u9-3Uzc
	for barebox@lists.infradead.org;
	Wed, 29 Apr 2026 10:20:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-000576-FY; Wed, 29 Apr 2026 12:19:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-007psJ-0k;
	Wed, 29 Apr 2026 12:19:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wI21M-00000000qpg-0ezs;
	Wed, 29 Apr 2026 12:19:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2026 12:19:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260429-rkimage-resign-v1-4-1478086c369e@pengutronix.de>
References: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
In-Reply-To: <20260429-rkimage-resign-v1-0-1478086c369e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777457996; l=1419;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Aj/kWrmsTK559ptVYDOFWci4n428MaYGSXQqPMYyy9A=;
 b=ICK4cwUce7IUauefj7fKnYBHUvgr66KyrkPayYQsRx5tqCjWc/UOyR4mJSDegAHflt8VufgM/
 Erft7GHI3IrCaM8TsOwUsnTgt7P1ir2PFOSo9ScEJoADQMrVSxNaCE3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260429_112012_994769_631FD4DA 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] rkimage: improve error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Complain when outfile is not given. Also, mention that we actually can't
create a file which is more accurate than just saying "open". While at
it fix some tab/whitespace issues.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/rkimage.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index 2dc67f499b..8243742d65 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -389,8 +389,8 @@ static int sign_newidb(struct newidb *idb, const char *path)
 #else
 static int sign_newidb(struct newidb *idb, const char *path)
 {
-       fprintf(stderr, "Signing support requires at least OpenSSL 3.0\n");
-       return -ENOSYS;
+	fprintf(stderr, "Signing support requires at least OpenSSL 3.0\n");
+	return -ENOSYS;
 }
 #endif
 
@@ -481,6 +481,12 @@ int main(int argc, char *argv[])
 
 	n_code = argc - optind;
 
+	if (!outfile) {
+		fprintf(stderr, "No output file specified, use -o\n");
+		usage(argv[0]);
+		exit(1);
+	}
+
 	if (re_sign) {
 		if (n_code) {
 			fprintf(stderr, "unhandled non-opt arguments\n");
@@ -543,7 +549,7 @@ int main(int argc, char *argv[])
 
 	fd = creat(outfile, 0644);
 	if (fd < 0) {
-		fprintf(stderr, "Cannot open %s: %s\n", outfile, strerror(errno));
+		fprintf(stderr, "Cannot create %s: %s\n", outfile, strerror(errno));
 		exit(1);
 	}
 

-- 
2.47.3



