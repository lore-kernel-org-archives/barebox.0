Delivery-date: Mon, 28 Sep 2026 13:29:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Y2-007GvP-12
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:29:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BB82A201F0F
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:29:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KB93LyXn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FFkn8Xje;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594970;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/4Q+ZCsvtQyA+IY9zNhZzZg6mlk5oB9T1ZpwotFzD/s=;
	b=G9UFMhascxbGMJ6efrYHiCPm4CI2FWXquu2b9yHYBhKQqyB768XnzlxiQGaRGZLKfBQ6Ow
	On/9wn6cV5qc2AbCbOfHgTBtEcmC1oNloVlIVcMTPJqdaVftnyFOsUaMd4N4Nij/h/75vV
	/5zykLFJenIIvrwCAr9rfxlyQ46g51qx7/jFZ5yZuqDJKZV/1wN4+9yLuPo/8NQVn2Zsa2
	tIT7dXPXjs/tbM/E5bodBypQ5usYfI0aCCLj2AmJ0j0E75d6/UJoa1Sdy5s5L33ujGzIRl
	CrTGu8vH5DrnTJ4IClBTZzMpfg80DK8U9tM7g9WU55ZJq5ooMNWSwHvyORv0sg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594970; a=rsa-sha256;
	cv=pass;
	b=eqL0mW/oMsYXahLKSeDb5TmKGUxsxZDM1KpYxbxtO7vLlWTsXK6PuY8sNKtXN1tUGm+N1H
	+wZEuihF3HwYHDs9cx7o7swYHeXhWf1pYqttobvfyUS+90CRGYIwY/CPHs+IjyXJS9Mdee
	qL4NgdD9u2Yef59kOOV4AHcsoGVGYuXTCUfiUpUgdL4Ox/8oEWamoQQoYeqEvJ/7796JW0
	C7ECkpic0BYZhy1o/od2NDXXzJqFeKCUkqVMVm6Y4s4S8/J6jOg00cUJn1saHMGKJC+qvg
	dSKsvZRmluGPNoeCFdhDB8PKXf9RfxQiG0tJAk5v8sGvPKtXZaTs15jbzz2VbA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KB93LyXn;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FFkn8Xje;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/4Q+ZCsvtQyA+IY9zNhZzZg6mlk5oB9T1ZpwotFzD/s=; b=KB93LyXnR43yWul+Kw8oqa/xFs
	dJM8fP6uK8hO4g9/2yLrBfHoGAVR0bSCmQIkKpGkY2nnt/RtkU0CFJINEx3ENpyu+z5H3TAJ7Izy6
	dKHNLDDfm325EARV6PwhzXU58Lsz/EK9fCmBnfhNGWfqgvWM33gKqwPDYDb3HDnMzWG1VLmDgMitM
	AP4MhA6chz3y4qD2zn/VjQaABDMhHXbGqNJFb74Ixt64L2bxOPbV8h/5AiMrhZ9kayMPznGh/E+ce
	U4ucf0LsTlPzclyu9qEE6qqMQPKXWqlH7IhuA6TYUA3+7zGaD0VmEdRFeJo/FHBOTMenk4sf1GiEh
	GvyLF68A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wu-00000000S3Q-0rsO;
	Mon, 28 Sep 2026 11:28:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wq-00000000S0U-3LUw
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:18 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E199B201F0F;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4Q+ZCsvtQyA+IY9zNhZzZg6mlk5oB9T1ZpwotFzD/s=;
	b=FFkn8Xjeq4JnzdihuV60kuxaJqHcxke5BsyraneZlCAqJhMe4LQMhy1RyL4gOSz2fR4Q3f
	jltcdtqV09eHDw698//868pS4NoGOKYG8dPnTKC+lq5JYZoOyUtcPBcaxa687h7h6KNUNI
	j4ufysb2BD1A+oyZ0FJBeW/Y3URXdHmq+78i2MvNVvU0clBW4lui/nSTvnRdjAJBfkc4vd
	6EVrt30q6/YL6+EH4o7e430pHzbMVPCxsZpd96WXDaRfvlCLERQ0RIn0eAMJpXa2NrkTSq
	WDrZy+IifYqm5djXfGYpxaLebaIOJhgeVZrHPTcnz3PsrtCDTzWipSjWXsD8qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/4Q+ZCsvtQyA+IY9zNhZzZg6mlk5oB9T1ZpwotFzD/s=;
	b=Xn3q+ktcUaCfgKqBsDf+9Rx4xk22VFfGwvS5PjzOIFXF7BEHg7WFmiqKEn4mxIzduQSqUA
	7401O6XnTy+34sdpj/xfFjialGWZhFwvXg0P+M+X4V4QnqC09Fpmmnw3rE+eRaND7rqAg+
	FJ1ezIeJd6DxwEVBKBZ6trKIXcibczdflGfql4OZWrTFddkbIhH3IlxGoYq670xQLmHK6Y
	rUEb2arZcSSJdM42KQok23ZU6I/66B8fwEpBMKtNQgjvjnmxytV2GLi0DQ2PtukE6NLkoN
	vl8EAT7BhIBXT6DBCKNac3UPoM5CMpTg0tlCNlfsv9liRnqBLFlaVIF4pGO90Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=F10nZN8TEZlKoWQlvjDYIpj9Hn6sau1Bvo7MDFVf1MN7MyMhbLVqp+neiZN6wI3u3+sKaS
	IFyAAVOBsvxYpgFCxGW1Rumgn85W9nD7hNWSbDXVbQ1IGQ2Tn1DmZrkSFYr3j5bNXIbcZa
	TTEVoa0HEmoCagnsBgonHhf+DFyXB3kkyCtVJ4Qvd15Sr6VJlNVQ7l8scl6vy7cYqUySQj
	18k5lave0myp5bSLA8ESwnA8CeVMzyioWS8zY3006QRgYivRee2Mlpm1LKdTFlqUIwBnm/
	dSo4coWJm41Egf3v5bQodog9RyBWeFAn6VydH1Ok9khz5XQq5nND08iDAQPByQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id C683074D09C;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 06/11] Documentation: security: describe shell and environment as trust boundary
Date: Mon, 28 Sep 2026 13:27:01 +0200
Message-ID: <20260928112731.1271094-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_042816_992323_C8917ED1 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Both sections advise
    disabling the feature without saying why. The shell validates nothing by
   design, so whoever reaches it is as trusted as the boot chain. The environment
    sets the global variables t [...] 
 
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
X-Rspamd-Queue-Id: BB82A201F0F
X-Stat-Signature: fcry3o1sy95xg7f9rgyatcmwut7nkudw

From: Ahmad Fatoum <a.fatoum@barebox.org>

Both sections advise disabling the feature without saying why. The shell
validates nothing by design, so whoever reaches it is as trusted as the
boot chain. The environment sets the global variables that select the
boot source, reach the kernel command line and, unless pinned, decide
whether images are verified at all.

Spell that out and mention SCONFIG_ENVIRONMENT_LOAD next to
CONFIG_ENV_HANDLING, for builds that need environment support but must
not load one from media.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 9a241b0e2e8d..a618c05b1102 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -140,6 +140,12 @@ In addition, there are alternative methods of accessing the shell like
 netconsole, or fastboot. These should preferably be disabled or at least
 not activated by default.
 
+barebox places no restrictions on what the shell does: a command that writes
+a partition, sets a variable or applies a devicetree overlay does exactly
+that. Whoever reaches the shell is as trusted as the boot chain, so any
+remaining way of reaching it is part of the boot chain. A console kept for
+diagnostics should be output-only.
+
 Disabling the non-builtin environment
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -156,6 +162,18 @@ This can be enforced by disabling ``CONFIG_ENV_HANDLING``.
 This does not preclude the use of :ref:`Bootchooser` as the
 :ref:`barebox-state framework <state_framework>` can be used independently.
 
+If environment handling is needed for other purposes, denying
+``SCONFIG_ENVIRONMENT_LOAD`` in the
+:ref:`security policy <use_security-policies>` keeps barebox from loading an
+environment from media.
+
+What matters is not the environment itself, but the global variables it sets.
+They select the boot source, end up on the kernel command line and, unless
+signature checking is pinned, decide whether images are verified at all. Any
+way to arbitrarily set global variables, be it a writable environment,
+a script on media or a shell, defeats verified boot regardless of how well
+the images are signed.
+
 Avoiding use of file systems
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.47.3



