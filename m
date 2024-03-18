Delivery-date: Mon, 18 Mar 2024 12:31:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDU-00CHCF-1z
	for lore@lore.pengutronix.de;
	Mon, 18 Mar 2024 12:31:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmBDU-0003PN-1O
	for lore@pengutronix.de; Mon, 18 Mar 2024 12:31:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W0MdDEmSfsUD6O4o447mfeSDL8elwfOGdRD/9iNas4A=; b=qweW9DS6Ef2pdHKe6153NlRdZb
	ESJwHHlM4dJWwIzh63lMbjHc9TW5Sao3nZJ2GJfqJOGKzwMatJio3PoO5684gmHxGU1s3bmS6wcrN
	A9w6WwdvJ8Dv1dp1Ceq8ikwismnYeviBTbkifVWCmB7VCSoIgXOlm/NWn8Xq6YHylv239aSFGpgna
	VYeMUmnVJ1rivDQ7e3fHm7p27y7iU2b5gzqcG1BwnNLznGtL+BIFO5ZA7p1uYfCX6sLi8njO9FsaY
	V33MBosPm4QOFIOry7QzzPu47TPd1WovueuZG9KuhOkcmaODdXxlCdYK4NxIBpb+vKAm+JhXZCvsB
	g/4D6TQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmBD9-00000008NB8-1ECe;
	Mon, 18 Mar 2024 11:31:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5X-000000087KY-0zmv
	for barebox@bombadil.infradead.org;
	Mon, 18 Mar 2024 10:19:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=W0MdDEmSfsUD6O4o447mfeSDL8elwfOGdRD/9iNas4A=; b=Y6RqVKAuyqqtLYsE5WnAdPs8QL
	ksgOHxsMqfA5j376Vu8yP3BKojIkXdsHiHxKKcfGARk3YFy9YewvW87MfrKFn+X2U/Q4KwLjg8xcn
	0Gbn/MVdLdEgIMS86GrMdg8fNTkPjjUZ7Kajw7XDJUHroe/6sx/Azo7dKy09q/HlvX/r3v9oodYRW
	MZS+GEeAZ62AJRXplEei0p+n7c5jLo60McOSYbT3UgOWqUThcm/RE3i9Ob/VHPCnZEVDcWQno0h5b
	LPSU8qzUuCEDkW3b0N6EIn/XrbSPwtISrGOKqYxYu9idev7+OuZ7ZuPItypLWe3PSVDtI3gHXzPUU
	9J6vwXWw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmA5S-0000000CZpe-1AbL
	for barebox@lists.infradead.org;
	Mon, 18 Mar 2024 10:19:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1rmA5P-0006MJ-Cy; Mon, 18 Mar 2024 11:19:19 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 18 Mar 2024 11:18:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-9-48756863add6@pengutronix.de>
References: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
In-Reply-To: <20240318-v2024-02-0-topic-arasan-hs200-support-v4-0-48756863add6@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1988;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=LgUIXkmEBal80i0mwZLV1LR6Xh/1vXGduF+HMk4TdG8=;
 b=owGbwMvMwCUmvd38QH3grB+Mp9WSGFJ/iPL2C1+xfb4psnzWp3O+h+UbwuT1Q2QsliUy9fLEZ
 Sxr5eDsKGVhEONikBVTZIlce0hjs/BnnS/HzzPAzGFlAhnCwMUpABO5OZWRYXPtg0yP6xVSat/F
 hYzmv36YtDns9+P1/bdf7vtzeOaESkNGhiPZsx9f+NW8evXfqFaV6nL9ezPOyT2ZkOz09ukjC80
 XO3kA
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=59ADC228B313F32CF4C7CF001BB737C07F519AF8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240318_101922_758388_895AB4EE 
X-CRM114-Status: UNSURE (   7.58  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 09/15] include: mci: add more EXT_CSD_CARD_TYPE_*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Import missing EXT_CSD_CARD_TYPE_ defines from linux v6.7.

EXT_CSD_CARD_TYPE_SDR_1_8V/1_2V is unused in barebox. Replace with the
defines from linux.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mci.h | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index fe0bd26888..a72ede8db5 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -293,13 +293,24 @@
 #define EXT_CSD_CARD_TYPE_MASK		0x3f
 #define EXT_CSD_CARD_TYPE_26		(1<<0)	/* Card can run at 26MHz */
 #define EXT_CSD_CARD_TYPE_52		(1<<1)	/* Card can run at 52MHz */
+#define EXT_CSD_CARD_TYPE_HS		(EXT_CSD_CARD_TYPE_HS_26 |	\
+					 EXT_CSD_CARD_TYPE_HS_52)
 #define EXT_CSD_CARD_TYPE_DDR_1_8V	(1<<2)	/* Card can run at 52MHz */
 						/* DDR mode @1.8V or 3V I/O */
 #define EXT_CSD_CARD_TYPE_DDR_1_2V	(1<<3)	/* Card can run at 52MHz */
 						/* DDR mode @1.2V I/O */
-#define EXT_CSD_CARD_TYPE_SDR_1_8V	(1<<4)	/* Card can run at 200MHz */
-#define EXT_CSD_CARD_TYPE_SDR_1_2V	(1<<5)	/* Card can run at 200MHz */
+#define EXT_CSD_CARD_TYPE_DDR_52	(EXT_CSD_CARD_TYPE_DDR_1_8V  \
+					 | EXT_CSD_CARD_TYPE_DDR_1_2V)
+#define EXT_CSD_CARD_TYPE_HS200_1_8V	(1<<4)	/* Card can run at 200MHz */
+#define EXT_CSD_CARD_TYPE_HS200_1_2V	(1<<5)	/* Card can run at 200MHz */
 						/* SDR mode @1.2V I/O */
+#define EXT_CSD_CARD_TYPE_HS200		(EXT_CSD_CARD_TYPE_HS200_1_8V | \
+					 EXT_CSD_CARD_TYPE_HS200_1_2V)
+#define EXT_CSD_CARD_TYPE_HS400_1_8V	(1<<6)	/* Card can run at 200MHz DDR, 1.8V */
+#define EXT_CSD_CARD_TYPE_HS400_1_2V	(1<<7)	/* Card can run at 200MHz DDR, 1.2V */
+#define EXT_CSD_CARD_TYPE_HS400		(EXT_CSD_CARD_TYPE_HS400_1_8V | \
+					 EXT_CSD_CARD_TYPE_HS400_1_2V)
+#define EXT_CSD_CARD_TYPE_HS400ES	(1<<8)	/* Card can run at HS400ES */
 
 /* register PARTITIONS_ATTRIBUTE [156] */
 #define EXT_CSD_ENH_USR_MASK		(1 << 0)

-- 
2.43.2



