Delivery-date: Wed, 03 Jan 2024 19:33:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63k-002Nlm-2X
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:33:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL63e-0004bN-5m
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:33:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ybr0gsvS3iuTgEJ7SRHwfcBlVFpPuMC7ZjxLCzxuJmY=; b=3Dp4Y340oZl37n0PpTTq7iOMWG
	U4cG1KkMf0kJqUbAcqyBrwmPTmJnpzurF/g43wfJVO1Z3tySZPE/Of43kDxgtMa/HkJVCtQW1moqB
	otCeCB6CIkjxpI75fPO0U3ruQFJJ0TnmRoZ1ZwL5LPjy4WCOetGAJjuQROpH701uyksbx1/NGuwgO
	Nxri2udOjMaT7ubXL3l0ddJBHzMVYVY/W7AHKZS6SkfZLIGfcvAePB3Pz+bVawpJmWETLT9cckOWl
	J0C6gAoZ3KBlr4AZQAdoyGkfwAPEza7JyfrU5B7eZJaI1oGbmoxy2RGKyUEYtLGSotoeIyUqIiUl4
	gOwUePEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL625-00BiKR-0z;
	Wed, 03 Jan 2024 18:32:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61F-00BhJH-0d
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ybr0gsvS3iuTgEJ7SRHwfcBlVFpPuMC7ZjxLCzxuJmY=; b=AjC9TcmEOPWJFB0W/OuBJKFAHq
	5OKKhDVv8lwsQEA9qqMN5yu4biOiFG5gRXh7X4hDGfQTBjAdlq96TrChPzKDgobOQg7JSdkpPdhfN
	3KbxllzM6Jmi+4XSeWqTUbpBgKi/bcl7BGz4O3AlQW0w1Lu++GhjqzbwALW+sKMoQTt2AMGZuMvxv
	qBCVas8ZONf6TaLpCGW1bHcqp95CItKYgbQb1fy82hWk91oDlr8V61s+h04n4UG8LSaWlMTebdeev
	rjXJk92bS9/orEU4zr8t0h5N8rYCDJK2C3/qxJyKQTcSxyWpV4TZndNEcZ82Y6ZCkjQsMI4kTcuxs
	fHajiruw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL613-005eBx-2s
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-0001em-Fw; Wed, 03 Jan 2024 19:30:57 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL613-000AxJ-0P; Wed, 03 Jan 2024 19:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0U;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:31 +0100
Message-Id: <20240103181312.409668-72-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183058_003637_BFEBE771 
X-CRM114-Status: UNSURE (   7.90  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 071/112] efi: add EFI_WARN constants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These constants can be returned by some of the EFI loader protocols
implemented later on.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/efi.h b/include/efi.h
index 1749001adb48..7e8b7f0a49b8 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -52,6 +52,14 @@
 #define EFI_INVALID_LANGUAGE            (32 | EFI_ERROR_MASK)
 #define EFI_COMPROMISED_DATA            (33 | EFI_ERROR_MASK)
 
+#define EFI_WARN_UNKNOWN_GLYPH		1
+#define EFI_WARN_DELETE_FAILURE		2
+#define EFI_WARN_WRITE_FAILURE		3
+#define EFI_WARN_BUFFER_TOO_SMALL	4
+#define EFI_WARN_STALE_DATA		5
+#define EFI_WARN_FILE_SYSTEM		6
+#define EFI_WARN_RESET_REQUIRED		7
+
 #define EFI_ERROR(a)	(((signed long) a) < 0)
 
 /*
-- 
2.39.2



