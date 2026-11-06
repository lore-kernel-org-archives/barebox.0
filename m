Delivery-date: Fri, 06 Nov 2026 12:15:06 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPHuT-007zHK-2l
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 12:15:06 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B86022027F2
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 12:15:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H1mtGYTO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gRchadNZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963706;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UF3CedSRe8KirNFo8i6IbwCPN4+AHNSxQhl6wUv+mA4=;
	b=VdP3b4BrQvaZDR2DJooXrgU+Re7hT80ySQEboetjYMkYRFStgnH5DfMHPsL/xOgRvPF1yb
	V5C6DA/Y8D5xZvfkp2Bok2mSiIt7xfJHKx0CBY5BfG1bvhdqqGVoulVFqHeiSrwIy7Sa9Q
	D+4uVY/CNPt6RSE4Uv9035BDWp8fm92JKSyR65YSzXK/BzgW5sakk2v/sGY98Ykg+fzmmy
	/kphfdUTNb6mt8GERsR0danzfjzzsRVoDlPf2aw3pSaTj1rEdaSUp+OM4afpWtQWyjrU8+
	lF1U98e5b/KSOuwg8uFPKJLHkH2IOyUv1OEUAWDQouJ3giYVJszE+Sd3iBNQ8w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H1mtGYTO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gRchadNZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793963706; a=rsa-sha256;
	cv=pass;
	b=JU06ChQiNoHqKoxcDaUhMzFEa+NWh3zXUcyZ/IAtFBygWq7TRcsUbDbSMTHJFpjsXmHxln
	4zNQgUWMStg7XGEPJ16b+FtXcVvEm++9+h1h/EB0ZJ/WkPC9p592bOkCFJce/rcvzq7Wlf
	+wuhVSeOOO1VXfwSlEfCziXBScbo/ufP6ABCB1w2CXOYBKZwv3zjP7gFaMMsrUsrxaUx/2
	/Qzt7Edk7MdtJuecQsyhEVCLCBA7J+OiHQV3JAH0Gmv9t7cwtqiI5rbCA5JT+y7PJxrLmn
	QE6SOW74JZ92Xp4uR3YXQE0m63rf2atXCb6x15zZmwNeNsSBH9TfdjzjA0FDZA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=UF3CedSRe8KirNFo8i6IbwCPN4+AHNSxQhl6wUv+mA4=; b=H1mtGYTOQcjgoy
	j255an9Rrjcr5hIAqvrszLnNqv2U9ZKIjJfhpZmX7azR+77T6TXAIq/kFTKwLliSNDDHgFe+JZ6E8
	pbjtD1Mk0uRcxDGmKvTF4avjX75982843F3RErv7D4Uw3yADZTJEVDeowtpeg6N7sP5KM1V6y9Hve
	/n3EO4iQVY7srredGCEvj+/5kBOpcOTfgCGPPiqomQ1pNVKLmIySC0V6XA9riH+8Ck0r0wB84CmC8
	BQFCUsYLXe90Lg1EEhG01Z3gw1E6eNQVrGB6wt8mm6mQbm3doXZJNrfgJ5qX5qqTBoGp9Q5sZBDLF
	RC6kYp8xYG+pLZOFRIBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtR-0000000C6n3-19rq;
	Fri, 06 Nov 2026 11:14:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtN-0000000C6jo-2XrG
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 11:13:59 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CCA6920291F;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UF3CedSRe8KirNFo8i6IbwCPN4+AHNSxQhl6wUv+mA4=;
	b=gRchadNZts7Q7DchOxmdW9POmil6wSry9O2XftAIqRSsSfXCKPmaIAoIv6Vk/jAwRLvr+J
	kxPz8MyNxw0e2OEpzg+SxPw4XotE8DP/NhSqsFQ1p1s9S15CclFve+/Nhax9cQm/PKMnr3
	lgodjTHtDOB4DG73sk/+Ruy0OV4kucZ1E7hKCSi7zsgvufoRlzYuwzpCWsgBTiBgSE2V9O
	7D9dfZ0qgmSPQMNuS+DEDRxRTS/FoJoVuW8agcU23WvmKA8yU8Anhw8+RX3gi52Gsi5+Ka
	pRl992J3aRlBb4pMOCU+Ny590pu8i5lvBti/kMaEGxhuH+RC04dGBM76otyLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UF3CedSRe8KirNFo8i6IbwCPN4+AHNSxQhl6wUv+mA4=;
	b=XbPUASn59smoZRmmPgBryUFFAt3jCBTrVKn7hUHHxNDT2IZ0yyB4WD498eh1jmCkZsm1Do
	jTjBf0yymZI1Mm+SSneALS3kpP/nDbNR+zegWf8tMKS5YqNNNUcKtEXea0E1rjtnnQpBOM
	NExJqOYi/Hnmygp/SOofXFLuXeSNAIFRXgH9rhxMi6NlWlJmaa+wA7YulV6E9LUjoiGrRH
	7D/XHPZ13GGmn5XFKS3lVvfDdfvO69SHR2MHGUroYGvsQ2vmNa/tWElpPpPqyxDNchzbm5
	clw/POA6HYCOz32ES2CnW9+C0SOLo6PvVB3xuK3WJzli/wo6EWB4+splNiZl7g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793963633; a=rsa-sha256;
	cv=none;
	b=U6XB11P4nSsmw+gLnhIkz80GOiPcGq8podrDmj55M6kbu0HJocGWNAGTwhKS2/ycbcTQxQ
	34w1xZ5wbyINEGSozxbG2wYQfzFErnKOemsMkclpB1Vxa1JmndoLvOG94bHDfn6tiv9nKV
	2D+cZf6Syjx2mpUolcfhhwm1aa+LUVy2TJaBxauJ7+2VAaAtSDBzsrme/5SgfDVLUtvyyM
	/0hF42tN9jZGcOJoOdtJfdFK3RfWgc01Fpy4YxI6HsKP0aok2pbllv4TH//CZwGaqE1sSH
	Mf2OBRcha8aKq7WMHfcKs8J5sUvQGH73JNU/cTuj+RoGqKTbVpd7Tw5lTUahWg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id B27DA74124D;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/4] ARM: at91: sama5d3_xplained: drop invalid hostname
Date: Fri,  6 Nov 2026 12:13:48 +0100
Message-ID: <20261106111352.3535034-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
References: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_031358_001894_8920993F 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Host names can't
    contain underscores, so barebox complains at every boot: WARNING: Hostname
    is not valid, please fix it 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B86022027F2
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
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
X-Stat-Signature: d87jyxdo1go3ojkizh6cxsf9pxjdyxbx

From: Ahmad Fatoum <a.fatoum@barebox.org>

Host names can't contain underscores, so barebox complains at every
boot:

  WARNING: Hostname is not valid, please fix it

Without the override, the hostname is derived from the
"atmel,sama5d3-xplained" compatible instead, which is valid, so let's
drop it.

The net boot entry now looks for *-sama5d3-xplained instead of
*-sama5d3_xplained. This isn't worth a migration guide entry, as
barebox has been warning about the old name since v2024.05.0.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/sama5d3_xplained/board.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index 4d908e6b9f62..c6c1105e5eb5 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -39,8 +39,6 @@ static int sama5d3_xplained_probe(struct device *dev)
 {
 	struct clk *clk;
 
-	barebox_set_hostname("sama5d3_xplained");
-
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_sama5d3_xplained);
 
-- 
2.47.3



