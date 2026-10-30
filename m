Delivery-date: Fri, 30 Oct 2026 08:35:54 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMh9V-0053wE-3A
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 08:35:54 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB127202964
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 08:35:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uOxWlfiQ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=FtbQByCg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345754;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bvqirEZS1tYA7Xpu3gBD4RCbt9f8JF/Wj0eOIXFGC0k=;
	b=AhDVHJdjEBDaseEdkwo7OsyOmlAhR3DOe+griisQsb37d7v0T6lF2M3zpd858KW70b0wCt
	D0hWLnqveFCirkvvsmpIUgtzv7BtLOvteJ3XThbEGd4FD7b2Wq1rL491Hgr6D8mrSwKJqM
	EEa455GP//2zE2OG89uRM1ZunL8CZsT6LtbHfzFwXHnmqfSGernNeh8XzFvy7+gCZAxfP3
	D1Aeip7jd66qVAyzRFl4/gPXCZvsPTLJyhIU33+g/M0DEuHGuXz628tFFct3WWhZdpLI79
	fkJ3XHpfmS4K6si6/4B4DhzEd607z6H+q6h4Kj1BbEAhlD0mMBbAwIfSb04XbQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=uOxWlfiQ;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=FtbQByCg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793345754; a=rsa-sha256;
	cv=fail;
	b=ZJG/WJzO1/hpLvXVVISabTGsviMp3jqtMSuYuS1a3iSu27mPrRch8dRNwQVmfo1OzRWRFb
	bEUsbm9IjNZrgunBJ2q0w3WahMa4OjYV5OA2rNr3RH0OMhOTUhgBgefp0bvYJgACYBXOCg
	Z/JFOqq+1VedNYmKk4qTvK25XFkIMd6LIMW2wKLI9SxMMka9Dbqz840jnTiCNSIgqg4rCG
	J4tLJD3kSQT2anPoX1J6zm+E5tEbxPsSnvSpd3O7UX6J3h4x9dnoHhN6y3dNiTN60C2vuv
	ONJnEzhWVCbKnKOYyuXyks21CEC7mnSqGQkihjxgOfYRY4Y7eLGxofY03PsdRQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=bvqirEZS1tYA7Xpu3gBD4RCbt9f8JF/Wj0eOIXFGC0k=; b=uOxWlfiQU3qvSe
	USBT0Ql82MCzNTBdvAxrUYLZnuclsFYUZOyWfPlJAsGlg9qIbGImWYxv0LHELZEpPRQCWu8WUTz5J
	E7Aj2smd+b8y2DbCVXOTeNAnflxGYZyrQmJTunSMNyuZHzhrK2rUkRdD1WnN+GcTRH6oN4WJlIOcS
	qLt6CG3+JBg+kLXwqtBH0gk/FSlitARFXhZJOxxxGJinjmH+k32/+HcKUe4x7mxTeTJiy1SHuPbn5
	olkgSmwvu2vBtLbFiHY84TV1WoLSHiVcB8dv4u9WaeGenMpqlDlBTlETHkSnEDUulqrtQFe3bbHw8
	BZoAlT3MaxbMwyFxPnNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8T-0000000Azyh-42FE;
	Fri, 30 Oct 2026 07:34:49 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMh8O-0000000Azwt-1oQN
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 07:34:46 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2048D202961;
	Fri, 30 Oct 2026 08:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bvqirEZS1tYA7Xpu3gBD4RCbt9f8JF/Wj0eOIXFGC0k=;
	b=FtbQByCgudsFoHfNVN9V75IoZrAB1LF1AXUMbE6yK/J/X4pDhLEcC3pVzmVG5SwlTUpStt
	SftKNH77WLXfEGKarVahQSFXYP+F5oxe7Ck874TdQXioOjWRY3aBAvP2S1gkm1e/2sjRYw
	6jmOFzpM1NNdgdvEhBPyb4giQy8CwDBf1DuETYJqa66cCEWZHFqL2elKyvBTInyF7BuS7x
	u/mnWRncre+bS3hd4OOnj8jTt5gn0Ij91mBrn/MeBhSrYAMd+QE5roEsx9jxYkLQGYZrdm
	5wyj3gyIJErLGfEJ3AyuFGhp0JWGonDa1wHrLXgONEpTO8mXaUQvpic6U63YuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793345682;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bvqirEZS1tYA7Xpu3gBD4RCbt9f8JF/Wj0eOIXFGC0k=;
	b=Sfm2I+2Gz7vtR2kjNoCaE/1v8tw8MCtGl6MqtoMMrn7Tsf0AcF7EztScgpMYsIEY4mhw5F
	8rM7ivp7laW5zLQiTMEhXrXWU22mwRfrIkQbaUOSycEXhxU9ut+RLp7k0F4YWLYzLvNKC9
	7CywIRJRl8BDJZ0f9Fn6RmuFvBEIJcx5AnVD46cv43Mx4YkONfKe8NX52VLvHTaR4yxD6B
	EqLbhaunIQvZ0JSTKh1U6I1KkPJ5MMNT0B1Umj2kdKmqlJrQdwR+S7GCWImSwAiQ+TpecH
	PN1DclGl6hc5Mcq2he60w3h5DAcbDB5PZx7/D4A02hB/YK3Q/AbfXos2rMcefw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793345682; a=rsa-sha256;
	cv=none;
	b=GKx1Ww5HtyzKrmX7oysuc9oHT/itAX3cJ8Dgg1Mzysk7m0x0m09ohEd4DPEsgaFWpGQP97
	CDVhs+/gFCoAwUklm5sJJPorSEUyzp91aeLpmRyb0lHy9InJ/w2LMRfp/FQBlcYOW4KeCO
	olItFaZb4IQMalq1jcH9ljK4OIR+vMGaBfWzCYRX2eNKLvsnbepsMNLxB3vU53lJ+lWiZm
	q7w48tRbsP5YMqFZ/q8tyt+kWI5sw/0SYxFUT8hm6IMf4Nihz/DnMe6biDfTHpVd31CyYf
	I7jiaI7mnD7tBAx/+J/wJzjS8fUGXD/HaRifGecd/Az8srCwiQrR4EtksE6VXQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 08:34:42 +0100
Subject: [PATCH 2/4] bootargs: fix double free in linux_bootargs_get()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-mem-fixes-v1-2-6d64824356eb@pengutronix.de>
References: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
In-Reply-To: <20261030-boot-mem-fixes-v1-0-6d64824356eb@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793345682; l=1204;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1Aq80et5AeXZ7rkes9+ZPCHAt+lE3SmEPA1MWGl+R3E=;
 b=c50LYIOJtNPBYsThDE+rymRAgCtb/0V51CcXTMicfBO6Cpzom4mr5xdiQV6YBZmb0nQBMN46G
 9Yk7GUANgiiCrTUUq/Nn50ztBog2FY5Z8AYpWjIMMhYzaKDbdduSriR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_003444_631411_87BCBF04 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_get() frees the previously generated bootargs
    before building them again. When no global.linux.bootargs.* variables exist,
    it returns the legacy bootargs environment variable instead, w [...] 
 
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
X-Stat-Signature: kuipb4p5f71asobxsok7rpeofq4ttmwg
X-Rspamd-Queue-Id: DB127202964

linux_bootargs_get() frees the previously generated bootargs before
building them again. When no global.linux.bootargs.* variables exist,
it returns the legacy bootargs environment variable instead, without
resetting linux_bootargs. The next call then frees the same pointer a
second time.

This is easily triggered by fixing up the device tree a couple of
times, e.g. on sandbox:

  global linux.bootargs.base=console=x; of_dump -F /chosen
  global -r linux.bootargs.base; of_dump -F /chosen
  of_dump -F /chosen

Fix this by setting linux_bootargs to NULL after freeing it.

Fixes: ee4cab9e5874 ("booting: more flexible Linux bootargs generation")
Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootargs.c b/common/bootargs.c
index 36528b8b58..6373d9ccb1 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -32,6 +32,7 @@ const char *linux_bootargs_get(void)
 		return linux_bootargs;
 
 	free(linux_bootargs);
+	linux_bootargs = NULL;
 
 	bootargs = globalvar_get_match("linux.bootargs.", " ");
 	if (!strlen(bootargs)) {

-- 
2.47.3



