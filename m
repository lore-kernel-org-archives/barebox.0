Delivery-date: Fri, 13 Nov 2026 18:40:04 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRvFr-00AV1b-2B
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 18:40:04 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C3234205A41
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 18:39:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fzmqpt62;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794591599;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tkfdypeEzWL7SV7H1I/96H38/QQclYBfJRS3RkvEQZ0=;
	b=c+itMAG+2uiDMfJ1sn0pJp/wOA3eh/vrZ1wI8HypyJv6X8DeRNlmNj9GvDXNu4Exfe3+LI
	CPyqdqQjCFUWnTvWEZ+h7NJ9EQ61vgB2Ka/KEfCS+5369eGOqv/HjdIzVFx3vo3caAvNpP
	ZLnGcmE8qnDCCy6Scud+guyLeK8Hw8hkKi0M+zPBp1E6liPnwWWklUR122P9JdvEBNRDeV
	69arHv5OsGEQuDHchqfg82m/OyDsWsXO4DbYVP8tRjWFbwDjNeUapS+7k8ZKWOL4TFNmaK
	tgDsASOhq9hbggTmVGaykWZytJFmljNfqDWrq+qFUE0U44vobs1kEo9HY7fN+A==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fzmqpt62;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794591599; a=rsa-sha256;
	cv=none;
	b=gnjq0U5rBr6uTzJLyewWSDGptKuXYor6VheFELVFRJXvCFc8jytyKVOdW68Vcdkc1TVL2a
	aFp6icF2lAIoJn7WPQf8h6a+gT/OHez6qrOgHBD7YPhP1M21jQjDYTCf3/Fi7wL129Irn8
	1jWcdOTFfdJK6/MQKpH5SmQk4ALJpgiqmYMmqkSunolLyT59+5b28iipSwFcWoL806NJNM
	/vmyB9R8NEJu2oCeznJyELQLgJEieKy7UrTaf29PjzVLwBSeXsj9YGSuYajpRgrSDU5Lco
	v/8mKISUTV3pZHQysS1KAW6oejPBOZqCOQVlaaKasTP9y5CO90YknKcttN9R9A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tkfdypeEzWL7SV7H1I/96H38/QQclYBfJRS3RkvEQZ0=; b=fzmqpt623nkEUr
	jePl/9oMYACVJ58X29aeWwKkpS9sEj9s7Cv00jq5ScA7YuahPzl8w5Mu5qNIFEmIZnhgxFBdiIVrn
	elE0NVVI6y/1cHpWPmzDeWvV1gOw17Rgd7qMmIDo/Cc/9qnTOv+YzCH+/cm/+F2wvXVrKjypIY4e7
	UOxHbVUVABE3nT0PQDzL2GmBDhNusCTr0PBKbCxTOBMYrMndpTfQQAVHLRVpoEeGZ21RQJcW6DsvI
	T3j+KBICkRDfosFgSS6Li6adqcqdDfAwKJg0XCL27ZQ5Jy5PbgWV5qGnwE6CX/OQ41AK2VeuLNdtF
	fbRPLZuuxLFEZszw68kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvE0-0000000DlGQ-2Rzs;
	Fri, 13 Nov 2026 17:38:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRvDy-0000000DlFJ-0R9H
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 17:38:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xRvDr-0007MS-D5; Fri, 13 Nov 2026 18:37:59 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] fixup! commands: mipi_dsi: add command for easier DCS experimentation
Date: Fri, 13 Nov 2026 18:37:57 +0100
Message-ID: <20261113173758.2130347-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <https://lore.barebox.org/barebox/20261108101110.1270196-4-a.fatoum@barebox.org/>
References: <https://lore.barebox.org/barebox/20261108101110.1270196-4-a.fatoum@barebox.org/>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_093806_146058_64CA4F89 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The option description is overly specific, as the option is
    short for verbose anyway, just say that. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- commands/mipi_dsi.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
    
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: C3234205A41
X-Rspamd-Server: mx1
X-Stat-Signature: xih4f5k3igqzosyrbfcgk79n8qkj9jur

The option description is overly specific, as the option is short for
verbose anyway, just say that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mipi_dsi.c b/commands/mipi_dsi.c
index ccef279b9830..55eed9da174e 100644
--- a/commands/mipi_dsi.c
+++ b/commands/mipi_dsi.c
@@ -333,7 +333,7 @@ BAREBOX_CMD_HELP_TEXT("CMD and DATA bytes are given in hex.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l\t",  "list all MIPI DSI devices")
-BAREBOX_CMD_HELP_OPT ("-v\t",  "list with host, channel, lanes, format and mode flags")
+BAREBOX_CMD_HELP_OPT ("-v\t",  "verbose output")
 BAREBOX_CMD_HELP_OPT ("-d DEVICE",  "select specific device (default is first registered)")
 BAREBOX_CMD_HELP_OPT ("-i\t",  "read the panel identification registers")
 BAREBOX_CMD_HELP_OPT ("-n LEN\t",  "number of bytes to read (default: known length, else 1)")
-- 
2.47.3



