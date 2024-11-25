Delivery-date: Mon, 25 Nov 2024 16:13:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFamA-000FZz-1j
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:13:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFam9-0007y3-Ez
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:13:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLH9i+VD5mXxhtClEBg9rZ6nVoDXmrX9fMzRXjBLhoU=; b=kM9rW87Eopb00Pp2ij6/X1dgR5
	rNnZAKVol6fbKCmU3EGL0gc9gWZicagCeQjQEDfqh+4rl1po+9AF/sGcMah2I3I+CPhOZHfHZbqdo
	DOQnxfgWfP/GHHiB6zkSXjbjUhMNvFsWUrHere9zAan2/luHcfgcqlWrGnoH9RECI9aYpGpYaOPw1
	V7lyejPDTEM8cADxKuh1znaZWWALM1l+1bNdyNCmPwduEr/Ff3WkOTV6uXgro2AP5Ivjv4UinHjg2
	HUYqIuzsngAqcHi8rTqZ1PFF5wytCPYUZP81RZNZKy9VCD9zubQ8qDh/mxcdx/+C05qkNGpojgg8o
	1+AhlXFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFalg-00000008Pwc-2c3g;
	Mon, 25 Nov 2024 15:12:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFald-00000008PtY-214N
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:12:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFalc-0007MZ-0a; Mon, 25 Nov 2024 16:12:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFala-0006N5-2Y;
	Mon, 25 Nov 2024 16:12:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFala-001lui-2l;
	Mon, 25 Nov 2024 16:12:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:12:46 +0100
Message-Id: <20241125151246.422255-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125151246.422255-1-a.fatoum@pengutronix.de>
References: <20241125151246.422255-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_071249_514667_0645F67C 
X-CRM114-Status: GOOD (  10.42  )
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
Subject: [PATCH 2/2] ci: don't run make in silent mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

By setting the log directory to an empty string, all log output goes to
the console and can thus be easily seen in the Github Actions CI output.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml    | 2 +-
 .github/workflows/test-labgrid-pytest.yml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index f8cb7c2a5929..c95c56b6ba88 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -39,7 +39,7 @@ jobs:
 
         ./test/generate-dummy-fw.sh
 
-        ./MAKEALL -O build-${{matrix.arch}} \
+        ./MAKEALL -O build-${{matrix.arch}} -l "" -v 0 \
                 -k common/boards/configs/disable_size_check.config \
                 -k common/boards/configs/disable_target_tools.config \
                 -k common/boards/configs/enable_werror.config \
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 5cf726854b6e..2a9f7a53aced 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -63,7 +63,7 @@ jobs:
       run: |
         export ARCH=${{matrix.arch}}
 
-        ./MAKEALL -O build-${{matrix.arch}} \
+        ./MAKEALL -O build-${{matrix.arch}} -l "" -v 0 \
                 -k common/boards/configs/enable_self_test.config \
                 -k common/boards/configs/disable_target_tools.config \
                 ${{matrix.defconfig}}
-- 
2.39.5



