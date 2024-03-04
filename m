Delivery-date: Mon, 04 Mar 2024 20:04:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbe-008d4I-2T
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbd-0007lT-IN
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RcdRQDakTwggB+ibwzz/AMjROwCMEW94mzdGw1NdIfA=; b=xdfabN7b230iXg09ZZkhFSMr6x
	9LDMWcpvobZD06oHCknxxpIDXZwGKXl6L/yBkMPqmCrgAsPmeXUUnuVJPijEDLn39ceoAU+vbEdii
	7hf8xUZ5BAe04kEFmnPAd52NbXi40FrLfnp8YESj7xCLD32iRpUHbYI+Z/Tvweuv9ivzb6Hz01fpN
	ibTpsz8E54Qn04mZjQRhRwzJPbDhC51AMSm1s9I3rS/ht6OM6VVfdLJAWAthaxaJK10/pFM6KrDnw
	kn4h/2pM9XfdrsBfxd4vQZNhscBrH89IS50rKgLzEY1lqtiPq132bPhtiWA1BGL8b+LIzZz7ixW4R
	v/Qk/o+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDb0-0000000AItt-3aWX;
	Mon, 04 Mar 2024 19:03:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaM-0000000AIOr-2Jqk
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RcdRQDakTwggB+ibwzz/AMjROwCMEW94mzdGw1NdIfA=; b=P+ysnD5FTA8Pgqy+8q894z/Dub
	ZGGp/kXaKa7Len+TPuWNCk12waMvUIVJd2C+XKCBynCy48owQ40hSD9H9Gl4fVqOCqxV1W7oKabsY
	7VYbX2hP02BCqa2hoR9582+q7ydbiLlYxtNwL/GATX14aieSNbK9X7rMCbG3bx1fjf4ZqUEd4ZT5Q
	H86TP7a2p6fO6uERLWrotD8UkT4BVAuSgKPqFU8OhVUPvV6xcxfdYzWLUiR2pAu3P+PtfTucWPZc5
	Y2du/nZietoK7b7oswMzZ+zwsTOcBuuRvK0Zmq9qq7utrvCMucNCvmmFrnNdNjyfSWHIkYG+f6S0h
	weN4OJEw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vm-3DoJ
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00062S-J0; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PHi-3G; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-1y;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:04 +0100
Message-Id: <20240304190038.3486881-80-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190244_022810_B56DDA0F 
X-CRM114-Status: GOOD (  10.65  )
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
Subject: [PATCH v2 079/113] efi: stdio: fix efi_register_keystroke_notify prototype
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



