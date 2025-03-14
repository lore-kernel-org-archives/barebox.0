Delivery-date: Fri, 14 Mar 2025 12:04:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q5-00DyQ5-0S
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 12:04:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt2q4-000357-0a
	for lore@pengutronix.de; Fri, 14 Mar 2025 12:04:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/niVtfkEtiUQMDGyjfW487dsElBF7knoLvmpS2CKFwA=; b=YPsC2QWidVzALjq16Jh8ZS4P7z
	6UtL9vGCuMaVrh7qDzmtAdzdnpGyNL3PCO/MfJ2LRtNQYCgcC0rr/NIIypWUvsKcig8ZdkZPnBfis
	moJvR+22QXfXGEIAp5lSXYT07Swv3Kje7k0etQRIOSSjSOOWpjZ8JvwvLE8yAifSmzho98hE4yjQC
	EkElkQ5mYV52US6AE+BQzNMnXVlk/ljP8+qlgG1xz2j7L1OdS7/j0b4UXvmkh/jorGS2BD25vevAA
	MocaHyDEtnsCs4JG1va4S3tREV1dC75Rhr0lr2SwJwSxec+ZUYFQDv0qyYqTdJ734qDxhXrtoDarA
	ldJTAGuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2pf-0000000DwDF-3O3Z;
	Fri, 14 Mar 2025 11:04:03 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt2XU-0000000DtQY-2jJv
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 10:45:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741949114;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/niVtfkEtiUQMDGyjfW487dsElBF7knoLvmpS2CKFwA=;
	b=lleHiiMG/9caqKqUM/Y5HB3rdLC3UCbkBzeWPfUS6dcwpWbcBHhPtC17kmLp7S/wpg/lPy
	G3hlxfBy1grBYI2MxK/Jyvshxfgn39TVnjQrID3ncMnGzibhBP1TTAdekoPxl7h01z5Alg
	vhYHTlaSysDXP0kSCxRW2ECyQuPFkgZ7x7t1NdxAbmHKaJvLdVG7dx9Qwubf955sjDKnc1
	OSmSADziwThCIgZxAUmT6twfw3H9F5FLhgFqf0Q5J9r3Wil0Q3NoFD7W1Yj3MCZvPn5T2T
	o9YXaJhrXv583xuEHEMhsunAo1Bcw+vWJZ4W+IBzcWtY3ABynmDeJCjZ+i+vZw==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 26fd58e2 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 11:45:14 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 11:45:02 +0100
Message-ID: <20250314104502.14851-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250314104502.14851-1-jmaselbas@zdiv.net>
References: <20250314104502.14851-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_034516_983523_7564ED7A 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] eeprom: at25: add explicit fallthrough
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/eeprom/at25.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 43e72677c9..f58e554616 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -87,8 +87,10 @@ static ssize_t at25_ee_read(struct cdev *cdev,
 	switch (at25->addrlen) {
 	default:	/* case 3 */
 		*cp++ = offset >> 16;
+		fallthrough;
 	case 2:
 		*cp++ = offset >> 8;
+		fallthrough;
 	case 1:
 	case 0:	/* can't happen: for better codegen */
 		*cp++ = offset >> 0;
@@ -168,8 +170,10 @@ static ssize_t at25_ee_write(struct cdev *cdev,
 		switch (at25->addrlen) {
 		default:	/* case 3 */
 			*cp++ = offset >> 16;
+			fallthrough;
 		case 2:
 			*cp++ = offset >> 8;
+			fallthrough;
 		case 1:
 		case 0:	/* can't happen: for better codegen */
 			*cp++ = offset >> 0;
-- 
2.48.1



