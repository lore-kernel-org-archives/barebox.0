Delivery-date: Tue, 04 Oct 2022 17:56:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHU-005iBz-UK
	for lore@lore.pengutronix.de; Tue, 04 Oct 2022 17:56:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ofkHT-0006Ju-DQ
	for lore@pengutronix.de; Tue, 04 Oct 2022 17:56:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OMdTT36SdVkdz7jBQ3JV4L9skxgKN1w6boma8qNYABo=; b=2oo4Mf0Z9oJmAWi7jhMyxTBdkw
	G4b2zZuVHQHL5gou1SBofiEQz65YRC6+pgsBLS3VNKo17H1tvnEPJDhjT2dR381eVqYwLUFlSGmHM
	yWstBcc+qq8YNbvmvQ9hzvdZrOiT5B5aS0zmpVs9924ifw1YbStn0M7WvYa95PvjH2+x9ANVVAJxr
	JGloWYid2qBDrnsbmX61pPB5WW+NMrh9R0mSpWNuBecO0K8aHujwLCQrbffO70ZFYOIJrdGq5OvjH
	f6/p3hBcQQrwVvjY3YiydwCwjF3nEHeiMbo2dr03wwMf9APAeadDNzmNdy9axcQKNUWzGBPPLpvD5
	nmAxhczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkGC-00A7oY-Ce; Tue, 04 Oct 2022 15:55:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofkG7-00A7mE-6S
	for barebox@lists.infradead.org; Tue, 04 Oct 2022 15:55:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG4-0005gZ-O0; Tue, 04 Oct 2022 17:55:00 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG5-004ald-7I; Tue, 04 Oct 2022 17:54:59 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ofkG2-00EW8A-A6; Tue, 04 Oct 2022 17:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  4 Oct 2022 17:54:01 +0200
Message-Id: <20221004155405.3458479-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
References: <20221004155405.3458479-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_085503_325076_0D11A831 
X-CRM114-Status: GOOD (  11.54  )
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
Subject: [PATCH 3/9] tlsf: ensure malloc pool is aligned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

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
index 8dbb41077cad..f8892dafbb7f 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -770,11 +770,11 @@ int tlsf_check_pool(pool_t pool)
 
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
2.30.2



