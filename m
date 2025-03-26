Delivery-date: Wed, 26 Mar 2025 09:00:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgN-004Lld-2I
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgM-0005on-Iu
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ho+VqJU7euvhvLjAhQVyLE9djP/pwhca/N39nMKTmVY=; b=dkUv51ps2dosA4JCjYYnwDWF8k
	Yt5tNCCA+1zBYc5OL6HZ9fIbWR+b++xDNJn6CWXAvproH/8IcZ1hn4uX7qlyv5Q2FzQOiKA3/WNdS
	YnGFEKikPQJK20SijhI9Q6grs/Y4/Mz/xOVGSkXu57YA8GcN80G+0jkY3HFQeSCf2aijExQYVy5Pu
	Swd4MbTWDJHygMy09Ge6mRUmxWN4dAuPq4Nj43+nv7c+ufjh8OzpA2Zwd8B0p/U9LxvhmE7YDLXT9
	W95NNj1fJ/whl+vWNVlVTZc7e87OSmqcOqmwoOOXZIPtfz7Qd/IlEr/r9xSEJKVLbqRSWMoWjv1ge
	QEMVk/KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfx-00000007qg6-0IiS;
	Wed, 26 Mar 2025 07:59:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfe-00000007qVt-2V1y
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005Km-9b; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAy-2A;
	Wed, 26 Mar 2025 08:59:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-3D;
	Wed, 26 Mar 2025 08:59:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:19 +0100
Message-Id: <20250326075919.3448789-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005930_630271_C2297177 
X-CRM114-Status: GOOD (  10.21  )
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
Subject: [PATCH 6/6] ci: run static analysis on allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that allyesconfig builds again for sandbox, let's switch the
coverity and CodeQL workflows to use it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/codeql.yml  | 2 +-
 .github/workflows/coverity.sh | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/.github/workflows/codeql.yml b/.github/workflows/codeql.yml
index ca4b1f611d53..767c49c4beeb 100644
--- a/.github/workflows/codeql.yml
+++ b/.github/workflows/codeql.yml
@@ -37,7 +37,7 @@ jobs:
     - name: Build C Code
       shell: bash
       run: |
-        make ARCH=sandbox sandbox_defconfig
+        make ARCH=sandbox allyesconfig
         make -j$(nproc) ARCH=sandbox
 
     - name: Perform CodeQL Analysis
diff --git a/.github/workflows/coverity.sh b/.github/workflows/coverity.sh
index ee4a481503c7..eb6cbfe93fa7 100755
--- a/.github/workflows/coverity.sh
+++ b/.github/workflows/coverity.sh
@@ -35,7 +35,7 @@ function run_coverity {
 
     version="$(make bareboxversion)-g${GITHUB_SHA:0:10}"
 
-    make ARCH=sandbox sandbox_defconfig
+    make ARCH=sandbox allyesconfig
     COVERITY_UNSUPPORTED=1 "$tool_dir/bin/cov-build" --dir "$results_dir" sh -c "make -j$(nproc) ARCH=sandbox"
     "$tool_dir/bin/cov-import-scm" --dir "$results_dir" --scm git --log "$results_dir/scm_log.txt"
 
-- 
2.39.5



