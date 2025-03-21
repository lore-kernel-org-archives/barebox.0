Delivery-date: Fri, 21 Mar 2025 11:38:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvZlz-002I4M-0V
	for lore@lore.pengutronix.de;
	Fri, 21 Mar 2025 11:38:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tvZly-000330-2G
	for lore@pengutronix.de; Fri, 21 Mar 2025 11:38:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NHaEASi3VQGQQOHu7SaUMsqa4cXKVLLdxqmVys2oq/8=; b=DBmbNCASLGvZLJHfP0F/fZqhoU
	PJmBgZoZFTyHILmFPrR4gqhenIcDJAKqMOrU0CrSx1oDQNjUOXRyMSBbzExwMVjpEiT7vGV1lxM5p
	BB49N1I2ZR1tSpoNbrUg5zBlI7C1PqthnmIDAyaVJFKUIVFxUuJaSrUX4u5k71JH0DaaWRjhQugIi
	be65uNzdISvNgmgvBMUt3P5kv6rRJetULYhvucwwXBNFJfKvM3eZDzdAXgr6QF9TYUFhc4BXyWfk8
	xce9AXaMqaTyzyPUy8MgJB5tHvgibmsGsXgZPsLdLQKGMzOWGxDu+aeq7sR80oPVKc5zz8eW6hc4a
	lU6rttmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZlE-0000000EXvz-08QS;
	Fri, 21 Mar 2025 10:37:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvZMV-0000000EUP4-00ES
	for barebox@lists.infradead.org;
	Fri, 21 Mar 2025 10:12:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvZMS-0008A2-Di; Fri, 21 Mar 2025 11:12:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvZMR-000u8L-2a;
	Fri, 21 Mar 2025 11:12:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tvZMS-004xLt-0R;
	Fri, 21 Mar 2025 11:12:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Mar 2025 11:12:18 +0100
Message-Id: <20250321101218.1181081-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_031223_036465_CD95B7E4 
X-CRM114-Status: UNSURE (   8.71  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ci: coverity: fix git hash truncation to 10 characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A misplaced $ lead to versions looking like this:

  Version: 2025.02.0-g\{84a1605196530ff77...

instead of

  Version: 2025.02.0-g84a1605196

Move it to fix.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Untested, but looks straight-forward enough.
---
 .github/workflows/coverity.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/.github/workflows/coverity.sh b/.github/workflows/coverity.sh
index 1fd7dd068275..ee4a481503c7 100755
--- a/.github/workflows/coverity.sh
+++ b/.github/workflows/coverity.sh
@@ -33,7 +33,7 @@ function run_coverity {
     tool_dir=$(find "$COVERITY_SCAN_TOOL_BASE" -type d -name 'cov-analysis*')
     results_archive="analysis-results.tgz"
 
-    version="$(make bareboxversion)-g{$GITHUB_SHA:0:10}"
+    version="$(make bareboxversion)-g${GITHUB_SHA:0:10}"
 
     make ARCH=sandbox sandbox_defconfig
     COVERITY_UNSUPPORTED=1 "$tool_dir/bin/cov-build" --dir "$results_dir" sh -c "make -j$(nproc) ARCH=sandbox"
-- 
2.39.5



