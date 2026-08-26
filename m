Delivery-date: Wed, 26 Aug 2026 13:46:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzC4z-007Q76-0t
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 13:46:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D3603202040
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 13:46:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sNy0YfgZ;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DUybnmPvHqfx9zwBIXMyW0STM9KL2s6YkQt9YeNtcgc=; b=sNy0YfgZBjQ6PQXd50Yap9T3jX
	OcMqrMDhQKu+cW0ZDB05Wb6Nh4zzdzVomDK27I0IYTZhu2avMB/yZ/JG5ziiMmr4EaOLmCtu51vz4
	Na1YLjM3dyJyBvlGl6EGTL5LPUDpShLwKtB2W1Sc2A6oajBkWLPxRpFydKYdccFIHHQiCk+MWzQJ5
	WAPnDa0oOdI1pCpwHDLCAW/7eLrpL2ZXfVpM76s/kltNfYRPyNynMIm/rg0X5nXBVI6qlvQPiA6kK
	CuiYh4juRLMmxAWQxR+49UD/SvhZCLQs9MAk6cleIaZcdcCO6AqxAWTGA9X/glaSGYdy85OGa5jL8
	00xVU+Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzC3Y-00000002Mqc-1aA2;
	Wed, 26 Aug 2026 11:44:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzC3U-00000002MqE-15y9
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 11:44:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E64C200F83;
	Wed, 26 Aug 2026 13:44:29 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzC3R-003Qqt-0m;
	Wed, 26 Aug 2026 13:44:29 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzC3R-0000000CFQp-0aeI;
	Wed, 26 Aug 2026 13:44:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: devicepath: don't spin on hard drive nodes without a signature
Date: Wed, 26 Aug 2026 13:44:14 +0200
Message-ID: <20260826114428.2919216-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_044432_498071_E98C768E 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  device_path_next_compatible_node() returns the matching node
    itself and doesn't advance past it, so the continue in device_path_to_partuuid()
    re-enters the search with the same device path. A hard dri [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: fiawcbcgr6kmaaxgpzrueqj86cdam41t
X-Rspamd-Queue-Id: D3603202040

device_path_next_compatible_node() returns the matching node itself and
doesn't advance past it, so the continue in device_path_to_partuuid()
re-enters the search with the same device path. A hard drive node whose
signature type is neither MBR nor GUID, which the UEFI specification
allows as "No Disk Signature", hangs the search in an endless loop instead
of moving on to the next node.

Advance to the next node before searching again, the way
device_path_to_filepath() does.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/devicepath.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/efi/devicepath.c b/efi/devicepath.c
index 32ddc952cd9b..fd2ad9d580c2 100644
--- a/efi/devicepath.c
+++ b/efi/devicepath.c
@@ -810,11 +810,11 @@ char *device_path_to_partuuid(const struct efi_device_path *dev_path)
 		struct efi_device_path_hard_drive_path *hd =
 			(struct efi_device_path_hard_drive_path *)dev_path;
 
-		if (hd->signature_type != SIGNATURE_TYPE_GUID &&
-		    hd->signature_type != SIGNATURE_TYPE_MBR)
-			continue;
+		if (hd->signature_type == SIGNATURE_TYPE_GUID ||
+		    hd->signature_type == SIGNATURE_TYPE_MBR)
+			return xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
 
-		return xasprintf("%pUl", (efi_guid_t *)&(hd->signature[0]));
+		dev_path = next_device_path_node(dev_path);
 	}
 
 	return NULL;
-- 
2.47.3



