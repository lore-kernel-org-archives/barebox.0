Delivery-date: Mon, 12 Jun 2023 15:03:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD5-003qeF-GH
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hD1-0000nD-5P
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yhCdF7aJsJMXgqAtD3VXlQd71uAPO5mTNjeBBSpfUsY=; b=dYPfJwQv0u67NrKY9qzIeB45EM
	l5e+l7RaQraw5oFcC+FggQDLwogumRN2v/6ezKIT5DtHG2UMA75SnZS+MPTpHkuurXzM9P0eZnPC+
	SxTzu9t6keJZ24jJ9mgMwaI4uQy+Zehyxo8eEFLPSK6Gx9UZbQN1SwW9tIDgqDjUF5WZTHTWCoExE
	eX0ufeaTAuwpm5kdepVy1E+xMnSEaojyRyz9/uBhwfsRxvt38p1P2wbzVaz/UvHwD3XihKHwliyt+
	lH92jOyOPBvLy30nEnDmwQwkU+kL4z6ZUHWf8NxVg7sSnkJTSZwtGa+P1FogV7c82vYyP5ag5T0Mt
	zVCjN1DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCM-0047Rv-2s;
	Mon, 12 Jun 2023 13:03:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC8-0047EL-31
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008My-Mm; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-006tW9-1A; Mon, 12 Jun 2023 15:02:51 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aKD-8c; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:39 +0200
Message-Id: <20230612130239.1087599-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060252_973774_E507C130 
X-CRM114-Status: UNSURE (   7.73  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 18/19] firmware: mark firmware sections as having non-executable stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

allyesconfig on sandbox detects that firmware misses the annotation,
which we already have for environment, DTs and other generated assembly
files. Fix it there too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/firmware/Makefile b/firmware/Makefile
index 75812cb6bf24..efdd5c0da541 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -45,6 +45,7 @@ ASM_ALIGN = $(if $(CONFIG_64BIT),3,2)
 
 filechk_fwbin = { \
 	echo "/* Generated by $(src)/Makefile */"		;\
+	echo ".section .note.GNU-stack,\"\",%progbits"		;\
 	echo "    .section $2,\"$3\""				;\
 	echo "    .p2align $(ASM_ALIGN)"			;\
 	echo ".global _fw_$(FWSTR)_start"			;\
-- 
2.39.2



