Delivery-date: Tue, 07 Feb 2023 17:22:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjx-00HBXt-C1
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 17:22:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQju-0003dZ-AK
	for lore@pengutronix.de; Tue, 07 Feb 2023 17:22:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sHvqCUO6Y4tv5inDQNUmB3wlmt5ffim51xxUSu7AM8g=; b=yJ7eFvRsvR0dhCRiH1KS/f5djM
	SP5rvsY7qdfnn4scD/Ovd/GJC/R4XnOZcZ0OzPUjINm06VBoFQrhYarSFZReKxyRsJr5a+/QGMiwC
	htqh/ha/gjLLVq28W2Je15aUzru5Tad0nMdr3nsJ0/OPOOlwsgYJ8/xNQaVyCUAxlZN32eCjShD+V
	CWAwcZqW3vfLI8yZwIgAgf6XRHJ4nEENoSVdcAhDxrQhglFXZKRhDwnxjQgP9imzi7hkpvnNaHv5x
	iMwSm7v/BnuANgM7hW4NmtxcHe8vKeCaCCk5GYXhxuLTSF1HFCi8z0mlcEIgU8H3AsFlBBowRwIFw
	JyMVpyQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQia-00CnxM-10; Tue, 07 Feb 2023 16:21:16 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143] helo=fx403.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiP-00CnsS-Jh
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 16:21:10 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 047CD71ACCE
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1675786861;
	bh=gfNMeToQEjixVo8Wd0ho9PkStMs5AUPa8yykmswTsnc=;
	h=From:To:Cc:Subject:Date;
	b=55TuiMt/61UYQ/9I+mmvyebi3ERWMHyxeDC9N09Neqi48cpW4JTThKVwP6/8TKBQ4
	 pBGV/Szhpnk3RyIOYc8QcceussP0LAHFhobiVcbd/cpH+GSW6hmYn7ly9VkyNhVEc3
	 bfLUPX4UUdwiwQbE5L/d1w0W8gYBsNfxsjy3FRZ4=
Received: from fx403 (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id C926F71ABDF
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:00 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <16a6d.63e27a6c.52a.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx403.security-mail.net (Postfix) with ESMTPS id 0270C71A97A
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:00 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id DB84727E0506;
	Tue,  7 Feb 2023 17:20:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id C3B5627E0508;
	Tue,  7 Feb 2023 17:20:59 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu C3B5627E0508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675786859;
	bh=sHvqCUO6Y4tv5inDQNUmB3wlmt5ffim51xxUSu7AM8g=;
	h=From:To:Date:Message-Id;
	b=odC9eoVkRJffKnTuPTtoQnDhufBwloW1lwad0PJ2JIofbWpwGvx79gS+L0RLNr0JS
	 NNWQspR45EpEEyahCGEEGaMiiOgRZNA4R1lKEBLqIkSUMc21D3uHbQeaD+NYbEjKQS
	 edckiv9p5eNgjVHLZ2jjq0i0BXrHZ4EYyJIM5S5I=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id MDYM_ugYTrUN; Tue,  7 Feb 2023 17:20:59 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id B25A527E0506;
	Tue,  7 Feb 2023 17:20:59 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Feb 2023 17:20:51 +0100
Message-Id: <20230207162055.10050-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082105_824986_0F0F0683 
X-CRM114-Status: UNSURE (   8.54  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/5] bbremote: Fix default payload value in BBPacket
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The payload variable is expected to typeof bytes, however the default
value in BBPacket contructor is of type str, a simple way to declare
a byte literal in Python is to prefix the string literal with `b`.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 scripts/remote/messages.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/remote/messages.py b/scripts/remote/messages.py
index 76cccad393..de15e72ed5 100644
--- a/scripts/remote/messages.py
+++ b/scripts/remote/messages.py
@@ -35,12 +35,13 @@ class BBType(object):
 
 
 class BBPacket(object):
-    def __init__(self, p_type=0, p_flags=0, payload="", raw=None):
+    def __init__(self, p_type=0, p_flags=0, payload=b"", raw=None):
         self.p_type = p_type
         self.p_flags = p_flags
         if raw is not None:
             self.unpack(raw)
         else:
+            assert isinstance(payload, bytes)
             self.payload = payload
 
     def __repr__(self):
-- 
2.17.1



