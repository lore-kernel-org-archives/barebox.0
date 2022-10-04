Delivery-date: Tue, 04 Oct 2022 17:56:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHa-005iCb-Mx
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHZ-0006Lf-8d
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=skgXzleMndprIGtQ7QfBtSfc8RA6H/cv3uZzLexO5Uc=; b=xCA2zube2oZxReUt2E6VZMUHV2
	oOJV+tU73Sz3yWW6bSbm14bUmuOkz/TvPGPwoj69z86LZUGy4sWNJey5+vULtq1pPVBmRD5+plclf
	FkOPeo5qOFeJRdlYtpQomKAxePJvetPl9BKmPkoXSiwFeULgA2gOqKDACUVezTitkHrLXesksmJZv
	9BBYYVHASQa8y7aD2w1WR949ppWwVdfdhA8YV6b/pYA2npSeEcxkQTFUCIRQaDTRtIzF6IePxmnGl
	+DnMiRx6A0lAQ+yOFl0JnYyqX/Uofl1GuIxzTfz3WIhhNMSkGjdI8qDxcALnL3z24Oq6saRCIikn5
	gwkbgqRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGE-00A7p4-PO; Tue, 04 Oct 2022 15:55:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mF-6O
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005ga-O2; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004ale-7K; Tue, 04 Oct 2022 17:54:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8J-BL; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:04 +0200
Message-Id: <20221004155405.3458479-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_322529_87420442 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] tlsf: use 8-byte alignment for normal malloc allocations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current alignment of 4 bytes is too low. Access to 64-bit data via
ldrd/strd requires at least an eight byte alignment:

  | Prior to ARMv6, if the memory address is not 64-bit aligned, the
  | data read from memory is UNPREDICTABLE. Alignment checking (taking
  | a data abort), and support for a big-endian (BE-32) data format are
  | implementation options.

We already have at least an 8 byte alignment for dlmalloc, so have TLSF
follow suit.

Reported-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Link: https://lore.barebox.org/barebox/ly7d1z1qvs.fsf@ensc-pc.intern.sigma-chemnitz.de/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 16682435e492..561635dfd3f3 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -35,13 +35,8 @@ enum tlsf_public
 /* Private constants: do not modify. */
 enum tlsf_private
 {
-#if defined (TLSF_64BIT)
 	/* All allocation sizes and addresses are aligned to 8 bytes. */
 	ALIGN_SIZE_LOG2 = 3,
-#else
-	/* All allocation sizes and addresses are aligned to 4 bytes. */
-	ALIGN_SIZE_LOG2 = 2,
-#endif
 	ALIGN_SIZE = (1 << ALIGN_SIZE_LOG2),
 
 	/*
@@ -95,7 +90,7 @@ enum tlsf_private
 #define tlsf_static_assert(exp) \
 	typedef char _tlsf_glue(static_assert, __LINE__) [(exp) ? 1 : -1]
 
-typedef size_t tlsf_size_t;
+typedef uint64_t tlsf_size_t;
 
 /* This code has been tested on 32- and 64-bit (LP/LLP) architectures. */
 tlsf_static_assert(sizeof(int) * CHAR_BIT == 32);
-- 
2.30.2



