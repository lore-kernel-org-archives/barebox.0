Delivery-date: Mon, 11 Mar 2024 11:22:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcnj-000tVh-36
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:22:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcne-0008At-4L
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:22:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FkuypBpAcUTUWXMPWhfF3FdW0cK3WJL/i0d36JmWNk4=; b=Wm912TT9L6b66SvQUr7qiG4NKB
	irSn161uuYr9Ts6GQrFm9nTCGgJyV69XR5WAfk/oUzsdYO6OqMfAzPUn5N60REwHNboZZvahRGJGB
	Co1CEJTAfBUEkFeAWl8txaDmbWFc2DmYhO4EdKTOuvgL5pTTwdQZglRjYKvKGMpYSz1EyQGMl+ESA
	FJH3zdspyA8Wt9EhKlrKEAhXdtecTq+68Ox5R7BuhdUu9VDLJondg5IQ0vFhsMHAqMfjNUTYKOkn2
	YqBKqk5aWBtSq9Z+3bymUsALKaY2y0qoFlstcVCzgcou2tHkhN+NMP1AOUd9LYRaOUzHcaD5wAM6Q
	f2WuWeLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcnD-000000014pi-3tRG;
	Mon, 11 Mar 2024 10:22:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn6-000000014l7-3JfE
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:21:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-0007fK-Pe; Mon, 11 Mar 2024 11:21:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-005gym-DH; Mon, 11 Mar 2024 11:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-001WE1-0z;
	Mon, 11 Mar 2024 11:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 11:21:48 +0100
Message-Id: <20240311102152.360762-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032156_913265_63CED47E 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] ARM: i.MX: ele: move ELE_READ_SHADOW_REQ definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ELE request defines are in include/mach/imx/ele.h, move definition
of ELE_READ_SHADOW_REQ there as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 2 --
 include/mach/imx/ele.h  | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index ab3958cbd3..095eaec8f6 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -228,8 +228,6 @@ int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 	return ret;
 }
 
-#define ELE_READ_SHADOW_REQ 0xf3
-
 int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 {
 	struct ele_msg msg;
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index 0c863f6cb3..da4b0aa50d 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -45,6 +45,7 @@
 #define ELE_ATTEST_REQ (0xDB)
 #define ELE_RELEASE_PATCH_REQ (0xDC)
 #define ELE_OTP_SEQ_SWITH_REQ (0xDD)
+#define ELE_READ_SHADOW_REQ (0xF3)
 
 /* ELE failure indications */
 #define ELE_ROM_PING_FAILURE_IND (0x0A)
-- 
2.39.2



