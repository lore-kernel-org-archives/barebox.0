Delivery-date: Mon, 28 Sep 2026 13:29:32 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Y4-007GwG-0o
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:29:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B45DF200044
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:29:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vJCgrCSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SgVQOw9v;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594972;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=MIE7njPOlJ47J0nm7SDf5iqsOpBxte7tgmzOYy2CAX0=;
	b=Np41VmtGfTcAzc0+sLDxwDVoGIWpjVeFw3ze4OHTiMPSG27IDmLhoy8aQpVDFByfdXbjpm
	EBtwIVSUJMZ0YUrLMq/i+R/UGGR4CBwoQlZkDaMe3e0/PD4RxNTb7iVgoC3z52fKg3+6GI
	pRdUiUX1RcoKLZ/GYvaNSWar7jFaSpnZluEjTJqt9+Z4d/zPOTQBmmw6eElkn1Z6jtUo/u
	jH+C/sUonVgrNvCdXTGF34AnG2VBSeT3bEceUA3SfBPZBOCl2gaiG7zLRMnbmE4A6Nm8Dy
	/X+QK9lqvSEJh3jXsGvKB+DNOT2zDmUo4zzRrEsE8q52uGAkPjp9Y3zcdfj5TQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594972; a=rsa-sha256;
	cv=pass;
	b=G/bGFe2++a3BzY2agMa3tUE/D25OQoJB/0nOFMilnZDFEO3dyxtUSvRQyfcecXC2INmTwL
	+wcYwl9GroQrwPOlc5nfUieuSm0Jz412T6uqyK/vRODJnpdgPj3yyhX91Zy7eI62NsQ2oB
	22mlvCyiMy/t6dcd6oBIOnLRrcS8Ub0Mx91z+ngxlJMT8Qs1M9xT1mNsPyQdPhFc6WiZ7e
	7D4vF4wY/G0//pR83mMry4EbHWJFTrpqeV5X/OlVS24JLnExI7cvcd3thNhUZR9/F/hg1/
	YxI/eT5efcFo29W/b97MbKuHhrBYvYZrdEsFC3Ao7bYRM2AUyUV4nwtNW71f4w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=vJCgrCSK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SgVQOw9v;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MIE7njPOlJ47J0nm7SDf5iqsOpBxte7tgmzOYy2CAX0=; b=vJCgrCSK0Q1rIjm4QZOBWmi6J/
	u+3omJtB18LnWax29m7L6qSQD35Ix9tccS6lN6rCfBLJc2nbIXkXpLriMWIVoFiX7nrFfdQttYwu4
	lQjEmigWELEt3ILSm6dLy8ZqtD0cLN6xQFvDZj/7FSyduDR/xNql1IeZZuJgHUIPLOeG5/djTBNmN
	QfcXkAPw9vetng14ei7uf5UN6OuM3x+Ky8uNHUjvI912Y9fzGPZz5KbL4knfB/DhtW0CMZVyZuqnb
	6YifWU0Tsbp/raZ6RVpZRhfSKq94W3BviG/WYmwYmqu+FGnjOB+dSFDNurt02gfzhIbIXQnr+06VL
	et2yNsgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wv-00000000S4r-1eCm;
	Mon, 28 Sep 2026 11:28:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wr-00000000S0X-0x7O
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EB432201F11;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MIE7njPOlJ47J0nm7SDf5iqsOpBxte7tgmzOYy2CAX0=;
	b=SgVQOw9vHwBfUZrvn0U2206W2JOrQLG+rjuT8VUi/RRy630pYFlBINscW2ZPoyFa+EgLIe
	zI9V5pazDbx5kPI8+YdxFznkMCAfC7NMHVdi59zlUsC5W4vtgkwxn67/v2wrJC6NSm4F92
	eI1A0Z2kIvCDMQMq/NVfEX3Vaxfd2Z/lziNY7mqKYYMWZLDd3GxVwaOVJZ2KqLpfHWdoaP
	9s+QIN6hkb1ScroC0boh3rbnnIFo3VLCPgkqD/N1UnL2jAAqURI5oBHjmo4lHiGb3RmTVn
	A4jPdsMFt3HvNn6FHmY0/onuDYEMyo6NzLKyUkVMA+/BsZazIEKP79dfgI1llA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MIE7njPOlJ47J0nm7SDf5iqsOpBxte7tgmzOYy2CAX0=;
	b=fGiH9kjxQHNEQHa+MHeLwjVqx0WDxJS3lvpGY/CDIDQNGXOgVmCBmC1Zn2nAiZY8Im9hZh
	26ZJorITUIyhodMQQQgAGmxlzQNflwJ8DObxIgvQXkIpxgQpmZbBEhYcjvmFm2myUkXFGC
	5+jUx/Vad/FE4lyPxaA04kPfpNE8ORwtXbN17zwVdH4EUyCiRwvsOqJ0LYPj3q23kSR3cM
	ehjSi74EZjlRIXrzphjNk35Z42npRZD9rHMZZ0eChYTRxobo+rupRYDM/toY4ufp7/LTye
	AkugnBLe3PzRFcoa1rotEJXMem2NbEPR2HGGdUQfsfZol2AX3LdlfFcqA71Xww==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=eQT9NHqjroONb24oldVPUE/jkkdAyeKz1rzu0I8ApAdfHQVW3MKoZ/fKnIrYQvWBDbLsE8
	4rj7X6y6oFYuBQZWvmuIPQoZ+ZrCpiEFSHc+RPxhsp4YNHql34m4IzAh/lMYHzhcZ2ibrb
	t1tG0jgbcbwf2yScmLf2IagVf0wOCWeE4adbz1GpCF8U7ZCUo7ZVySW7GC9qSjaNHBKtZP
	1JDtpm53R22majLKhGw3Ntx+uzkxUIZnsyWBu59DFJGH9SckfhyZwu4cVU/nmqbnSQIRNW
	sR3yL90XqTtoQpO3wafIaMrD46r2vLNxOORjsZi6N7PmTmtN0ODr/5RGIGvWTw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id D124874D0A5;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 07/11] Documentation: security: document the barebox update attack surface
Date: Mon, 28 Sep 2026 13:27:02 +0200
Message-ID: <20260928112731.1271094-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_042817_416074_1CC086E0 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Any checks that
   generic barebox code currently does at update time are meant to reduce the
    likelihood of bricking a board and not as a security measure. Spell that
   out. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Queue-Id: B45DF200044
X-Stat-Signature: cmq1dwgkrhjx9e3siwd1m9hqb1nim7fe

From: Ahmad Fatoum <a.fatoum@barebox.org>

Any checks that generic barebox code currently does at update time are
meant to reduce the likelihood of bricking a board and not as a security
measure. Spell that out.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index a618c05b1102..b204e6df8d23 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -56,6 +56,17 @@ fusing for both HABv4 and AHAB.
    touch the subset of fuses relevant to most users. It's up to the integrators
    to fuse away unneeded functionality like USB recovery or JTAG as needed.
 
+Any verified boot setup that doesn't ensure that barebox was correctly signed
+before execution is thus fundamentally flawed. A corollary to this is that
+it's not enough to restrict the ways that barebox can be updated: An attacker
+can often overwrite barebox without its knowledge, via physical access or
+after having booted into the OS. barebox's signature being validated by the
+previous boot stage is thus paramount.
+
+Specifically, the checks :ref:`barebox update <update>` performs on an image,
+e.g. that it targets the right board, exist to reduce the risk of bricking
+the board and can be skipped with ``-f``. They are not a security measure.
+
 Ensuring the barebox devicetree is verified
 -------------------------------------------
 
-- 
2.47.3



