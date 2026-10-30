Delivery-date: Fri, 30 Oct 2026 15:15:01 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMnNl-005Aql-0K
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 15:15:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 48A0D20295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 15:15:01 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3f9PbB4n;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UR61nLJw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369701;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MQMOT1zd06TKutb1u/pUF0oZHh8/3Gtlvcsuq6N/X28=;
	b=O97OKJjjebLM6biM3WYaCyV4fxLTNsXwVGedCvpNemOtNMCONk3Q1wQAWQZB6cfoxTjNOn
	+Q40B6F2p3WZzNDmJjeDm7wMOyjJwq30j5zj8gkc9fI4fdYrY91vDjmKaHn9ViSJJ25tYB
	M2EFWEiWk2/+oYC1bv4PToiVgJh/vbZ83KRd+iFvrgHSSwr93F+y3074QeeIkk7wiMjxRN
	lum1s93H0hnZJDImeD96jLxphZzIWArNciV/uylyannzdgaI0qVyyKP//Jl8yzsLfxJwuf
	AS8IDj32HRb6GwtjJKTPuom5XTKVyubfkBFfx9X1ekP8tnF+3VInEMcC0IZySQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3f9PbB4n;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=UR61nLJw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793369701; a=rsa-sha256;
	cv=fail;
	b=hJhp6xXBMC16boX9zac9OhZIo+qQ17a+Jp2HcPuoqNkm+o5qHO6xfp8cTxlSgySja50Daw
	Y+2pRiy8a4Ii8ojAyCFDaofVfVgyqLkdJwzMRMjtDe1cmB+xiki75BFYDEmhELSEt1bz0N
	o7ulbpay/idfe54vRAqMVJhTVerUlCzT7Xnleqa2cSZ62QUxekkMSujA+3aH0Vq6WmEJYm
	ALVO3MV5GF3jZ/OnefCVaSODZDUGotLHfq1J0mS+9BFotMezkBk/hsvDCCM5n7eC4gK0Ph
	1uZgOFiHolFakbQHNy08FsZKgW3IgVWA45vjipBalCNyegDRcBnC6EeamDp5qQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=MQMOT1zd06TKutb1u/pUF0oZHh8/3Gtlvcsuq6N/X28=; b=3f9PbB4ngGyWWk
	8RcLJXsAU5QpYpge0RMUcsH02LZeqzmpUuN/cwXjlT6uj7Na5iD6RzIOadRRUXS7383pK0PUrF+ME
	zOgUY6ZDf6k5Z/F8FuxQ62AP1PGJ44pHBmKvSiL6444KP/YS9JUq6KCL6y2/hBqgPWJ5e0BzOf4XS
	jXSFrVkBvLuR62WeLVAbqHprIdqh5Zgb4fqIRNCCeJwka9xxf9TU3IzpRbJ17RX3IZG5vv4bvvHz8
	7Jhk2F2cBE/UgHCBVI48u5F5U069GrQbTTEFhHK9gzlAaNwoz/e7IW2adT4vBhRzSmSeQkE6Xf2yv
	bNr9fo/jiGTD5vjWz0hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMU-0000000BqmF-46RV;
	Fri, 30 Oct 2026 14:13:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMnMQ-0000000Bqip-3wuS
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 14:13:40 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DFEC120296C;
	Fri, 30 Oct 2026 15:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MQMOT1zd06TKutb1u/pUF0oZHh8/3Gtlvcsuq6N/X28=;
	b=UR61nLJwvcw2pzBIEhcNxIgrZhSrrENdiYxHQZ5FXdO1OLGQc7ch3vqTGqCNX4hNW0su2J
	O6xOv1ugHwby5H+j0gfLTZKdTxiGPWO3vqEdjMW4eJ06xgbvGxBKlVN6LN7RzCRRe2LNJB
	v0TydXnn1zS6WtOWn7PS+EtghnxNRideemN1AD1F4sko42ZDMLlQN/9t/+SXaMHUmt7erK
	UdoPpPRESJlwHdcZfmT5Isozki1euTEgEZZFeSxX4CELbzXYlqvTWmqrQo854s8uVAZCwJ
	OF82MNKLRtgKsmu+N7K5St2AlHU6KK6NgsJKrI36CaX9uIhcscdzCGsagjHgvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793369612;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MQMOT1zd06TKutb1u/pUF0oZHh8/3Gtlvcsuq6N/X28=;
	b=G6NnOzPZz7/kExwHlo6COn/hAQC1enQKBnpPwAIOBseARUob7qcYoVQ7KV/w1+GSPmjfsj
	kSLdA4jZYYxYkIOAu7bs7Q7wnorey7IDTKDBNSZor7jESsrHwxbUgMDBsqe9aMVnO3UuIG
	ZdUX1krEaDwi6Ha8VpLlqMCsEPl0oHVlV4eVj35XJprFGuqTxD9OgmXwz18NCkzupg+m57
	4oJAZmr7SLyxBaFhBV25wUkEgArjjIQasM9XABUn3Ml2vfUprv/M6EnWd8iP3jlAGcGG7F
	pRcU//+VIeHLbWBids42zwvalxmS/goT7i4RaFMIZp7qMpSoOlYD81Jd2y8G1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793369612; a=rsa-sha256;
	cv=none;
	b=JJ6FTHC9/n4dOoH2KTjFC5UvahXCC609UzETfrdD641iEwsftByLGTURbYAP4hNxNZT/UB
	6lZcGhYvAksQNLbROr63apL5qk84+rfEBjMxlY1K0fOoXtiW4zbTBmA2VMM/z5PZJFL+uZ
	AKe0DJOwhcjlFiXHIbB3rS27JKx2BYRAZPnl/E+4oSMF05V9aw0up/Hw4sqiSlT01mWo2t
	SbvDV9ayZGBsh1rNAbfxPNKrNPlmYF+mjWe498MN3jkQtRjWkN2VD1fyiBkDQNwKUNhsla
	qRM6SKz5bN1dQLblmeqDYf9cmTwnN4JE99/q+nKh6Df/kLG3pUbUCtZVsAggpA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 15:13:32 +0100
Subject: [PATCH 5/5] sandbox: defconfig: enable boot overrides and devboot
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-devboot-v1-5-ab9dd3a92c66@pengutronix.de>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793369612; l=1042;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nRzqLNeHxppaEZI919IRe8L1x/9Gq3nU/MIgGC8iTts=;
 b=0NVXqVLVGUIHn5C64LTok3g5+Z9D/S4oHDw3s9XBjn+SghZXtp0soCFcpzMb/Q2SejyAYA8Xh
 xPwBCq7Vqz5Ae5Wu7fQ86uLNi7lyhMhTFygrEm48Bo90Uj8nv6mFL+9
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_071339_136104_F626143D 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Enable boot overrides and with it devboot along with the devboot
    snippets, so that the devboot tests run on sandbox as well. Assisted-by:
   Claude:claude-opus-5-5 Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
    --- arch/sandbox/configs/sandbox_defconfig | 2 ++ 1 file changed, 2 insertions(+)
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: c9soo6nug1deu4i7jwxdmggohnbg8bkm
X-Rspamd-Queue-Id: 48A0D20295E

Enable boot overrides and with it devboot along with the devboot
snippets, so that the devboot tests run on sandbox as well.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/configs/sandbox_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index 5b2cfdd515..46f1270178 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -4,12 +4,14 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
+CONFIG_BOOT_OVERRIDE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_COMPRESSION_GZIP=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DEVBOOT=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_STATE=y
 CONFIG_STATE_CRYPTO=y

-- 
2.47.3



