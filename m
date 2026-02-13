Delivery-date: Fri, 13 Feb 2026 20:13:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybh-001Lb9-1N
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 20:13:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqybh-0007Sv-Pa
	for lore@pengutronix.de; Fri, 13 Feb 2026 20:13:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CySx69xWzIIVx9pR9X03knSzFSYSA/ODenmFEKd6RM=; b=c3WvZHEUWcFf43
	Bx7+RnUfTrfq1//MVT8FKvla/EPpuHxPgdexOTNERgl0MX+LC/vSslYheMOAjYXnu10fZ7Non054e
	mPBMaO1w1sOTNFenan/pGgvPIsenq8+Pv7msNNBD9lh+IMoeUdY/OrQ4PB5NiB0FEwV3DpBmmqtKv
	iFzWgWaCJecTB9rNHlfbJqu7rDXJKn+B0KbFWuSNbxtxQ1S8fCZzpXGD+wMrePJlLl13ghbxRNc9G
	1W1UhzFvDrLYWPgS8zv9Wmm97DKiTEvTqbhQTIigXB/Q5U8HBz3mUUiTKIduS1pH1uGyBBTrcN0An
	TCxq0GMzU0TU4NSq2beQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb9-00000003pi8-1bOm;
	Fri, 13 Feb 2026 19:13:03 +0000
Received: from www153.your-server.de ([213.133.104.153])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqyb6-00000003pgA-35kj
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 19:13:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=amelchem.com; s=default2004; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=2CySx69xWzIIVx9pR9X03knSzFSYSA/ODenmFEKd6RM=; b=HNBJaCMxnApf85jRoFByxTlbzS
	T7W2Xzg4bPecdjhBMxBuyqt3vzCJsAbyLgSgfqI8sWGukznD8j8EddmzzPCt3PzsekTHFbOrFPrbZ
	7jDGyZHcpnB70McqO2L9HqhIBIaIS00B4GOhiGHJrf/NE+LfrNz8RdWrL0bX4WBZqlxZJpelOoK2z
	CkvfCCoMV5wc3A+FMzOsGShPZwRKrfRBVizvNE/IAGws+uclOEUZAcIyIwQlNDzkPAyDOSMBRncbP
	E7I6DQOB6488je7iUv96Fedu3qYzgqIpHdSOsAtO7i5/HWTFccesIybvou5yOg390u0z+vmb/hcNj
	wH1QbFUw==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www153.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyax-000HNe-0f;
	Fri, 13 Feb 2026 20:12:51 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rossi@amelchem.com>)
	id 1vqyaw-000J4V-2W;
	Fri, 13 Feb 2026 20:12:51 +0100
From: Giandomenico Rossi <rossi@amelchem.com>
To: barebox@lists.infradead.org
Date: Fri, 13 Feb 2026 20:12:45 +0100
Message-Id: <20260213191247.1671231-3-rossi@amelchem.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260213191247.1671231-1-rossi@amelchem.com>
References: <20260213191247.1671231-1-rossi@amelchem.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: Clear (ClamAV 1.4.3/27911/Fri Feb 13 08:25:28 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_111301_087984_75AFEDFB 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: Giandomenico Rossi <rossi@amelchem.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/4] video: mipi-dbi: add display rotation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a rotation field to struct mipi_dbi_dev to allow panel drivers
to configure the display orientation via the MADCTL register.

The value is expressed in degrees counter-clockwise (0, 90, 180, 270)
and is intended to be parsed from the optional 'rotation' device tree
property by individual panel drivers.

Signed-off-by: Giandomenico Rossi <rossi@amelchem.com>
---
 include/video/mipi_dbi.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/video/mipi_dbi.h b/include/video/mipi_dbi.h
index 42ca8a6332..ee6aca675c 100644
--- a/include/video/mipi_dbi.h
+++ b/include/video/mipi_dbi.h
@@ -121,6 +121,11 @@ struct mipi_dbi_dev {
 	 */
 	void *driver_private;
 
+	/**
+	 * @rotation: initial rotation in degrees Counter Clock Wise
+	 */
+	unsigned int rotation;
+
 	/**
 	 * @damage: Damage rectangle.
 	 */
-- 
2.34.1



