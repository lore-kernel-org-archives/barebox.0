Delivery-date: Fri, 30 Oct 2026 08:36:00 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMh9b-0053xs-2B
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:36:00 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 92C30202964
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:35:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2MsTuT7b;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BptSdre4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345759;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=CwuscmERlXDqVEHHncnjRyhmCtZQTsY7lz3CsU/y/TQ=;
	b=g4/h/M+F4+1ePHeUfGlVrAbh5lp8Zn/TU9T4vepRO7UBXZtI+AhnIbp2jDLY567HnGKmvl
	qaj54usKWsfIf/H7v3DcRUfi22cvXFuvmQOhT0IBl1jN8ot/+ca71e+mWybP9LqhViDIW1
	GrY2ORZ1h518uIL2P7n7KV+8o6jRMHNlMba3tcxX1ffal6Nw0jiwM4J2QV3YA7xP1mkn4Z
	6FE2KNP5pvvnbYfkAtAO+07PcmNZpbLkaLTtALSO6fbvkwqxKAgfP8xgAHm0pssyFL3dsA
	8w5boRT6Pa75Maf8T2VdOK/wNdKpa2Ee+sfKhgoo2IONQYLAX0gu0nY2rW4+XA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2MsTuT7b;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=BptSdre4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793345759; a=rsa-sha256;
	cv=fail;
	b=Vs+6e/JOQ0zVfDFhnyci6JTLTDfiintdKZ4JRcky4pzYM9LYo8kACty8l8v+vo2XHcdOc/
	/U+lwrUf56yVJ6sdQ56yQkNljpj8Hw1C9V4PMpqgsTsdCHkSs8wvJ1g1T74RF6/RShF/6e
	wa7s2W7e3OCUkTsQHm2k5dSAgTfK4AefWWrhVCUYY38Ayug8iBPxgyZBf7BjIarVJdbsI/
	sDQVMPxeIw6GuRYt2QFERgZpsS5reYdSD7dh26Rl9r6t0xkjzdUXu14PLGP6Qgo9FaXrpa
	3eY65P80PCaqDc/JRGHfS4ooYJqNyt0yN9Q+yip+tHfhVyRQ9ZZfhxpJ2y4EWA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=CwuscmERlXDqVEHHncnjRyhmCtZQTsY7lz3CsU/y/TQ=; b=2MsTuT7bz8f5WO
	Rf8IVPUYtULy6Ys9VILnzeE8YQDAgCfBrVX2qQiAdtbhOq4m70kwM0tlClAslzd73kxWjSZ3FGOay
	KYGp80dpmcgiBfQ+IfiZBudrSky5F7NqdxmiIhZjwYzJ3n3DGxKn1WZNLn/pqK9vo1iG4dhkhZ7dY
	Mlr8xP3z3EynsDe/Gxd3BtNkGipJQY7tRhIi60Dz5h8x+Lc/OACDpsJdw/1kyJljmVNuxucZKrjAp
	QB30/pdWa41Ncpa1uSl63lTmw8wjZXc0vYF5qXnHQ4Efj8A1vqMVbvZzdBcbMeKVY+zewOUSN8jWf
	1OqIOGAAICyotdW8SJAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8S-0000000AzyU-3zUb;
	Fri, 30 Oct 2026 07:34:48 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8O-0000000Azwv-28Hf
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:34:45 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3A46A202964;
	Fri, 30 Oct 2026 08:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CwuscmERlXDqVEHHncnjRyhmCtZQTsY7lz3CsU/y/TQ=;
	b=BptSdre4pulQxe4aXK8jU+jwFjw6hHbL4hlBX3c345XnvE+M6VojDw71N7CFnaAXrDxCqd
	m+sJOht1U0iQIkH/GmJP5//+1x2Y04sLqsDLNb9Jqt3XKy+FXliv+Yz0CMM53d9yfwMcSM
	szhfI+sGh975k+QGZiMfy8pRrc0ZVlMuyfb3UY1NeaK1ahRmacKWVXfqeIwbv/ki7Y2hzj
	8eZ8qku0pAdFSv0Fu10WNGMqPy82bSWOm8es2TUxlkmZDJfToaeyPl5RI40yq0iovEkc7M
	l226dCUaLd4xEBgTbg+uAFXUnGvQfh9SMkA3mODc1uQPzo9OM5KDXbhfryn9rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CwuscmERlXDqVEHHncnjRyhmCtZQTsY7lz3CsU/y/TQ=;
	b=QgbCRrywxSsJi++O8hV742vks9eDtPebV5gOv+0WYj5GcVx2D2g4p5HQI2BDjjLSrDhiCN
	Y/279wUzxLDIT4UFz9l7wzEu28+8eci78r5W3kW1gOStEOyUsOeJV0/uZY6bABmhXg2jvK
	07Bqy8XZ1wWxlFhBJQdlX16HMHTYWP72Lo2H23WckgWDdO2PT8Mxe5ZzZraSFRkeUvaj35
	2BXAhVvIpcStgV3KjKWqZfA/+MCGRxBwqxFH6YwNRd2e9zWbOuCTHKKd3UOT2WG3pUfN+a
	nq/2dZgn4KXTbR8Hpz88Zkdgt1/IBic/TXLYlQJqH12A4SwTdDZMvAX8aAkucg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793345682; a=rsa-sha256;
	cv=none;
	b=abgRMpyIzaMfJ+dRG4KY0xrXyLCmBJ8xLEsGZkXTGTcpx3U6mCUUBQRHIrPV6SXYCeBZyK
	KqS7LftVGM7+uyOTOwbA5bwjXqFyyOT8rHNtkO+OC2vEopgGjCb9+gHDHBZFLlUvAPlP6D
	yMlDlJoNK/PR3NfwQYM++XIgScxXNWd7h1kxYPeI0E1khLXw98ioQe0smI236RjpRxFiwZ
	AiKzuY7P/kjZK0D3W8GUaYbzIvk51vwn1DgyPLJu5DWGA0ACHgggosh1UJM26okVeYsjBg
	pmtvwDbGWLKUB8EK6SmDuTn/Odm9fQHqn8GoEuEgW49jkTj1brIPCZDJ+LIMNw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:34:44 +0100
Subject: [PATCH 4/4] commands: boot: list bootm.image in the -o help text
 again
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-mem-fixes-v1-4-6d64824356eb@pengutronix.de>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
In-Reply-To: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793345682; l=1353;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CXRmzcKCHyadCO1LWXlj9dtA+RpW96biKYkl2DjZ1Kg=;
 b=LvDIaErnz+EfjrS0MGgmh78bZEJb7eJ1P2qtQsA8gOJatfPYJe9e0FAOCGphezT+XNNhxqX43
 qPT/7ApsKh6DQTZ/hHcY9fJatC6l7I1/S8O4gPfMMObgR7KL+dBhUU3
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003444_711289_C24AC74D 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Commit 2d6aaf0100f0 ("bootm: remove ability for late override
    of bootm.image") dropped bootm.image from the help text when the image override
    was removed. Commit a9f6911e9eb1 ("bootm: implement plain [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Stat-Signature: pc5gk9g7matbrxq61g86n7w4gpeks9wf
X-Rspamd-Queue-Id: 92C30202964

Commit 2d6aaf0100f0 ("bootm: remove ability for late override of
bootm.image") dropped bootm.image from the help text when the image
override was removed. Commit a9f6911e9eb1 ("bootm: implement plain and
FIT bootm.image override") brought the override back but left the help
text alone. Add bootm.image again.

Fixes: a9f6911e9eb1 ("bootm: implement plain and FIT bootm.image override")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/boot.c b/commands/boot.c
index b436afa91d..81f392075d 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -263,7 +263,7 @@ BAREBOX_CMD_HELP_OPT ("-m","Show a menu with boot options")
 BAREBOX_CMD_HELP_OPT ("-M DEFAULT","Show a menu with boot options with entry DEFAULT preselected")
 BAREBOX_CMD_HELP_OPT ("-w SECS","Start watchdog with timeout SECS before booting")
 #ifdef CONFIG_BOOT_OVERRIDE
-BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{oftree,initrd}) with VAL")
+BAREBOX_CMD_HELP_OPT ("-o VAR[=VAL]","override VAR (bootm.{image,oftree,initrd}) with VAL")
 BAREBOX_CMD_HELP_OPT ("            ","if VAL is not specified, the value of VAR is taken")
 #endif
 BAREBOX_CMD_HELP_OPT ("-t SECS","specify timeout in SECS")

-- 
2.47.3



