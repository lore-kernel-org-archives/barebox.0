Delivery-date: Mon, 04 Mar 2024 20:05:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcW-008dA7-0t
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcV-0000EL-Ip
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ik4fCWXLnknEx9+LmeWIyjZIK4DKiDhODSqBwtJU9jY=; b=cyvKTZtn3Uq0MIkL+U1auLi3SN
	Iww2betF5MX1RK0q3o2kVpq4oGt6HjdjURbW/jCLjNO7OdjWyB57QzRHC8W4KBkCFFVglDRAz+HDz
	ee7A1apRmaAb3sEyS1KR3kwN+AlUlvEKfkPp2jRWj171CiO+9liWshSK2EiicrrbeXYl6TOswpe2Z
	9JVMpaqTd/loj2e1FA6ivMGn5W0c8roERNm79vCjkqhg3TewWpvf4nBiNJum9XUNJrQ96l6AUYFOe
	/OYtwBtyum7M1gnz8PY+sQ/AicegUdC77LOKxOQDBaoQQXd56CtAZX9Ham6x9mzxXm4+Z6rjBtyLm
	NsOngAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbx-0000000AJZD-0rkL;
	Mon, 04 Mar 2024 19:04:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaO-0000000AIQW-1rkF
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Ik4fCWXLnknEx9+LmeWIyjZIK4DKiDhODSqBwtJU9jY=; b=OpBSBkJwzz3rjNCWAhZbLwfL1g
	k6/5kDZXpYL8MKrfE7/M6Bsz5SRlBA//ADaTgxMFI3p6geWMHI1S9Zxj6gGwpm6RTH5jvY+7tkubg
	81oBGJGOG8dv8oSEZumU3AJ8JRrc89kvVveefOVR/3yszArpJqGJw0u3WYSFygK+g5wQtxUKZNjNa
	Ppc3dEHg07unneecoi2wu5sHhk1orWS3buohQCh2E43sRwRafPXO2WIrdI65sXWIrQskc1K6YVuEI
	CC0Dg0GLT378wSADsWYD+p2t15wIjRwDMXLT/EOn59vrxMUhaXxQYY70u+GvhQBXxLCtR8TsRvOWO
	UlXeOzFA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaG-000000051w4-0JBX
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-00063s-02; Mon, 04 Mar 2024 20:02:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIE-IL; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-1Y;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:01 +0100
Message-Id: <20240304190038.3486881-77-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190244_228645_063AC900 
X-CRM114-Status: GOOD (  10.64  )
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
Subject: [PATCH v2 076/113] efi: improve usability of EFI_PAGE_* macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI code may want to mask addresses to check if they are page aligned.
Add a macro that masks the lower bits and while at it turn the type of
EFI_PAGE_SIZE to be 64 bits, so we avoid issues of truncation during
multiplication with a 32 bit value.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/efi.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/efi.h b/include/efi.h
index a6dbc14ff3d9..a73c96ef3a82 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -117,7 +117,8 @@ enum efi_memory_type {
 #define EFI_MEMORY_DESCRIPTOR_VERSION	1
 
 #define EFI_PAGE_SHIFT		12
-#define EFI_PAGE_SIZE		(1UL << EFI_PAGE_SHIFT)
+#define EFI_PAGE_SIZE		(1ULL << EFI_PAGE_SHIFT)
+#define EFI_PAGE_MASK		(EFI_PAGE_SIZE - 1)
 
 /*
  * Allocation types for calls to boottime->allocate_pages.
-- 
2.39.2



