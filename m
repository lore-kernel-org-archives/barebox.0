Delivery-date: Thu, 10 Jul 2025 15:14:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZr6Y-00G3G0-0o
	for lore@lore.pengutronix.de;
	Thu, 10 Jul 2025 15:14:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZr6X-0006uI-Nl
	for lore@pengutronix.de; Thu, 10 Jul 2025 15:14:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GbdN5VwX9/VK7dgK6TxzM2jYZtlAEFIVc8en722r8Jw=; b=Kr84H6EQqh/M1QwdT5HIpe4ucI
	RsIVuHDZKrhKs4GapEcxGCjZYZ2Fl4Idjz4PkD85RYicKO/KreKA92HzS5oOtXRD2LwpusXnvZEiR
	lEsjku6O+GsQctCR6T9HGDtfrs3kHP7t1GFCJu/p1v1MT040kbGb08MZndQfsDRTH35ptYDLZ/R2n
	b4sVaM9ay4tdw9VIFgFHnwZYOPFJw2yDRGPWYTHhx8dCH4Eta1tnft7LU2N61ME2OVazVaHIPbNVY
	4WnMBFvwt1ky20DgfHV7X0WacIze1sL1wTANboSvh8uIkYw8FLeTNrKxUeOc3KDGoBjY7A+R/eX0z
	DhmDQO/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZr6F-0000000BtOM-0rlN;
	Thu, 10 Jul 2025 13:14:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoqj-0000000BXFx-3YxO
	for barebox@bombadil.infradead.org;
	Thu, 10 Jul 2025 10:49:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GbdN5VwX9/VK7dgK6TxzM2jYZtlAEFIVc8en722r8Jw=; b=DP1v3kFXAHCQ7wi7aj5Zxm2LlT
	DYqCq1CJfJ8fjbQB9ZlZz3IDeO5nyDHJVVtQEyKsOTo8y+VgdrT14v1h3zZ9Shv7GijmKZocHxA0u
	b71O2+aURPZ8pxrJeKx8xkg/ljpnTG6jAnSDyFSXEvU20bw2Gec/Baw1iZb1TnkQnT0qXewrEFOIi
	TX8+1RGcpRclTxxKSIORGKRl7d6JAeDfQIgK+eFXadW9SAW/D4JvdqAD+IK9QcGEB9x+RqYgYEY90
	pphgbchKM4Z20hZLlbxvTwE2IJaqBN9lxZM4pwV4GadqgDH8+SSjNerYciASDImlJWvybzBGxC6RP
	LmjTswMA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZoqg-00000008zyV-2eqt
	for barebox@lists.infradead.org;
	Thu, 10 Jul 2025 10:49:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZoqc-0008Ag-Ra; Thu, 10 Jul 2025 12:49:50 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZoqc-007jjs-27;
	Thu, 10 Jul 2025 12:49:50 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uZoqc-0079zI-07;
	Thu, 10 Jul 2025 12:49:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Jul 2025 12:49:49 +0200
Message-Id: <20250710104949.1706109-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_114954_864836_577FCBEC 
X-CRM114-Status: GOOD (  10.55  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] partition: fix kernel doc for region_identical
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The parameters in the comment are correct, but the heading wasn't.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/range.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/range.h b/include/range.h
index f72849044d0b..82c152f3f7c8 100644
--- a/include/range.h
+++ b/include/range.h
@@ -41,7 +41,7 @@ static inline bool region_overlap_size(u64 starta, u64 lena,
 }
 
 /**
- * region_overlap_end - check whether a pair of [start, end] ranges overlap
+ * region_identical - check whether a pair of [start, extend] ranges are identical
  *
  * @starta:  start of the first range
  * @extenta: end or length of the first range
-- 
2.39.5



