Delivery-date: Thu, 20 May 2021 17:50:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljkws-0004gl-TB
	for lore@lore.pengutronix.de; Thu, 20 May 2021 17:50:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljkws-0000xN-7M
	for lore@pengutronix.de; Thu, 20 May 2021 17:50:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+eAmHwnBGEVfc+rc5r8d5wXcFXE9sqeM4q2U9RjEpj4=; b=qHvIUHxD1dSzvHBzYhU4wmgNax
	VR9uJYBy02NMkmdynuwL29kJY2LPEUrPCRjyMagnta8GXHliNZER9n2B31RJTLaNip+qmLjqSRX9I
	f4aqAHKDm/rB243X4Wj0liF7r3uNmxgis86Ny4krhePKamh20QNKnOr8tFsA2Kq35i1TLPgF+Cb+y
	SJsR5TxkVhBsy4p5C3BM3/cP64HTI3loyw7hSbgVt1tyNuZ1oqcgQUmVeM82ALq8Uf++dSEdiwXpi
	WaNm9MpVJNgT7tAUgWUzi7aZjh511WWrxDsf2PkdDmjgRuBexR3TdKI0PB0jQyJwu8YKNnAoYrW4R
	/0lyQG5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljkvi-001mKU-D2; Thu, 20 May 2021 15:49:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljkvd-001mJV-5D
 for barebox@desiato.infradead.org; Thu, 20 May 2021 15:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=nxE4IBEnFNtDMFz05UgyqybJdDrz8N/fYGsZ1ZxOIa8=; b=tcYRt5IFOdWBaJTQ0sUaWf/vLt
 Huhhs0kmuOHFcRjuNaUztmtqAPFMdTMPujClxmzedNOIdYa0ORphOpRn5fHc/8aZxWJK05BlLspUd
 fDvSYYFjAdz87ssVyF+4ktIOwigLejCSHzeLJuZO08rKCSZDkebHf5LQm/apsCwo+vUZbwe/E6AhA
 fUIyJTjsE1FRrn6ut5O6SXCCWYPEfXfeXF/RwgQvW3p0FF9LDiB2Ofj6hsQYtR0DwiryCMAx33RHk
 8S60mhb8iZqLs6TacZ+W//WDeQdX5lGwNy1apMl5lQ+UPqlTSiNKXLvarNc1dhiC6/w0stnqtOpIV
 w/3v+Syw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljkva-00GU3m-JK
 for barebox@lists.infradead.org; Thu, 20 May 2021 15:49:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1ljkvV-0000kS-LK; Thu, 20 May 2021 17:49:33 +0200
Received: from mol by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mol@pengutronix.de>)
 id 1ljkvV-0004n1-D4; Thu, 20 May 2021 17:49:33 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 20 May 2021 17:49:29 +0200
Message-Id: <20210520154929.25131-1-m.olbrich@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_084938_650566_33545E23 
X-CRM114-Status: GOOD (  11.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: spi-nor: Add support for gd25q16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The entry is imported from Linux v5.12.

It can befound on new versions of the Boundary Devices i.MX6 Quad
Nitrogen6x boards.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 drivers/mtd/spi-nor/spi-nor.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 383916e3f4b0..3ced84049d58 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -666,6 +666,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
 
 	/* GigaDevice */
+	{ "gd25q16", INFO(0xc84015, 0, 64 * 1024,  32, SECT_4K) },
 	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64, SECT_4K) },
 	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128, SECT_4K) },
 	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256, SECT_4K) },
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

