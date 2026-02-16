Delivery-date: Mon, 16 Feb 2026 10:17:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujc-002GuI-0y
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujW-0007RU-Kx
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KvPcr02CFAzHi0JtznSyKNDsKBtMWeRi8nId8a710KY=; b=HeMwbU+v9MnCvQ/5UghQWnnI6I
	r5vcvBHXs8aiN35utZvgHerd3PlV7oqQ/KO2IOKFSojMIZOsMP/jrPm/iCXB+hViUtYo8ZOUediAK
	fYbJzN3DvgXcGDqiK7f64N/J4RJQMYjJlcxHlzshvvoBMQ5dxXP2FMpyJfuA6QLj2XfrcsTKkLa5L
	4BmTMVR3+YiSg7DmDM/pGa8zIxG2Nc8F75XXr7w0GT7mKBO6CntIZTrtfRJubJd6Hg3svPpwujvLt
	XcjgP/zJTbiSYQCDitHQvUVnBAlCdlAhksYHHzrnyIvWNoHxOpwdME8Nr3yOtt7fwg3RcImKNfcCo
	N8g0PXgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruim-00000006EZ1-0tdz;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERl-23wq
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0006Tv-EP; Mon, 16 Feb 2026 10:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruic-0012WZ-2p;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-1QoL;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:13 +0100
Message-ID: <20260216084758.3548990-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_569968_E3131D62 
X-CRM114-Status: UNSURE (   9.38  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 13/39] efi: loader: fix memory leak in efi_dp_split_file_path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When efi_dp_dup(p) fails to duplicate the file path portion, the
function returns EFI_OUT_OF_RESOURCES without freeing the already
duplicated device path 'dp'.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/devicepath.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/efi/loader/devicepath.c b/efi/loader/devicepath.c
index 17c659e4c5d8..a12ab24caaa1 100644
--- a/efi/loader/devicepath.c
+++ b/efi/loader/devicepath.c
@@ -465,8 +465,10 @@ efi_status_t efi_dp_split_file_path(struct efi_device_path *full_path,
 			goto out;
 	}
 	fp = efi_dp_dup(p);
-	if (!fp)
+	if (!fp) {
+		free(dp);
 		return EFI_OUT_OF_RESOURCES;
+	}
 	p->type = DEVICE_PATH_TYPE_END;
 	p->sub_type = DEVICE_PATH_SUB_TYPE_END;
 	p->length = sizeof(*p);
-- 
2.47.3



