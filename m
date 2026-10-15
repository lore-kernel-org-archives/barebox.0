Delivery-date: Thu, 15 Oct 2026 11:26:21 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHjB-00DrQT-0Q
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:26:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9AD51201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:26:20 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f4+WCYs7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d9xDj28p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056380; a=rsa-sha256;
	cv=pass;
	b=To9RMdaLKTdexEY9x/TcfPvQEczloGxWzzbuA3JV1r5T92Cu8Ukux5jlknYTjybQoCSytP
	ClFhouZUtVLmauH2bBOfQUQamO8tGNXhyS1pdNnhBV7fDnWeCThA8Jd9p5dTr2QSRPkpuR
	+k9D59Puw0CyPJ30XRDTbStXH2uNABOoj9EdYiv/jdD+DHgeMTe+88HHu/0h56D1MMqf09
	g2ZzXRGjZQkeTAy+LikM4uMdS8OW+Mr0c0PxT867xQb2kUVHJj/Xm3UHlX21Y2dyeGFjHK
	kFn4TDDHBxb0/ijnWC5WYY1A6DUO0f5vNqWfj7bdzPAYUNWDeoRqyTbg9Ng1XA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f4+WCYs7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d9xDj28p;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056380;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bAzjcqc8rXXYqoAejSsXQ3VR4ZvjDi7wO5xpXSPaqJE=;
	b=UjWLuNGMdlbZdpJU8Hi1u5cWyXvQ4meu1PGVGjY5jvg/fNsoQFwhd5WaU2YsfhNW8uwu2J
	S55QPCm2NK6nn7MEani0rcUFMRJwhWUh14VClnQDo4M42htWmkXXWI4lkxjtaGPR4mFudB
	e7iXkKv2wo+ZnwOtiiZMuCweaLV+ZON0uF9ys/3WnbMINpQR8ISGBRKqOa2Vtv0AMzwuY8
	x/Hn3tLSJ5qcCxDhcAKYoG2YZ5TOh4iplQ5KToDggrjxXlzXzEz0JmvD2GpENchxqMrLRb
	30jbopF5gJnaGVyDgKZJG8uYk4DEFwwMdmTY8xFxXeiuHIf5LK6o6wMPl1nMdA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bAzjcqc8rXXYqoAejSsXQ3VR4ZvjDi7wO5xpXSPaqJE=; b=f4+WCYs7MssXM977ZZvBVOvHQp
	FCmJr6KqtIN+wG4pka4SAF3ApvUq0pxEjhqwxrDlPMtTEbE9R9V7tFzC7BM3MKubY3pKR6Q1+kHWH
	TeK+GwmoWrQHlUEOCGI4cgI6GL5cc/zSMuWGykpl13hYlwGZa0c3N2MGeeZDIlCzFqJ6VJWnS7n4r
	dWbIZYY5CZIZ+s/RjfukoJLQK3VHCnrktzoAD/E53qEBb5dN46y5oKfU7V5ifbKHfW/RZ4w7/QaD0
	edbLV3A4T/sAYHU3vinLM1/zXlPEQj3ReF8dISBRSNlOOkI8Y/rxfQ6CJCIIoROJ9vD/QJJVBALo9
	UZ0khWfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHit-0000000HGCQ-210V;
	Thu, 15 Oct 2026 09:26:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHip-0000000HGB6-2JZR
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:26:01 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B62A4202012;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bAzjcqc8rXXYqoAejSsXQ3VR4ZvjDi7wO5xpXSPaqJE=;
	b=d9xDj28pH6T6r9pego5rZPy6HiM62iS2XfgI9uXrkmSxC6yr8dxRNkUfue9vr8vF3LA3oE
	CevEwJXd3FG2jps6wZ0kZHcqYccCL+rneNjDe9YT9TX5t0lKbObkGbKU/UQfOo+k6CD+cT
	zsg2V328/vMiwFji/ul8FztHymi4mfkHmDkaUQwWpBGDgzAzmcVfOlxrPd7QvofSfpyyD+
	yVltNkxpZbjoZZDwN0yzHDngvawfXCp052WoNbrQWaMGl5j9RLGUqOCpNK9p6y7EazSS+9
	jD3LCmIlkhZxOZLiae2wz4D/VIlDsuuG12RD0dQf6hb7JBivVe4IrJf7YqmTbQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056357; a=rsa-sha256;
	cv=none;
	b=bzi1ffmoFeH0wtYCh5NfYdbuGXALKBtypv2ebOn5fLrkr0jQTmDroFr/ruKOo7hMkbxQ0i
	KWXWpdsx67t4c5KguHE0D1BoIFGud2Nuk4i9yLehAVlFOeySJ9na4fVTya4l1Ygs9yFBGI
	BdaWuq97eqi14v4Cdu28jZjtXVfxJC6ANI5Dp58+5o/5ftkqZhEFTMQszYDiquHScEptPj
	nquGmqwzvmA11mPIl8CNnZM6RE2En+igrNu6s6iJTu3m2bYk5DufxmGdX/MlnipkLaciKE
	jPIad1rImu6zsbdnOoU1W288lIyF+YgB0QX8K+2SfZTkLOBlzTLpy8cBdZiCag==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bAzjcqc8rXXYqoAejSsXQ3VR4ZvjDi7wO5xpXSPaqJE=;
	b=dteWkd5LU6D53FOrWd+Rj4upm5yKygzcyQqHvv6+Hp3HRXrLU14fojfkfNMdjEhmHVdt9o
	CocaLx9gcEPa74KySthxuBiJu1U6AHZpnJG+jo1sP1iBdZFTcWwYDz+SbytURBrPq3ALcF
	GbIZpyVkJ85z4UI9pzqymmFBouEwuOhTxFTj7a0ClYdO3ywf9VtbU+A7ANWqU4cDip5QDD
	7CAHiKPUoo15AbaPVchkUXWgt63IhhU0fcVGPRDwRRgCZg94bqhHe9YCOHWpoWrVxrjpTe
	2FRBnAnoOSSpsX8wcwXIJwQNt3QXrxo8VcCafTvMHc0RPxgnHGNwUzl9/ZE6eg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9436B741297;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 1/4] efi: payload: ignore ESP state.dtb if device tree is populated
Date: Thu, 15 Oct 2026 11:23:27 +0200
Message-ID: <20261015092554.210438-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092554.210438-1-a.fatoum@pengutronix.de>
References: <20261015092554.210438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_022559_774189_A580BEA8 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  In preparation for allowing the state nodes to ship inside
    the barebox binary (as we do for non-EFI-payload already), add provisions
    to skip the external file if barebox already has a populated DT. Do the check
    before looking at the ESP, so a system with a built-in state doesn't log
   that it was unable to read state.dtb. We only warn if the file exists and
   is ignored. 
 
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9AD51201BBB
X-Stat-Signature: 73sxezi3n37y3wu3a1kcxkkukqyu3eb1

In preparation for allowing the state nodes to ship inside the barebox
binary (as we do for non-EFI-payload already), add provisions to skip
the external file if barebox already has a populated DT.

Do the check before looking at the ESP, so a system with a built-in
state doesn't log that it was unable to read state.dtb. We only warn
if the file exists and is ignored.

Also for the case that a state had already been set up, skip manual
creation of the state node.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/init.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/efi/payload/init.c b/efi/payload/init.c
index 1e5f2eb8cf56..a79f51ea38fc 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -284,6 +284,7 @@ static int efi_late_init(void)
 {
 	const char *state_desc = "/boot/EFI/barebox/state.dtb";
 	struct device_node *state_root = NULL;
+	struct device_node *root;
 	size_t size;
 	void *fdt;
 	int ret;
@@ -291,6 +292,19 @@ static int efi_late_init(void)
 	if (!IS_ENABLED(CONFIG_STATE))
 		return 0;
 
+	/*
+	 * A device tree built into barebox takes precedence: any state it
+	 * describes has been instantiated by the state driver already.
+	 */
+	root = of_get_root_node();
+	if (root && !list_empty(&root->children)) {
+		struct stat s;
+
+		if (!stat(state_desc, &s))
+			pr_warn("device tree is populated, ignoring %s\n", state_desc);
+		return 0;
+	}
+
 	if (!get_mounted_path("/boot")) {
 		pr_warn("boot device couldn't be determined%s\n",
 			IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONFIG_FS_EFI");
@@ -320,6 +334,10 @@ static int efi_late_init(void)
 			return 0;
 		}
 
+		/* probing the registered tree may have instantiated it already */
+		if (state_by_node(np))
+			return 0;
+
 		state = state_new_from_node(np, false);
 		if (IS_ERR(state))
 			return PTR_ERR(state);
-- 
2.47.3



