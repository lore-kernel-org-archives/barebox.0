Delivery-date: Tue, 11 Jun 2024 08:58:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSF-0046yC-1Z
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSE-0005UM-SJ
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rzv1xXX6aoK2np0B3gbSUfVscfyJzHfSEYzIo4CKPFE=; b=eG6LsRYW8s+5Z3rYHjfKgJ40gL
	hDrmrzv9MHPS6e2Ewa3baC4khGdzWS9dHNwJNj+zCN24YrTvNngoM+FYJrqc2II/2mtAaKejyRiT1
	C/Jtf7mnlvHGV+M24TlWDBaVJxTGj66RADLXZCWQJ1liET7yTommFf7tFCGZEDxe4TPIImhXVYnET
	9nfo/XkAOZEMAm3if01TEXZoQ9NmG/2YkiLnrGVklluG4SqAWnwSjmSb5jFbkW0q8cHu4TIrMpa8S
	vYzxQrJRP0IEkvzBbEilsUaG0kj3w3a1/mjS7dUZgtTcVUaIHWTXTfaN+CkBY3+O9D3lAAMag/EYI
	YR2ELe5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRg-00000007mFC-25Nk;
	Tue, 11 Jun 2024 06:57:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvRZ-00000007mBn-389m
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-0005K0-TX; Tue, 11 Jun 2024 08:57:19 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-001U8Z-Gp; Tue, 11 Jun 2024 08:57:19 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvRX-00CAKW-1O;
	Tue, 11 Jun 2024 08:57:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:57:17 +0200
Message-Id: <20240611065718.2899625-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
References: <20240611065718.2899625-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235721_905540_0D19097C 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 3/4] efi: payload: gracefully handle NULL parent image device path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

device_path_to_filepath may be called on a device pth that contains no
file path. In that case, the function should return NULL instead of
dereferencing the NULL pointer. Fix this.

Fixes: f1230c7f92cd ("efi: payload: dynamically determine bootloader file name")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 23963aa0cbb7..ecb3e7b64cc1 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -824,6 +824,9 @@ char *device_path_to_filepath(const struct efi_device_path *dev_path)
 		dev_path = next_device_path_node(&fp->header);
 	}
 
+	if (!fp)
+		return NULL;
+
 	path = strdup_wchar_to_char(fp->path_name);
 	if (!path)
 		return NULL;
-- 
2.39.2



