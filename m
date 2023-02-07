Delivery-date: Tue, 07 Feb 2023 17:22:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjw-00HBXY-CA
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 17:22:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPQjt-0003dK-Lz
	for lore@pengutronix.de; Tue, 07 Feb 2023 17:22:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2850hHpwfF/bThomBbXo7DHNN3Zf/E7LNmaKbSsO1vo=; b=NiXLJ9ZAuxrFkko6woZ8PJ5hky
	wm1txKTfDxbzTAFrIdWDotrEOwHe3V8pY0JQf8feL7oHGHYlsgjEHUOKP/WAULUwQxiIS5uQcat0M
	Ud0FCaUvwFbKSzKqDA1Xteguk/NEAJZZchsXL3hsuTFKNZzCoquUaWpHJrDndDcRO9yxHLPjPqPm8
	itKWrqSYzZsHH3qTkAmz7BoWyLgs3HI2y4b9wMNF4DeVT6oIzOuOtnYoQfnMYBgnDiD3LRiKvbevU
	UtuEUo9eH5gxa1t5RZhKSx3rXkSWxFnYI+PIRydAIPrmg0z/RGoUgZsbdBus1vwgwLbYATHmeml+J
	rnDio3Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQic-00Cnxv-Bu; Tue, 07 Feb 2023 16:21:18 +0000
Received: from smtpout140.security-mail.net ([85.31.212.143] helo=fx403.security-mail.net)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPQiQ-00Cnt4-2V
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 16:21:11 +0000
Received: from localhost (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 4A8DB71ADE0
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
	s=sec-sig-email; t=1675786863;
	bh=1F4qiSn959hRTOLQGwTeDK8tbLoU0TgAQ0Z2HoaGdN0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=mCCIZ3/nwMZt8GqrA2z7MK5WC7eaBm+VLahffsqww6J7yEFtvZjvANG9VkUeT7qvZ
	 rizlkfPblFuQeuJWQVUfc+fIijckJ1+MBflaUlVe/otCwDsduGBdbq9H/4s8bXTbe6
	 a5ll6WHrEfxyXMAt4JlMk8raSwKnI2wVONjfmmb8=
Received: from fx403 (localhost [127.0.0.1])
	by fx403.security-mail.net (Postfix) with ESMTP id 2441671B02C
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:03 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <16a72.63e27a6e.9b39e.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
	by fx403.security-mail.net (Postfix) with ESMTPS id 9CC2471B13A
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTPS id 832EC27E0509;
	Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by zimbra2.kalray.eu (Postfix) with ESMTP id 6C5FA27E0508;
	Tue,  7 Feb 2023 17:21:02 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6C5FA27E0508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
	s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1675786862;
	bh=2850hHpwfF/bThomBbXo7DHNN3Zf/E7LNmaKbSsO1vo=;
	h=From:To:Date:Message-Id;
	b=WHgYkUmhYHZxRaigImNlwiNEAKNDygJQYAz6hJ4c2BAQqqoUAXYmo5Xe2MYpch8si
	 f7QeNpwH2qbwD2izQZTLvoWdd0TfBDyE51w9jKNYNpXHDmn87YgpRVOok250eazkwu
	 vf+WV4+15p/c5donHU0XwFtI3A3bba5+gMYf19Zc=
Received: from zimbra2.kalray.eu ([127.0.0.1])
	by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id iWy8SCvIsurL; Tue,  7 Feb 2023 17:21:02 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
	by zimbra2.kalray.eu (Postfix) with ESMTPSA id 5273C27E0506;
	Tue,  7 Feb 2023 17:21:02 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue,  7 Feb 2023 17:20:54 +0100
Message-Id: <20230207162055.10050-4-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230207162055.10050-1-jmaselbas@kalray.eu>
References: <20230207162055.10050-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_082106_313887_6BC60148 
X-CRM114-Status: UNSURE (   9.84  )
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
Subject: [PATCH v3 4/5] ratp: Increase the establish timeout to 1sec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Current timeout was only 100ms which is also the current initial value
for the RTO (Retransmission Time Out), this is too short as it doesn't
give barebox a chance to resent a packet during the handshake.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 common/ratp/ratp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 424c9406d2..fddb286e01 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -486,7 +486,7 @@ int barebox_ratp(struct console_device *cdev)
 	ctx->cdev = cdev;
 	ctx->have_synch = 1;
 
-	ret = ratp_establish(&ctx->ratp, false, 100);
+	ret = ratp_establish(&ctx->ratp, false, 1000);
 	if (ret < 0)
 		goto out;
 
-- 
2.17.1



