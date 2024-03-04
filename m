Delivery-date: Mon, 04 Mar 2024 20:11:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiM-008dpD-0y
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:11:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDiL-0005xz-LX
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:11:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ybr0gsvS3iuTgEJ7SRHwfcBlVFpPuMC7ZjxLCzxuJmY=; b=omiQ5n+uHB0bgFe3SC4hmbGyiY
	ueOGWUjpaqU+yaJHWco1z2zMeizNVBChF111E5SmN8A+DRGYR22M3oJSe+ihNPidCvrrobjP5XO5K
	26y9LZr+ixpfLdxkfl0zOjtUszfQbyLHje5QvX271c5PfeDYPe/TcWAnIDm2uQ2jU3ZKj63lut7gO
	/b9ZDZNW3OpvesI7ElZifGe8DEVUUwmAijdFxsV9EAJUItA9QQDpcUWuNKT5xJIFx9l5v92E+nOoK
	V7evSx1sj4d63ZBgMJG2ADRmq4QPHCtNMqhnMlmPxIA2HJMonoEsCHxZ4jawsbK8KKGacAJ4fFwbq
	1LWT3kDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDhl-0000000ANYG-165a;
	Mon, 04 Mar 2024 19:10:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDae-0000000AIef-309g
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ybr0gsvS3iuTgEJ7SRHwfcBlVFpPuMC7ZjxLCzxuJmY=; b=uSY5N6zTWJwDz04uGoSGBIug9N
	Ho/sRVE0t+fcG73JFEn+MHhNW9JRvJdtP5cbXejzA6r6YDYcDx2XwYvmt/i0otEO4+k5XG2rkwyw0
	6Xfa7J/Xy0C4nM0rzdSJbuTyZV98MIQasxgBbbPf6WK8Myh9S4tEB8OWEMuA2IPK1Q52RtgdnCpxJ
	SiNZgdS7ayEYbLDd7J5GQiVLG/dyeQmFwhWqdn3MIypSg3O0ZQDUuZW/CLd5Qs0z3tCzMzRSuH9aN
	9RuC5UMBgWHrbGxuTWfW8KMvcvjQD/Yz2/Rml/CI9gJLXY0AjZKu0Fghou6Cg7rJ5PwgnTpmxpskV
	XaWMI63g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaZ-00000002BSi-0LFB
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-000656-DE; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIY-TV; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-0q;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:56 +0100
Message-Id: <20240304190038.3486881-72-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190303_214005_1A0FDE18 
X-CRM114-Status: UNSURE (   7.47  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 071/113] efi: add EFI_WARN constants
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



