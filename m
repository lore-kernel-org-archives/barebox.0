Delivery-date: Thu, 15 Oct 2026 16:08:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM8X-00DwzP-0V
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:08:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 927062027CF
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:08:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lAASXmIb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GDHbrE9f;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073324; a=rsa-sha256;
	cv=pass;
	b=FXXeyllSOgcx6wmjSvlQTAsRP3amWh3kGQMMpTApe1T3rXD1plKT/OWC/Xl7ipxIBHyGVf
	y8aFedssYyQvXMGlHfCtNt+Yw/wT+1WVPQm/3ioCAM/mUa/4KPp6RQx9GcqaJjrlDX0K1h
	t3r1SAEO0+4xD31BN9SmBHqv/53HCzIQbP+ueLdMa60YPTZeTA/AevIGND0YZMzT9xmD9z
	WWS1Wsv3cczY4b4hJIBPkJYxbNyiMwhcSVMSmaFG+j1vbqPtninU5PQ4gFJHME9VDG4b5d
	1Z9InblqzH5NkwbpOHjVUcxVvmrluRWEe9c+7pSDlMv1JXI8vFOoOx2dSTbPGQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=lAASXmIb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GDHbrE9f;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073324;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=FGSyqxAP0yucnoaeBKeAVpVIB8rgDFeVYte3LYbKFbM=;
	b=ZmPT/vO+0+6PQQkETGKOcLhRPfde06s4orunjSVua8GK2bx1826ccX+hnPTVn+kfMSnQs0
	V9evrO40yyH2s2VMgn1c84Ff8LmjINRX61AAXGA1VGbqRzVjorS4T0Z1B6PYfcQidwWAMq
	I0EAhdydsUpwmbPn3pVKyP3Sa+RFyy3BdCl+udvxR+d/TJV4L7sQiTgU2Dab9mX+ZnWQDM
	URpqLbVKbYJPrU1hR2td3Ng1VLRLAGMIoa0M09E53hk0XitxzDxfnFrR9pOigGmA4p6Gn/
	VI5dBJsu+oGHCHQTt6QGG+w5xGx8PSrHG1XszwU1ZQUNn5oJaUYRE/QeTK+vhw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FGSyqxAP0yucnoaeBKeAVpVIB8rgDFeVYte3LYbKFbM=; b=lAASXmIbv9+cSFkN+3CP6SH/En
	RxB4sfZ+rHhA6xPu7oodk0LFs2+uaHi/6VnY80CiKFJ6EYsXZdxNcXjF5vc8WqOW4sGYIBnll64zF
	etBVspmA/KaXaaNi6UYC+olC8pkzNXC2lKnOALTvFK8/PpDVJY9RJiQPtFdCWjaPl+rpd1LCCvwfh
	L47J6yNPPVu94Odr0yrfCz7RxcMFSrbhCDFvqGtBQDWgg2CNrF+8vrtf1FU3X6yudkI5wABJB1wuR
	89/fPmAylpDWHduL5re9Kr6L+MO9oN/jHXbCagtVrj4fZYndxBV39Oe1rE4CEMKPfT424AlyGxhzU
	bdOPYBnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM7w-00000000KSL-3JlN;
	Thu, 15 Oct 2026 14:08:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM7s-00000000KRU-3buN
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:08:10 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 283A82027F5;
	Thu, 15 Oct 2026 16:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FGSyqxAP0yucnoaeBKeAVpVIB8rgDFeVYte3LYbKFbM=;
	b=GDHbrE9feudx9s5ysMd/4z0vqyU/L+lcG2a3Nn8+gVObAEv+kW84whar7pKUFLa+hKnptw
	+avblircX6OJZg98NbxanGK+GxfaLMS86tq4dJ19e040KpZLKbce+u4WLHyg3tjSWd47za
	9ovuqICxMM+VOa6b3sdXF+rS6EFPm8TS0ax2/vFmGqdnwINhPOIEqtO6xiVZrhxvPhL8jO
	BbThqNTK67y/x1DIqK0kiUfkQuGY2y0Ly3uriJja6Ak1edJxC71FoHqbvmnHc4MuUsbRju
	wCoIT9+P9mhw+zQO3w0mZ3r7FsT2gOxLaWm5oC9xS6ZN38TEQIO21QP9kaMl9w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073283; a=rsa-sha256;
	cv=none;
	b=M2G0iZM7LtBy/Qg3oNSQjHqt2T83ZMvWTN+uetLK7Bxw68aKyaAeIsQ/qT7RPY03rxvs6O
	cPu/EdCqb0QX+bi+ryavzGT4wrtex3fR5Is7VWu5d0DyXb1p0JDiNpLhd/lf6uLQohLWk9
	bww0/FZ9LZSsBKMMgmvEHIEy38/W0sPoMr887Pd2d3jJOUmuJnaWnVN0vigSn59sf1kI8E
	9e/PR6igXabFjGPneI1AnzQETJEnpP4M5Ne8izViOMe4HAGseTNLkysDY9gGnPA4g0xTmF
	Jdq/piYeVVpln/r/2wO+tFHhw1fLM1oCI0+GYVBH6I9sYyyyUh+AC3LSiOHUwg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FGSyqxAP0yucnoaeBKeAVpVIB8rgDFeVYte3LYbKFbM=;
	b=FxKymYBZxCCQqUs4O7Q2UPzsJw5m03Mb1l9gMBwHhvAJzpmRkJCUwOZ8ljjlWAdq/maorF
	iAlxF8oPEO9juPIB9WimiwDpgmTOtMJlkqI2giGxg15ZIW4dISoSPp9svQSmfcx5XsgXbp
	Qh5Um9YIL6fnkMG10U+VTya/qh4px8R86MtkW+JlhUZu/wg8FEqC4rTNTStZPaCpDF4E1n
	9S2hJSIj30M2RcHzzio1AXE1TUYYD9NDMkICLnS0KQMDxXpxl/aZ1PIWq6hImrBujU7AaT
	H0HemdX8L9LjFo0cIbFkkZ6ZacdMe2oSlsQTrX+6gzAF86ztTVrGdZRhL5KCqQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 0F71E74175C;
	Thu, 15 Oct 2026 16:08:03 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] fs: efivarfs: skip variables whose name does not fit struct dirent
Date: Thu, 15 Oct 2026 16:08:01 +0200
Message-ID: <20261015140802.1227004-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070809_667566_745A397D 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> efivarfs fills struct
    dirent in its own readdir, so it doesn't benefit from the length check in
    fillonedir() and strcpy()s the variable name and GUID suffix into the 256
    byte d_name unchecked. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 927062027CF
X-Stat-Signature: 68mnw886r43dpqtruhryweojjot7kieq

From: Ahmad Fatoum <a.fatoum@barebox.org>

efivarfs fills struct dirent in its own readdir, so it doesn't benefit
from the length check in fillonedir() and strcpy()s the variable name
and GUID suffix into the 256 byte d_name unchecked.

The names come from the firmware, which allows up to 1023 characters
here, and efivars_create() takes them from the path, so creating a
variable with a 300 character name and listing /efivars overruns the
directory allocation.

Let's skip such variables with a warning like fillonedir() does.

Fixes: ef4f9d77b72c ("fs: implement EFI variable filesystem driver")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 fs/efivarfs.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index b9f514c51cd9..da826234b959 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -261,16 +261,22 @@ static struct dirent *efivarfs_readdir(struct device *dev, DIR *dir)
 	struct efivarfs_dir *edir = container_of(dir, struct efivarfs_dir, dir);
 	struct efivarfs_inode *inode;
 
-	if (edir->current == &priv->inodes)
-		return NULL;
+	while (edir->current != &priv->inodes) {
+		inode = list_entry(edir->current, struct efivarfs_inode, node);
+		edir->current = edir->current->next;
 
-	inode = list_entry(edir->current, struct efivarfs_inode, node);
+		if (strlen(inode->full_name) >= sizeof(dir->d.d_name)) {
+			pr_warn("skipping variable %.32s...: name too long\n",
+				inode->full_name);
+			continue;
+		}
 
-	strcpy(dir->d.d_name, inode->full_name);
+		strcpy(dir->d.d_name, inode->full_name);
 
-	edir->current = edir->current->next;
+		return &dir->d;
+	}
 
-	return &dir->d;
+	return NULL;
 }
 
 static int efivarfs_closedir(struct device *dev, DIR *dir)
-- 
2.47.3



