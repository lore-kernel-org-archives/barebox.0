Delivery-date: Wed, 26 Mar 2025 09:00:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgJ-004Ljm-0Z
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgI-0005jr-15
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WqsdtrTS8VmW9jJ238ZD6+gYWO6onV0WK42kdZPJQO4=; b=iUG20jWr96RctqE0QjPU7XGOBT
	MZgLDW3/MyNehyKiw6Q8UjgYv+1dZYVgOcNs0Xz6T4UO4xYnxgwd6MlExN59T6By1FMo6fO9OJnnT
	0bPL6YYMxxGK/rIXvnF76IrnPAyvmE55Sp0kLkto6WSmMNEXgowKjTan6C09kQDB3LKcOCwOAKtvc
	7RBH0gnhBDX1ERg+DN5b415+QIzmbYXjpWGMhOveinCfLEXgv4QlRcfiFoLJ9XJ0Y98egHGX/v36l
	wpFcwTNiQCzYBZlTiQVIAXH/z6/+yNqC1F49NrltDYrcHTe8qXeVh/MpG1P1vP434/5/WpFjdxnaJ
	oayxaBlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfm-00000007qZ2-0Dyi;
	Wed, 26 Mar 2025 07:59:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSd-1ykh
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005KU-6P; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAs-1r;
	Wed, 26 Mar 2025 08:59:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-2u;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:17 +0100
Message-Id: <20250326075919.3448789-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_518868_C882E810 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] MAKEALL: remove use of alias in script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Aliases are meant for interactive shell and not expanded by default in
scripts. As we are going to call pytest in one location only, just turn
it into a variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 MAKEALL | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/MAKEALL b/MAKEALL
index 85b71e2e75c1..d47f0204f1f1 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -219,7 +219,9 @@ do_build_defconfig() {
 }
 
 if command -v labgrid-pytest >/dev/null; then
-	alias pytest=labgrid-pytest
+	pytest=labgrid-pytest
+else
+	pytest=pytest
 fi
 
 do_test_defconfig() {
@@ -229,7 +231,7 @@ do_test_defconfig() {
 	local step_time_start=$(date +%s)
 	local err=0
 
-	LG_BUILDDIR=$BUILDDIR with_logs_collected pytest --lg-env $yaml "$@"
+	LG_BUILDDIR=$BUILDDIR with_logs_collected $pytest --lg-env $yaml "$@"
 	compile_result="$?"
 
 	report "Test: " ${yaml}
-- 
2.39.5



