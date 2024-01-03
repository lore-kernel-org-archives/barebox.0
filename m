Delivery-date: Wed, 03 Jan 2024 19:35:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65m-002O4g-2x
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:35:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL65g-0006zn-2H
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:35:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RcdRQDakTwggB+ibwzz/AMjROwCMEW94mzdGw1NdIfA=; b=ctlOHjy73LmDDrYcnJ8u1utcF6
	li4ApDJyHWBNpiTUJV1j4x59WAXmVoe0eV/XJdxpGrnxr4QU8hitIQcOSK6aVp9B2A4SyFNaTlUog
	w5RLx9po9GV8RDYpwFIYmgIJKnPKXihVqJ9QY1X+x06Q7K6z5IIQcwwChDBsQpfMJxaxiXkxn8Gtt
	6jARK4Ps4c36XAZlKgFe4XctzkpN6y8cbkQ8pCefLJ6BDRwJYe7uaKU1BNOo8GE77B706HCZ6j7Pw
	dbO9lKbjR7Xfg6pxSpzw70a4uQYdjE5G9kzRR2Z/T86bzpWc+lwpQPiEsIPdpL8f0irY8R8xoCys3
	vB9MbdGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL645-00BkhV-2P;
	Wed, 03 Jan 2024 18:34:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61J-00BhNO-3D
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RcdRQDakTwggB+ibwzz/AMjROwCMEW94mzdGw1NdIfA=; b=UAQBX4ntaiI/Ir0+wC4y6hnfCC
	f/lD5yHTi3jEpMMn3CQpno11fPhsydnIMwP86FlJoAKi4STSdaZe7Uus0iIPQln/YVtjnu3huVDid
	Xb/+QfhDQXPHZ2umVupiT6Wz+Txds86axpq6L9syP/K8mSa1MFxH+vcu3CTIWQc+uo3S6dksQPfI8
	m4xvMzfpPsvVkGAscza+p3cGp1wOnF9yMe8nWCQtRHP1kJx4Z3+0Yk8egFB9HDZ7An8n7kgpSjY0Y
	nVKHBxWEXNXu7noTw9Xa2Yrr30jCsZt9q/d2jlT+NzmA7WuDU7Nd9uPjCQ3xvzUXfCLO09ivNawR5
	9QSQsJgw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61C-005eC8-14
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001ez-Gz; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AxN-2B; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-1g;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:39 +0100
Message-Id: <20240103181312.409668-80-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183106_602018_C5509875 
X-CRM114-Status: GOOD (  10.13  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 079/112] efi: stdio: fix efi_register_keystroke_notify prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The keydata passed to efi_register_keystroke_notify is passed by
reference, not by value, according to spec.

This introduced no functional change as we don't yet use the prototype.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi/efi-stdio.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/efi/efi-stdio.h b/include/efi/efi-stdio.h
index 0b3a184a78a8..55ceb47d1b79 100644
--- a/include/efi/efi-stdio.h
+++ b/include/efi/efi-stdio.h
@@ -42,7 +42,7 @@ typedef efi_status_t (EFIAPI *efi_key_notify_function)(
 
 typedef efi_status_t (EFIAPI *efi_register_keystroke_notify)(
 	struct efi_simple_text_input_ex_protocol *this,
-	struct efi_key_data keydata,
+	struct efi_key_data *keydata,
 	efi_key_notify_function key_notification_function,
 	void **notify_handle
 );
-- 
2.39.2



