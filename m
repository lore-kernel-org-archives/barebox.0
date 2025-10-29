Delivery-date: Wed, 29 Oct 2025 14:17:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE62w-00D3Zy-0B
	for lore@lore.pengutronix.de;
	Wed, 29 Oct 2025 14:17:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vE62v-0001sG-Gm
	for lore@pengutronix.de; Wed, 29 Oct 2025 14:17:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hQHvnyjZW9Ic2k1fiJGCULxJ9jYkDmfU0SxuywJvDgQ=; b=PafBdMNsklSu6E
	rrADH0El4MHJRrKI+vS27hCUUIeyKw762R/WxAJz3rlQDJv0ysK/+etlsXL33c6jWPufXSrBjoFZx
	MJjHTX7duKr/1N1uPjpEkRN9ebxRBGwchWx9//jiRWt/sEqmqHVZbPlSKlutssoXXhYH+OI/FHSGD
	x+2oJCFHO5kSXZ+XoH8w+CNt65x0yOfH22kk1mX2bM5RilsfTLW6Uj8/VCHCP375gpZmHpBMcAFJu
	7FA8rkNPJvPwF9kvR58UJvRBbCBEeytEVdcmCYOG1QuG3Y0vZux+PQZATd7wqoLi/+49c6AK3JWG7
	tpy7opU/EJsZkP01R67w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE62L-00000001KCI-0MYa;
	Wed, 29 Oct 2025 13:16:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE62H-00000001KAa-2gyh
	for barebox@lists.infradead.org;
	Wed, 29 Oct 2025 13:16:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vE62F-0001jz-6P; Wed, 29 Oct 2025 14:16:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vE62F-006308-01;
	Wed, 29 Oct 2025 14:16:19 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vE62F-00000006k6c-1Q3k;
	Wed, 29 Oct 2025 14:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 29 Oct 2025 14:16:17 +0100
Message-ID: <20251029131617.1607191-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_061621_680800_8A719C50 
X-CRM114-Status: GOOD (  15.77  )
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
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: peb: mtd_peb_read(): move error message to caller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the error message about a failure to read a PEB to the caller.
In some cases like for example i.MX6 with NAND boot it can happen
that mtd_peb_read() is called on the NAND blocks containing the FCB.
These are not protected with regular ECC, so are not readable. The error
message is expected and harmless. UBI needs this error message though,
so move it there. Other callers have their own error message already.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c    | 2 +-
 drivers/mtd/ubi/io.c | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 840fc1799a..10ccf188c7 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -239,7 +239,7 @@ int mtd_peb_read(struct mtd_info *mtd, void *buf, int pnum, int offset,
 		if (mtd_is_eccerr(err) && retries++ < MTD_IO_RETRIES)
 			goto retry;
 
-		dev_err(&mtd->dev, "error %d%s while reading %d bytes from PEB %d:%d\n",
+		dev_dbg(&mtd->dev, "error %d%s while reading %d bytes from PEB %d:%d\n",
 			err, errstr, len, pnum, offset);
 		return err;
 	}
diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 88df185789..340a601426 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -115,6 +115,14 @@ int ubi_io_read(const struct ubi_device *ubi, void *buf, int pnum, int offset,
 	ret = mtd_peb_read(ubi->mtd, buf, pnum, offset, len);
 	if (mtd_is_bitflip(ret))
 		return UBI_IO_BITFLIPS;
+
+	if (ret) {
+		const char *errstr = mtd_is_eccerr(ret) ? " (ECC error)" : "";
+
+		ubi_err(ubi, "error %d%s while reading %d bytes from PEB %d:%d\n",
+			ret, errstr, len, pnum, offset);
+	}
+
 	return ret;
 }
 
-- 
2.47.3



