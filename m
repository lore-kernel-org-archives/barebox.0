Delivery-date: Wed, 26 Aug 2026 11:49:22 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzAG1-007OFQ-0w
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 11:49:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DFE96202040
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 11:49:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=diAH466Q;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rnlgS78Nvxi/oJg8S5LCDtSgvBjfTRiOzmFI1xUVOX8=; b=diAH466QK0LdRwLqSKh0rH7Z8b
	T3oqDl2Qc50USRemaNjcA9bgQ6CamQC7wIyW++dgCnvH8PBHSVF3qg2Bxjc1xrT8XvphPfCvpM0oX
	ehQH+9alymmEmOImCekII1NYOzPhXlwgVWJjvDCr58P4oWVjsHo0eLmwM1zr4Sx+p4CLKN6XY/IPF
	1RVJC+GnRghBn5zPI33FhUmvVmMOebbGDN6YyYFGG00ElD1DuPFj70MQfUChVidZ8hgLnrogJLkGZ
	V4pWgkvZhxcgUh4uRC6f2T3TMBVC5R0u+z1pgtzyXwf/LJ/s/rVEmhEzTYUpCQmJBpKqFkfis3m5S
	izQ6AB3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAEt-00000002Ea9-3mWG;
	Wed, 26 Aug 2026 09:48:11 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzAEp-00000002EZS-3EOE
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 09:48:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B59DB2017E5;
	Wed, 26 Aug 2026 11:48:05 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAEj-003Q0G-27;
	Wed, 26 Aug 2026 11:48:01 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzAEj-0000000Al5z-2J1D;
	Wed, 26 Aug 2026 11:48:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/2] efi: loader: don't let VarToFile stop the variable file from being written
Date: Wed, 26 Aug 2026 11:47:57 +0200
Message-ID: <20260826094800.2564299-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_024807_970953_6FD99E45 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  efi_var_collect() walks the variable store with GetNextVariableName()
    and reads every variable it finds into a buffer the size of the store, then
    keeps only those matching the attribute mask. Reading [...] 
 
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
X-Stat-Signature: 3xzcmbyaowhoyaosd4at4b6otmrbezee
X-Rspamd-Queue-Id: DFE96202040

efi_var_collect() walks the variable store with GetNextVariableName() and
reads every variable it finds into a buffer the size of the store, then
keeps only those matching the attribute mask. Reading a variable whose
value does not fit aborts the collection, and with it the write of the
variable file:

  efi-loader: var-file: Failed to persist EFI variables Out of memory

VarToFile is such a variable. Its value is not stored anywhere: reading
it serializes all non-volatile variables, so it needed as much room as
everything collected before it.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/efi_var_common.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/efi/loader/efi_var_common.c b/efi/loader/efi_var_common.c
index 4c6cb77e7c2c..dcdfa6fb0165 100644
--- a/efi/loader/efi_var_common.c
+++ b/efi/loader/efi_var_common.c
@@ -454,6 +454,14 @@ efi_status_t __maybe_unused efi_var_collect(struct efi_var_file **bufp, loff_t *
 		ret = efi_get_variable_int(var->name, &var->guid,
 					   &var->attr, &data_length, data,
 					   &var->time);
+		/*
+		 * The attributes are valid even when the value did not fit.
+		 * Variables we are not going to keep may thus be skipped
+		 * without their value ever being copied, e.g. VarToFile.
+		 */
+		if (ret == EFI_BUFFER_TOO_SMALL &&
+		    (var->attr & check_attr_mask) != check_attr_mask)
+			continue;
 		if (ret != EFI_SUCCESS) {
 			free(buf);
 			return ret;
-- 
2.47.3



