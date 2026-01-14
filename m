Delivery-date: Wed, 14 Jan 2026 13:03:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzaj-001Dov-0z
	for lore@lore.pengutronix.de;
	Wed, 14 Jan 2026 13:03:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfzah-0008RY-0p
	for lore@pengutronix.de; Wed, 14 Jan 2026 13:03:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4HmGzPlrf6DA7zFtiK8KkdmL/JputZwnBpTcyVTIjXs=; b=in8vdF2ycbx0K0ryxRa4wKu2Vd
	CWcmRVB85eQ2D4WXwB7JIvUu5ynFbwFijoN+M/mAxJncF9w7PxO5AoLPYFEvE9FQxJ3aeUh6xDhyd
	T450ZenjI4LkBv4KAcyB5Ko/C9HVjSGZAow5in5VCrQNsEB+Uy+3Gqra3YpRjTIwd5tOd4lvztBJr
	e1ZF2WCvImGy3WiZgOkUvNJaNN5/19LckAwezG25fGZxY+ZfPWIXky8qDtAubwus67oSljmeHM/J0
	hmpGodJ7mcs7Rr1+HIzfDz3Ce/ykG08R1hnSYXXOBA3c9FEj9dnhWTAcHwlNVk2VHo/8YCzTf1ebU
	5k7IJLDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfza3-000000094Vr-2Q3A;
	Wed, 14 Jan 2026 12:02:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzZx-000000094TN-1NAN
	for barebox@lists.infradead.org;
	Wed, 14 Jan 2026 12:02:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00084e-3l; Wed, 14 Jan 2026 13:02:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-000a7X-1p;
	Wed, 14 Jan 2026 13:02:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vfzZv-00000003xZ4-22Py;
	Wed, 14 Jan 2026 13:02:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <m.felsch@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Jan 2026 13:00:59 +0100
Message-ID: <20260114120221.941836-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260114120221.941836-1-a.fatoum@pengutronix.de>
References: <20260114120221.941836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_040225_365972_012163D4 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 5/5] pbl: string: add strncmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

For use by PBL code, import the barebox proper definition of strncmp
into pbl/string.c.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 - > v2:
  - split off preparatory patch from
    https://lore.barebox.org/barebox/20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de/T/#t
  - add a commit message body
---
 pbl/string.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/pbl/string.c b/pbl/string.c
index 528f62ef2055..89663fef3d6a 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -102,6 +102,21 @@ int strcmp(const char *cs, const char *ct)
 	return res;
 }
 
+int strncmp(const char *cs, const char *ct, size_t count)
+{
+	register signed char __res = 0;
+
+	BUG_ON(!cs || !ct);
+
+	while (count) {
+		if ((__res = *cs - *ct++) != 0 || !*cs++)
+			break;
+		count--;
+	}
+
+	return __res;
+}
+
 int strcasecmp(const char *s1, const char *s2)
 {
 	int c1, c2;
-- 
2.47.3



