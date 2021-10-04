Delivery-date: Mon, 04 Oct 2021 09:40:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXIan-0008KF-VR
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 09:40:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXIan-0007zA-3j
	for lore@pengutronix.de; Mon, 04 Oct 2021 09:40:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xMFhsy7OpZMnLsGRB+h6L5+yjD8itDxiBe4V8ITefBw=; b=q94MYRwS1+82vV
	jmfi0FrJpIhz0GPxE34f8k8rOkGr136V9GO2Q4LAIHc55u9InA8cnZwmJtaBxzRP3F5pczS9GvoMF
	hiK+sqfJeM5QW1TH7K1G3mLKIG/2GaaEde+C4NWbs5qXqkaU7xyVKwKwgnX12S0Y+fA5ApitxBuMD
	8lsPnip//Z0OorvhP38xIZpjYRteheq9lTNhDrzaP7rAPAP8MEBGSO2BZOQNbPKN+D2Q4730sYOJH
	M15r5JYoMoH3CI21/k/dFlQ+wP4KUo74kak/UKyYGI5cukl/KlL3qbI/WripFKQCitCq7de40+3c0
	EbrQBIFSGf8ZdmEMRmxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXIYz-005W4P-IC; Mon, 04 Oct 2021 07:39:05 +0000
Received: from smtpout30.security-mail.net ([85.31.212.37]
 helo=fx306.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXIYt-005W3c-WE
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 07:39:01 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id C96B339972F
 for <barebox@lists.infradead.org>; Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1633333129;
 bh=MtVxtWzv81lRT6mCJK73zJclUUlClhtV+q3ZCpHpW3w=;
 h=From:To:Cc:Subject:Date;
 b=J5VfTF7Q2fPuZc5Te/KbRrHjSVkRXRJ2iyqyH5smJxQkaxwHgWlhncF9wggWESXSB
 ANkMB34ksl3yI4sHOJefo4pQgTq1oanWGFP14o2E75JlWA3CIMcpY2sqYXo9eu71mf
 8fTNdgapkMtLHdp5vOA9wIpKfEg8JPKcqItRu7A8=
Received: from fx306 (localhost [127.0.0.1])
 by fx306.security-mail.net (Postfix) with ESMTP id 93331399745
 for <barebox@lists.infradead.org>; Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
X-Virus-Scanned: E-securemail
Secumail-id: <86ec.615aaf89.3f6eb.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx306.security-mail.net (Postfix) with ESMTPS id 40B17399730
 for <barebox@lists.infradead.org>; Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 2860B27E031D;
 Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 1255427E031E;
 Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 1255427E031E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1633333129;
 bh=ngUzZ8gJ7cgZae7Gkod0yyt/YY8IgRcAqZY9IST/qwA=;
 h=From:To:Date:Message-Id;
 b=mUvPW1H60gBZnuv6oad2fA+nWQGQBvTXSULJ+4OvGtuHAcgcTjfh3RmgznUc58yXO
 cmJdrWRgpL7Kua6eyU57FI7+BXIFd2dEgZuSdNzYZm4Dp72h+4u2sXOj2KyNdtopkH
 0GW7V+8LfyX8etjDGtPySlW8sQjYPykwkaXzqM0M=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id eVc1Y3UTqHAE; Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 0391627E031D;
 Mon,  4 Oct 2021 09:38:49 +0200 (CEST)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon,  4 Oct 2021 09:38:42 +0200
Message-Id: <20211004073842.14809-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_003900_431003_0BD39567 
X-CRM114-Status: UNSURE (   8.77  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] debug_ll: ns16550: Fix interrupt disable on init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The debug_ll_write_reg function takes first the register
and secondly the value to write, which in this call were
inverted. Fix the argument order.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 include/debug_ll/ns16550.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/debug_ll/ns16550.h b/include/debug_ll/ns16550.h
index 7e4dbeb453..373c917d86 100644
--- a/include/debug_ll/ns16550.h
+++ b/include/debug_ll/ns16550.h
@@ -43,7 +43,7 @@ static inline uint16_t debug_ll_ns16550_calc_divisor(unsigned long clk)
 static inline void debug_ll_ns16550_init(uint16_t divisor)
 {
 	debug_ll_write_reg(NS16550_LCR, 0x0); /* select ier reg */
-        debug_ll_write_reg(0x00, NS16550_IER);
+	debug_ll_write_reg(NS16550_IER, 0x0); /* disable interrupts */
 
 	debug_ll_write_reg(NS16550_LCR, NS16550_LCR_BKSE);
 	debug_ll_write_reg(NS16550_DLL, divisor & 0xff);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

