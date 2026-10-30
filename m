Delivery-date: Fri, 30 Oct 2026 11:59:01 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkK5-0057Me-0M
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:59:01 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CA54520296E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:59:00 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jA7Y+IyE;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=GK1PLBu4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357941;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=jokWESmI3Q0IvlXvb2RMkiJ6Jp3UdzIgRNEchs0WCzg=;
	b=NXXP93GmKQ+rMNngbQguukaLpKZu6vsJyZFkfMN98wFOPw7go+0uT2MVHNsUmxKv4+MSFc
	eMk3kov5rJy6Bv2Cl0oZuEgK/bQtDvMkg1Qzfu7X4iG7RXRd/DOLBZJX0mYufKzlJiZsjs
	X1jcj554uwz95lRTkH/Jmsnu4z+SUs1Kdj25VrcjAxjCP+UYFMuPZHSSb1kRDA52GzxDRI
	QA+LFyh4HzarQf40Ul/7iky8nKWsoqyHvvd6BjPc9XSjlbEplQJmFAPXxFfoLZ+vBsW6CE
	m70+Rurr8K769hj6irxqbfiy4Lk+qHcKYaZh4Ja3oo53hon5GRN9zBLa9rS/2A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jA7Y+IyE;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=GK1PLBu4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357941; a=rsa-sha256;
	cv=fail;
	b=FxnBs90CopG1OwSnhL9C8lhmGbp/aDmikmSlB2kpGJsPzN/KVNALmexN+xnGeNX9gG+Pw4
	3hem0qhSfOYINMBDPSfq6mIUrqWnXbxUBFYEoPI0/k0FptGHeNfn1XyIOcSXll/bg2lk0N
	xW4ziH7v8aiAlb/tBRVQuku/wZ5+ckH4fJaAtqCrTPueIXJdRJurA/HmFOZBQy6vRb5I7D
	Msgsy/MeNtEqL9QR2ansZddzkc0wt0M2RpbJ+Cm7SFH7pucepImO29h0o6R4x18j+f73Ei
	wK693xi6rPAGrTwZFyb5GyDX8gqkGKC3SNXygcNGytBWzjWSoInJit1BxAUP5w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=jokWESmI3Q0IvlXvb2RMkiJ6Jp3UdzIgRNEchs0WCzg=; b=jA7Y+IyE2Qo6rw
	NFayxzvFvgKarVx2AV+JPIRBUdedRvKrtxRq4S5STNjYGIOOartqW+1CSpWKnYSkVknpCH+YORezA
	E5sGW/8wKVYB02CqDUhf7J41QYI21MHzyotMiZMnyVfzJkw7kJVN7aX/BgcGFXVupdA/aEBAtMhET
	m+zMHUpW5TcL9UjUshc65g64NM4rwcTfqJ3eVWxlW6v++HlVcR/FhVMqRK5MGzRR1YsXzoSlTiq75
	ITrGBX6mVsFV4sQc1xKgSmaqtab/bcg1y+A5aVNbG4x9TC4GE+VIdfp07cQHV8/WTCb1V7wLwQxjD
	JWNk9Kr6QTpGNSED3rYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFJ-0000000BSmt-48x2;
	Fri, 30 Oct 2026 10:54:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFH-0000000BSlH-1xdn
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:04 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C0AFE200AD1;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jokWESmI3Q0IvlXvb2RMkiJ6Jp3UdzIgRNEchs0WCzg=;
	b=GK1PLBu4S7xsIihiZwEbFPnkpkcdCi+W4xl2bmHBBPjidVaT1TyOV30jRK1/I3Yb5ETJZr
	6Tr3A1Q03yvVb+tOydvCyA49+8VL4ut5d03KM+akaTGMZq57VLZEP/sDkAsG/Ycv/TDqWz
	2htGcb8hcrolg8tBsjkqEnSdw5tIxWMyw7Tpy0AY1bi2Yp2FrigQE6sczDP9BcLzWxfspO
	PwTPLmdGZSeOsZV4dpBH2CwdBR2jWY6IzfTQ3+r6Gv6/19T/S7t4nLbV63tldNL+fW9Ztz
	YhpJHn7YkZfKOtOv2eS3mSDqsgPk43JHXvMdWk8zyqCbyxWfvC5u1kxvtj48Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jokWESmI3Q0IvlXvb2RMkiJ6Jp3UdzIgRNEchs0WCzg=;
	b=TmmY1AU1/NCx0RqtIyUJst7w5afHCMoghhzqjZrdhxhIeIHrCfAApvOSP1E0+9zkEsmTK7
	82ErE7vqyOqKlymsW+Bov7dMiLmtYhQGCHA/rD0DqHMKxNea0OPMCaJqAVntAhgB+3mJCC
	XtJd9tFXqvmPjkxCkCUlUZ1dD1dxE/cb8pVREbgzRLzW1Ea0KTQqBZW6g2MXhPkDOhaFRc
	hdVsSAUWufrj6A24oEJvnE7FgIouRaanB9QKnIwcedIMVsLh3kqSw0nU3qWjFHI/1HXJP/
	eJoGgHERcBX1VTcC2UsgaLNn+trkN+doV8WNA5vmt+1m9MkDN3jSmxguVznULw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=VxFKcl0NWBpitt2gFIDH1eQfogy8Y4vgeTmaHlvrgOp9EfLD//+/0qgRXZSpR1dmBDMb3u
	YGG2b1XsbJRhQBHmOuFwmKOZKyrCT1ag5UxnDB7aRpiN31sMcVJk2N8AdyOapk75Wc01Z7
	AVkcSyGuExGVNzqvKGsUFuz5JA1/DZTjcodO4adTC2vOd5KMYuUOViDdSOilOAMtFrY7gG
	o5DbVXKIY0OHUXcP7ihCGzdYigbY58iXTxLA5miD6Zd3IeFfwUDk8c2AOtf5Mx+ea1aOO/
	XXdKD4DfdE0t0phHk2lPEYZmEKsV7fyF02JbF2MFadGmFvRYwnjSbr25V91aVw==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:02 +0100
Subject: [PATCH 04/10] bootchooser: use a globalvar scope for its bootargs
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-4-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=1775;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IC9+3GqUwYjm5aWCsh1gP9IPqU77kk5A4jLT88kOPWk=;
 b=iSLv7hH48XxofFdV+99k1JcrVMtvoxP/7vmpGZJZDiRhpbb84NYiNJm5vjIfTQDvaUE1gM3lm
 HRAlaIuIHUqAD/piMng45K4uFx3W+E1SH/o7EUMFCqiJAKYJWOqIGEh
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035403_672388_D7A8739F 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bootchooser passes the active target to the Kernel in global.linux.bootargs.bootchooser
    and sets it to an empty value again after booting failed. The variable is
    never removed though, so it stays arou [...] 
 
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
	BAYES_HAM(-3.00)[100.00%];
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
X-Stat-Signature: qewo1t4sweaywuk9b8m47ssmcxuiup4j
X-Rspamd-Queue-Id: CA54520296E

bootchooser passes the active target to the Kernel in
global.linux.bootargs.bootchooser and sets it to an empty value again
after booting failed. The variable is never removed though, so it stays
around with an empty value after the first boot attempt.

Use a globalvar scope instead, which removes the variable again and
also reverts any other boot related globalvars changed while booting
the target.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootchooser.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index 2a75dfdcc8..2049425ab3 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt)	"bootchooser: " fmt
 
 #include <bootchooser.h>
+#include <boot.h>
 #include <environment.h>
 #include <globalvar.h>
 #include <magicvar.h>
@@ -846,6 +847,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 	struct bootentries *entries;
 	struct bootentry *entry;
 	struct bootchooser_target *target;
+	struct globalvar_scope *scope = NULL;
 	int ret = 0;
 
 	entries = bootentries_alloc();
@@ -857,6 +859,8 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 		goto out;
 	}
 
+	scope = boot_globalvar_scope_push();
+
 	system = basprintf("bootchooser.active=%s", target->name);
 	globalvar_add_simple("linux.bootargs.bootchooser", system);
 	free(system);
@@ -887,7 +891,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain,
 
 	*tryagain = 1;
 out:
-	globalvar_set_match("linux.bootargs.bootchooser", NULL);
+	globalvar_scope_pop(scope);
 
 	bootentries_free(entries);
 

-- 
2.47.3



