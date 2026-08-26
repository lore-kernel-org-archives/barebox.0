Delivery-date: Wed, 26 Aug 2026 11:49:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzAG1-007OFa-1T
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:49:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0F16D20205C
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:49:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ed4UmvFI;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EK3570P9iMu66kkkh0M4x2zr9ZXKMCffxNI+thFjLmI=; b=ed4UmvFIHyzSLltNA0nzly0tGL
	tndAbYgfUq/V2wVGwNmItch8vbWEDk7OMgQPpXPYuHyWGPFQNiGeDxQRYnTFht0LNT5M21OWGdO5H
	sehjVhAK9sZE2nKm+E8xZnUdeWn9EAtuqY6mS4Y0ERfct5kCMwhBf1vX26Wl8+iiAJwbSUZPvJ0hq
	ZtjvreH9KdF2kQs6ZKsyT4rN788u9qMyjAMlQXI94uKRzXeN2Gmb3xSos5IunvC9fAeYomty93C3+
	04hNGNyclXjkeD171vKtlUJNK7OgypfktW16m3FeGCGKTVvZiXDlrxtoyvi/IOx0G3mPnzjgdaiaX
	Sz4VHCKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAEu-00000002EaG-0iDW;
	Wed, 26 Aug 2026 09:48:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAEp-00000002EZT-3EOP
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:48:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BF154202040;
	Wed, 26 Aug 2026 11:48:05 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAEj-003Q0H-2G;
	Wed, 26 Aug 2026 11:48:01 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAEj-0000000Al5z-2WCi;
	Wed, 26 Aug 2026 11:48:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/2] efi: loader: keep booting when the runtime variable store is unavailable
Date: Wed, 26 Aug 2026 11:47:58 +0200
Message-ID: <20260826094800.2564299-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826094800.2564299-1-a.fatoum@pengutronix.de>
References: <20260826094800.2564299-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_024807_970950_DA9B5C50 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efi_init_runtime_variable_supported() creates the two variables
    the OS needs to write the variable file itself: RTStorageVolatile names the
    file on the ESP and VarToFile hands out its contents. Both a [...] 
 
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
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Stat-Signature: mxz9xiso6zexfsonj19x9f5phncugmya
X-Rspamd-Queue-Id: 0F16D20205C

efi_init_runtime_variable_supported() creates the two variables the OS
needs to write the variable file itself: RTStorageVolatile names the file
on the ESP and VarToFile hands out its contents. Both are inserted into
the same 128 KiB in-memory store as every other variable, so both fail
with EFI_OUT_OF_RESOURCES once that store is full.

The loader itself does not need those variables, only runtime
SetVariable() does. Warn and clear EFI_RT_SUPPORTED_SET_VARIABLE in the
runtime properties table instead, so the OS is told that persisting
variables at runtime is not available, and boot on.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/runtime.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index f0fbd263fe55..a33db166d064 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -72,8 +72,10 @@ efi_status_t efi_init_runtime_supported(void)
 		CHECK_RT_FLAG(QUERY_VARIABLE_INFO);
 
 	ret = efi_init_runtime_variable_supported();
-	if (ret != EFI_SUCCESS)
-		return ret;
+	if (ret != EFI_SUCCESS) {
+		pr_warn("no runtime variable store: %s\n", efi_strerror(ret));
+		rt_table->runtime_services_supported &= ~EFI_RT_SUPPORTED_SET_VARIABLE;
+	}
 
 	return efi_install_configuration_table(&efi_rt_properties_table_guid, rt_table);
 }
-- 
2.47.3



