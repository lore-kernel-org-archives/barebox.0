Delivery-date: Tue, 17 Jun 2025 12:11:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRTI0-008Ec4-1v
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 12:11:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRTI0-0007V1-2R
	for lore@pengutronix.de; Tue, 17 Jun 2025 12:11:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZWGh02O606gaSucClCWchrB1TJudWniPUkKmXaIFEOI=; b=04Sa8iglTrOcQyTEVexYlvxEV7
	GiiaaETtBFNYiFP5yjBIqLhijXZvR4SGhNlngjNSOhaVlXLdspb6B5Y1OVyi6dLCoHKQfS9jQFNF2
	b7e03CQHIda7wQfp22zjOH2ivrsFKiR+ije0teaMW+5wDQKr/XRcw4vcnc1I5qQ/R/WGQqMLECHm4
	zzmei7USe7fvKCyxtD+7FJcdSejWOwUq5p72S/Fi212+FOxkHbvgjFzuVBH0tyNbS7Io5rJs9t/zD
	HvOqNH+AWaevUFhPlykRelK0rBG9GiNcU2KNIdiM4QQ3H15M3w5Li9voWliNij8QvTsu79J0Crc1M
	Nguxso3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRTHP-00000006sZ5-1nPR;
	Tue, 17 Jun 2025 10:10:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSxl-00000006pBO-2Q5A
	for barebox@bombadil.infradead.org;
	Tue, 17 Jun 2025 09:50:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ZWGh02O606gaSucClCWchrB1TJudWniPUkKmXaIFEOI=; b=VDJN3cE7tR08jyAM/pTrDFHCBT
	LjP+1Yl5iuMnFr2DnoSZlfLbxWw+6kc43IznqzyM6rewhxU7p9P+AyWFfH1Nbqe/H+FhdX+kJnoXm
	JGvQfzHaqXpPdB3vQnQXsQ9n35FpxncATVKJb0ZoHXqO4MAqdN43VJ+SEr0yjrrF60gAQDGSgOC6J
	XLDlWfTAgWUW4Ow1J7STQGyM7yi/jm4nBtwDvDusom/6bEUQ5OBvAW59OZ9pvTObviB6q8oqefoaW
	4dc5f15B3zzpJ5PXAAdgfzGTbKo18jL/NU2DG2n65pH7uN3Yii4H/jWvmcif8ze3LkPhnJy9vnZyu
	uZEE86zQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSxj-00000003l69-1fyB
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:50:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSxh-0007PE-DG; Tue, 17 Jun 2025 11:50:37 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSxh-003x5e-0h;
	Tue, 17 Jun 2025 11:50:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSxh-00CdQu-0L;
	Tue, 17 Jun 2025 11:50:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:50:36 +0200
Message-Id: <20250617095036.3011509-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_105039_538111_ECF0A3E5 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] imd: Increase expected file size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox images can become quite big and on AM62lx the barebox image
has a size over 2MiB due to multiple firmware files included to it.
Increase the maximum size of the barebox image to be read to 4MiB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/imd.c b/common/imd.c
index 1100e6878a..6af5bac576 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -25,7 +25,7 @@ static inline void read_file_2_free(void *buf)
 static int imd_read_file(const char *filename, size_t *size, void **outbuf,
 			 bool allow_mmap)
 {
-	return read_file_2(filename, size, outbuf, 0x100000);
+	return read_file_2(filename, size, outbuf, 0x400000);
 }
 #endif
 
-- 
2.39.5



