Delivery-date: Mon, 11 Sep 2023 17:26:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfind-00Bddu-Vv
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 17:26:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfinb-0007SW-FU
	for lore@pengutronix.de; Mon, 11 Sep 2023 17:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jkBWdOMpY2K3/mR1nsypA+De8cmLi2R8d8syd1n5UaM=; b=ovni9SfQ4ZR8I13zSdL35beBSt
	3A4QgkZROYU+QDbEOfnWyTQlKezaHdgb+GYerPX/hNEt6hWiUlnRoSw+QvBvyYOrV21YN5UFeJPcv
	32mVosJlRxNY5YS3laf0r6QBBm+lk4aEMwbcGekT5bg8gE5Lwkgd6O0tB3zl/EHKQJfzQeSgFWBvS
	ZijLaFOOslgHvAGQV19csNuZN7JcDHlFEosjL05XO3vzUShC1RjFyUloNEUIDmFbhkmPbhBSr8gdW
	EjX+zxgbW5R4x/4sH9rthM80cWrD09LbJFxIBkNRGpD4dXGfEccVyWSBR/rRRkep51pp/Jgbb9smL
	uIZ/Cw/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimT-000sCM-0u;
	Mon, 11 Sep 2023 15:24:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfimO-000s99-1r
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 15:24:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimM-00071B-Jk; Mon, 11 Sep 2023 17:24:46 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimM-005a8x-5G; Mon, 11 Sep 2023 17:24:46 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfimL-00FHKY-2E;
	Mon, 11 Sep 2023 17:24:45 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 17:24:28 +0200
Message-Id: <20230911152433.3640781-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
References: <20230911152433.3640781-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_082448_619831_9E863F17 
X-CRM114-Status: GOOD (  11.51  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] tlsf: ensure malloc pool is aligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The struct control_t describing a pool is allocated at its very start
and then directly followed by the first block. To ensure the first block
is suitably aligned, align_up the size in tlsf_size(). So far, TLSF on
32-bit and 64-bit happened to be aligned, so this introduces no
functional change just yet. With upcoming changes to the block header to
increase alignment on 32-bit systems, this realignment will become required.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 3673b424a4c5..784012a1f7ab 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -763,11 +763,11 @@ int tlsf_check_pool(pool_t pool)
 
 /*
 ** Size of the TLSF structures in a given memory block passed to
-** tlsf_create, equal to the size of a control_t
+** tlsf_create, equal to aligned size of a control_t
 */
 size_t tlsf_size(void)
 {
-	return sizeof(control_t);
+	return align_up(sizeof(control_t), ALIGN_SIZE);
 }
 
 size_t tlsf_align_size(void)
-- 
2.39.2



