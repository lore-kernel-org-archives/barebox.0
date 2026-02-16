Delivery-date: Mon, 16 Feb 2026 09:48:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHa-002GHK-3D
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 09:48:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruHb-0002kP-5e
	for lore@pengutronix.de; Mon, 16 Feb 2026 09:48:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zywCArfG+X7pdd6jr6894GXd8wWAXWvezVXf6vpsDYg=; b=kTZOhtCNaAzFKYpO7jUjppxVBd
	s/IyYFuRwan1u3UG9F/tlC/Rz1Zn8I9ucdE/09GS39wfeqoMhlLUd69NCAkN4ESG2qrXDZQ3NQ5wG
	uvFA7M+slQuwaS6DBhAf1kmpDmfeP3nYkmYofbvYsDRGB9IEVrh0PTYlP0/cWmMSt4LN2+ScyjHDM
	kn6KNHRmvwzhx5NcNEQp1Y5q2rUTlPU53Q5870xSUieuRzBpM/JMJDuKYlY1yeql/JbN2fPzURiOp
	X45eIYCd56hIrKqNN5mY7LHjs/m16pv5P9BhHsK3uAEVhsf3bqmZ6xxLUvmerbr5tOUeB4GW+s1XQ
	00FS4VIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH9-00000006Bfb-2wcS;
	Mon, 16 Feb 2026 08:48:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruH1-00000006BZb-3ecW
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 08:48:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0002Ik-37; Mon, 16 Feb 2026 09:48:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGy-0012D6-1m;
	Mon, 16 Feb 2026 09:48:05 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruGz-0000000Eudd-3MnQ;
	Mon, 16 Feb 2026 09:48:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:01 +0100
Message-ID: <20260216084758.3548990-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_004810_779307_A6582944 
X-CRM114-Status: UNSURE (   9.03  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 01/39] efi: fix potential NULL dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add NULL check for name buffer before writing to it.  When called with
name=NULL (for length query), the loop would dereference a NULL pointer.

Reported-by: clang-analyzer 19.1.7
Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/efivar-filename.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/efi/efivar-filename.c b/efi/efivar-filename.c
index 984e40bc1c85..96a00ed001ff 100644
--- a/efi/efivar-filename.c
+++ b/efi/efivar-filename.c
@@ -79,6 +79,9 @@ int __efivarfs_parse_filename(const char *filename, efi_guid_t *vendor,
 	if (ret)
 		return ret;
 
+	if (!name)
+		return 0;
+
 	for (i = 0; i < *namelen - 1; i++)
 		name[i] = filename[i];
 
-- 
2.47.3



