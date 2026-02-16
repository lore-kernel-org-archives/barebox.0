Delivery-date: Mon, 16 Feb 2026 10:18:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukX-002H44-3C
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukX-00008f-BY
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sJyQzPRwjJEP2brgR+UNSn0L28TWYl2C70BHrSIMxNY=; b=mV3+9nkOaqqmD1ECfxA5MtDC/g
	oQrG3uMMlb6LQlff69Z64aYha7Ex9xTTTzPtcL+K9NwxwacmcrrgKN2BP04/nO7/QFKbiVn8CFtcu
	N+k+j7Jx40Q+yRMICXTwN0bmGHDg4Idkd29VBJUZwnFw/vsLVrohxhoXyNbItVChtZJG0B+Vkcz+K
	voqnCfeuZ/gHYL/D8JlLVGZPh2h+W6QjPB7cX7S4FyX+cR3O162Oyo/1gr/9v3vS49p+2K4yEd8N8
	GR1YB7biepe8uCPtXfCV3wIK+fYqUKRgnuTXyRmGsHo00f7HxJPe1t/eT1I91AOVF0uBklpmKF/ok
	IibPoGaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrujM-00000006FKd-0EUE;
	Mon, 16 Feb 2026 09:17:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruip-00000006Edq-4AQ4
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=sJyQzPRwjJEP2brgR+UNSn0L28TWYl2C70BHrSIMxNY=; b=CrqlmYCMFfvKr86k83/SNvqMum
	olepYCNbkJMPLOJjNctYCizu36KCRDq7vi+NpoB9LBzdLF3vjKSLsFWGwWQ/kiJLphDy2mrbrUBG3
	23GCcGPHuSlGk8mioTPX5MCEEsJwewusVBApb45Bf8OSow85imCVpJCUVKvvSRB+8dbGgF/3qnvqM
	2pK4i9J2m776T+9n9hA2aLwqKIQ16HwLD1h4U3qYJ0Ew5atIICi8pgsNXZqX4xoeaaay8JOYDf52d
	lvZDoyd6JWFZ5wleirqczKbOplvlPtXXY2UjcDIx+n1Bp3dnNwXTtzXHPlqBqOBdLfWMuUGCe12y6
	0XCn7b0A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruik-0000000EIEk-0zMa
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006Xi-8Q; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xn-1w;
	Mon, 16 Feb 2026 10:16:41 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-3pnd;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:26 +0100
Message-ID: <20260216084758.3548990-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091647_637872_A76FD9E8 
X-CRM114-Status: UNSURE (   9.16  )
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
Subject: [PATCH master 26/39] efi: loader: fix file open mode always setting O_RDWR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_file_open_int() checks (open_mode & (EFI_FILE_MODE_READ |
EFI_FILE_MODE_WRITE)) which is always true for any valid open mode
since EFI_FILE_MODE_READ is always set. This means files opened with
only EFI_FILE_MODE_READ get O_RDWR instead of O_RDONLY.

Check only for EFI_FILE_MODE_WRITE to correctly distinguish read-only
from read-write opens.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/file.c b/efi/loader/protocols/file.c
index e002057d59ea..93700d2d3bdc 100644
--- a/efi/loader/protocols/file.c
+++ b/efi/loader/protocols/file.c
@@ -113,7 +113,7 @@ static struct efi_file_handle *file_open(struct file_handle *parent,
 
 	dirfd = parent->dir ? parent->fd : parent->parent->fd;
 
-	if (open_mode & (EFI_FILE_MODE_READ | EFI_FILE_MODE_WRITE))
+	if (open_mode & EFI_FILE_MODE_WRITE)
 		flags |= O_RDWR;
 	else
 		flags |= O_RDONLY;
-- 
2.47.3



