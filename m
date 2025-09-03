Delivery-date: Wed, 03 Sep 2025 18:26:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utqJS-007i4P-0z
	for lore@lore.pengutronix.de;
	Wed, 03 Sep 2025 18:26:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1utqJR-0004JP-5b
	for lore@pengutronix.de; Wed, 03 Sep 2025 18:26:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+1dzPiBcdXjtSuov0NSzwQMuYNfGtIUV2DgzWcSJr88=; b=aSpQAXgm4jIzAmpgYj/C5vmmC8
	JnU6ZCJ7bHyXeEc1qp3yr6qDCa8ZQYN5mfZeF/H1BYWdT6kUiI2xrXZ1AsMSUxGb0gtALDlO1vzbf
	+ZAwauTT1i7bpENHtGTUKxPon3sh2RS5yZ7Kwkqgx2xLhJWiKrnZH9i9UOfqTZqkV9z0UTlxQELI6
	Ce3wnt6KqeL9bqBuM9l24fX8ReZo6lCRuIHyzdrSIIfCBRA5LSVQJn3c83mkkU+Bn/E1FsZ66c/30
	CnquNoM19NMNlyQVThboqpQwq8AmOmMlaWaE3KQvzHfOxKdCNXFOpta73rorUuGJo9ZcPfw5/Bjyi
	qAda97VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utqIp-000000073f2-0QnY;
	Wed, 03 Sep 2025 16:25:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnJD-00000006XiD-1iwn
	for barebox@lists.infradead.org;
	Wed, 03 Sep 2025 13:13:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utnJB-00038g-BZ; Wed, 03 Sep 2025 15:13:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utnJB-003ZDg-0Z;
	Wed, 03 Sep 2025 15:13:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1utnJB-00000008ETR-0L5J;
	Wed, 03 Sep 2025 15:13:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Sep 2025 15:13:47 +0200
Message-ID: <20250903131350.1962000-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_061355_446279_9BA11C81 
X-CRM114-Status: UNSURE (   9.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! ci: container: update components installed on top to newest versions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I missed updating the path to the kvx toolchain.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/test/Containerfile b/test/Containerfile
index 39bd64603e86..c6c3c57596a6 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -100,7 +100,7 @@ ENV CROSS_COMPILE_mips=/opt/gcc-${GCC_VERSION}-nolibc/mips-linux/bin/mips-linux-
 ENV CROSS_COMPILE_openrisc=/opt/gcc-${GCC_VERSION}-nolibc/or1k-linux/bin/or1k-linux-
 ENV CROSS_COMPILE_powerpc=/opt/gcc-${GCC_VERSION}-nolibc/powerpc-linux/bin/powerpc-linux-
 ENV CROSS_COMPILE_riscv=/opt/gcc-${GCC_VERSION}-nolibc/riscv64-linux/bin/riscv64-linux-
-ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.0.0/bin/kvx-elf-
+ENV CROSS_COMPILE_kvx=/opt/gcc-kalray-kvx-v5.2.0/bin/kvx-elf-
 
 ENV CROSS_COMPILE_llvm=-${LLVM_VERSION}
 # Workaround for https://github.com/llvm/llvm-project/issues/112458
-- 
2.47.2



