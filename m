Delivery-date: Mon, 15 Jan 2024 18:02:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQME-000QQO-0L
	for lore@lore.pengutronix.de;
	Mon, 15 Jan 2024 18:02:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPQME-00037r-Q8
	for lore@pengutronix.de; Mon, 15 Jan 2024 18:02:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3dJHZcwBdZHgqE2nyIyW4lSI0mQlnYmAJCV316B9P9E=; b=BVMPrjCck62zKiBJZiy6f3S+PD
	ZFf/lhQzkWT2gWMNdGxMOkmJoM5vGZoF4i0SbJETEwsy9fAXeR41I6GZxqg1N3uMNtaLc4CUOtBxg
	PzWRNgeTZdDsds7+O0BJ2Mw0T0kfjxd7/P49aiTSJr9n8Phs5IFAkQUypKN8Q+LgUhU497AXkED1d
	dMn/h/5nOTQx0g72Fly5lXEm3j3c1jyThAXffmY9jnZt5p6cB0mANNCogC++mlw8fLptssMFMmUZE
	5igA8F/OkCdVwA/zjd82wvVHFcJRkfGQSX8XhnGbDY+e3AWf2PrlMJTqmVPeGLusgCsakhkYW8iMx
	/b1Tluhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKt-009klT-0w;
	Mon, 15 Jan 2024 17:01:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPQKq-009kjd-2U
	for barebox@lists.infradead.org;
	Mon, 15 Jan 2024 17:01:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0002aB-VE; Mon, 15 Jan 2024 18:01:11 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-0003bV-Hp; Mon, 15 Jan 2024 18:01:11 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rPQKl-001Lgg-1W;
	Mon, 15 Jan 2024 18:01:11 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.felsch@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Jan 2024 18:01:10 +0100
Message-Id: <20240115170110.321676-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240115170110.321676-1-a.fatoum@pengutronix.de>
References: <20240115170110.321676-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240115_090116_804459_677DBF0A 
X-CRM114-Status: GOOD (  10.65  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] pbl: add COMPILE_TEST prompt for PBL_VERIFY_PIGGY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

PBL_VERIFY_PIGGY is selected by boards that require verification of
barebox proper, e.g. when secure booting. The option can also be useful
during debugging, just to verify that barebox proper was not corrupted,
therefore add a prompt when CONFIG_COMPILE_TEST=y.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 91970c19bc1e..f94791ff8a49 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -48,7 +48,7 @@ config PBL_RELOCATABLE
 
 config PBL_VERIFY_PIGGY
 	depends on ARM
-	bool
+	bool "Verify barebox proper hash before decompression" if COMPILE_TEST 
 
 config BOARD_GENERIC_DT
 	bool
-- 
2.39.2



