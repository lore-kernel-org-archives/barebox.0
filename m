Delivery-date: Tue, 02 May 2023 09:40:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd6-0027jX-S3
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:40:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkd4-0002dt-PX
	for lore@pengutronix.de; Tue, 02 May 2023 09:40:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G8MmbNUqgRt/DqqCr4u2OZRuvg7ZclcmETNwEqAOzJc=; b=z0W/vDfIyCN+sDHscV/4+Yn9Kv
	C0KTZLP5tPHlQiKfQH3vp2AnNWTrFXCrAH/BWcN+FTfR5/wdTqYsXQzBna8kQwqZGzp43rdT/Q4x0
	nNtR6ftGp7i2RJavI9902uigE2rMH4r9dFmAkFn/YUVIbRcD9EF9vg0HKxeKo5G9P3J1P7C5MVPi+
	G+4hXQSSI8bgEBfL7VPbVmAljQNFA4XrGiwVlsf1tGyN6EMyZthAUMCZAYTWPVPRwAzTZuxB9hilg
	Nc1ECMJWfWAIdQcMDuaicY7sQhjErl1diUk170pVjr5ZtvF/dcRM1/9o1vxwdhPIxiB+PYTtYvgcX
	IJfulrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbu-000V0s-1i;
	Tue, 02 May 2023 07:39:42 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkbl-000Uu8-2F
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:39:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbg-0001y6-Sg; Tue, 02 May 2023 09:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbf-000XPv-KT; Tue, 02 May 2023 09:39:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkbe-001Me6-DH; Tue, 02 May 2023 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:39:19 +0200
Message-Id: <20230502073925.266116-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502073925.266116-1-s.hauer@pengutronix.de>
References: <20230502073925.266116-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_003933_729249_54245AEB 
X-CRM114-Status: GOOD (  11.48  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/10] MAKEALL: Do not print sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The size of the barebox proper binary is not very useful to print,
the binary will be compressed which decreases its size and the PBL
will be added to it which then adds to the resulting size again.

Printing the sizes will only show what we all know already: Software
gets bigger over time when new features are added and more corner
cases are handled. Just drop printing of the sizes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 MAKEALL | 1 -
 1 file changed, 1 deletion(-)

diff --git a/MAKEALL b/MAKEALL
index 5b1fb3ddd6..c1048a21e2 100755
--- a/MAKEALL
+++ b/MAKEALL
@@ -138,7 +138,6 @@ do_build_target() {
 
 		if [ "$compile_result" = "0" ]; then
 			printf "OK     \n" | tee -a "${log_report}"
-			${cross_compile}size ${BUILDDIR}/barebox | tee -a "${log_report}"
 		else
 			printf "FAILED \n" | tee -a "${log_report}"
 			ret=1
-- 
2.39.2



