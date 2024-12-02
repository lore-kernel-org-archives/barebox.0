Delivery-date: Mon, 02 Dec 2024 13:46:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ot-0035Uv-1E
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 13:46:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI5ot-00073j-6V
	for lore@pengutronix.de; Mon, 02 Dec 2024 13:46:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TquzHlgzh8OGvwkwSHQl2tXf9QUVR1MsEIskO/yc6c0=; b=pB767Gti+zsUr+pbINa11n+toM
	vWZSXdXCspndf73srLcdJulg3cBQAxy7jzJwjU3dW0XRIVobBVc7l+u7yDvK+X4fMY1dPrA7mOk8v
	t6K2L8pDpAMbTgZW6uIIndU+jic/Qf+4CnPhnHwD+NxC8N/0cN527c88DnA2D8TawjP+rRdoEtL7B
	EeXgeRmmp8VfuN51wwtkJWJJELQfcPtebGWX+HirzBbdXM39HvUtB99itmoswckzmZ72K+gZQyHAm
	ROwW87zhRjNZq8XNCfMJUzwu7xNqUwk9WBTtmIFbga2PGfnEir0lcD25yYPfYJUrj/YDRMvPfPHHY
	c4UZhS7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5oV-000000067lJ-1Wpd;
	Mon, 02 Dec 2024 12:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI5l5-0000000674n-13u3
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 12:42:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5l3-0005vt-Si; Mon, 02 Dec 2024 13:42:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5l2-001IbR-30;
	Mon, 02 Dec 2024 13:42:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI5l3-007bsg-1z;
	Mon, 02 Dec 2024 13:42:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 13:42:32 +0100
Message-Id: <20241202124232.1813897-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_044235_287686_BC02B247 
X-CRM114-Status: GOOD (  14.32  )
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
Subject: [PATCH master] checkpatch: fix detection of barebox root directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In v2024.09.0, we switched from our old README to a new fancy
README.rst. What was missing though, was adjusting scripts/checkpach.pl
as it uses the existence of a number of files, including the README file
to decide whether a directory is the top-level barebox directory or not.

Rename README to README.rst and while at it, change the error messages
to not output a confusing:

  checkpatch.pl: Must be run from the top-level dir. of a kernel tree

Reported-by: danct12 # IRC
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/checkpatch.pl | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index ce1c9b48476c..9093841d8179 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -96,7 +96,7 @@ Options:
   --show-types               show the specific message type in the output
   --max-line-length=n        set the maximum line length, if exceeded, warn
   --min-conf-desc-length=n   set the min description length, if shorter, warn
-  --root=PATH                PATH to the kernel tree root
+  --root=PATH                PATH to the barebox tree root
   --no-summary               suppress the per-file summary
   --mailback                 only produce a report in case of warnings/errors
   --summary-file             include the filename in summary
@@ -329,7 +329,7 @@ if ($tree) {
 	}
 
 	if (!defined $root) {
-		print "Must be run from the top-level dir. of a kernel tree\n";
+		print "Must be run from the top-level dir. of a barebox tree\n";
 		exit(2);
 	}
 }
@@ -1097,7 +1097,7 @@ sub top_of_kernel_tree {
 	my @tree_check = (
 		"arch", "commands", "common", "COPYING", "defaultenv",
 		"Documentation", "drivers", "fs", "include", "lib",
-		"MAKEALL", "Makefile", "net", "README", "scripts"
+		"MAKEALL", "Makefile", "net", "README.rst", "scripts"
 	);
 
 	foreach my $check (@tree_check) {
-- 
2.39.5



