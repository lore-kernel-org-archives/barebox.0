Delivery-date: Fri, 30 Oct 2026 11:55:19 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGU-0057IA-28
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 86D92202962
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="nFeLuI/s";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Vw/+VbYK";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357718;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=T2DO4hWspbIcc32t+PiSlLERSMz1G8nT+7ErvEEIJcY=;
	b=U5Ai1aVL1iFUsKLxBwflWUgC1vgN7vOFS/uocC2gXu/TwMKetQcE4c9CMcjSkTUY9t3CVT
	OKg+T0wPQurHWEKAHWzfUZNXWIUG/cPcTPmz+Lh0jvO/miXSxG/F3c4NVQHqp3tnjgjX9m
	Tt5azepH3mVaCntWg989oGddcoaS8vrKZXsBl62ojZT41Wisr1Hi+fWSREH6Ait3vkQkZ8
	wRrbHn6XnwKgUrWy/Zv5Cr9M7volozkzdGpwQIGlHw2/6HodU0ml5MIPbFpPtPGN3DTWjl
	ZbalcJU5OOwKt1YekA4bON86MN5j+A5wClQtw2Afn/LzRZSLsjHpLjEQ4i4pJw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="nFeLuI/s";
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b="Vw/+VbYK";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357718; a=rsa-sha256;
	cv=fail;
	b=PHYPKJNoDf8j/PRRxyPVksIUjwfH3Lcnus9P+rt7wM7Jwn1rENrvxZhplwUFNi53YrVsyR
	4AxTCXwWj+bwng8Jeo5xN9TuGLJ6jqxSWdF/7acsr7pwluoVAS7i4VLJXHST33TcdsDh9N
	fq179OPYmz+qex+qAXUslkT/E15K+AFNYN4xruB9JSpbo5gQMaf2xk+/1GluBL4RzVJ7eT
	6QyySZbF6h0KcYo6J+42RyMGOXkyudjgumpHIgpyr4kcLApHVuia57BEXGdM+E6PLzGRXj
	ptdDReAzaKcrDteREZwhBKDcOS6Nk9FBn544yM8FQf2kBoKsPgkl1sSmP8YK2g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=T2DO4hWspbIcc32t+PiSlLERSMz1G8nT+7ErvEEIJcY=; b=nFeLuI/shfGFSC
	of/cYLJwFA7NHsuZbJp4B9D71TVzpHr+XRAl5mbRMFrqOJyRbxLazGwfKIyygXI7y/JaaqYPdfvLY
	OTzk6/csqqBDT+CzAZvPQtMyT3hIKh2EC7vPyeU2Qr6hbnSSJGoY37GxIb+Etijt/NRfTWeNX4ai1
	cZ6sghz7fIsO768n+uf1vKuEPYzMkhyQadlh2TSazoHBqHDZ5wMYa3km01v7L5GAY/iB1fzs1SLPu
	cSggUkluMl6UAbiDdxBR71MgLwBL2qCQt+YHcaR7lUDfs7AKnRRHSdmazplMz8yBpkt6xPWqpSNhQ
	t4s4X4EPFRv1v9hA5KFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFO-0000000BSqs-1gcI;
	Fri, 30 Oct 2026 10:54:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFK-0000000BSmk-1fxa
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:07 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DB0DF20296B;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T2DO4hWspbIcc32t+PiSlLERSMz1G8nT+7ErvEEIJcY=;
	b=Vw/+VbYKTG0VlWXxOFW92G09iQGvujF6xvh03Cv6z6jk/bVrJ+UwsAXlr9qUVkn1DhLu0k
	YA9UoKOuqohSWN7PbWwBqHaUfwmiI90K+qkw/YSBWKaHU6WFVTeAW6iX5ULT/gaWqXQErG
	DeaF6TnLl4ifCNaRGIPIWi9DEMPhON/cAJ43/5+cF1DNwMUx3O150EehXr8uOzzKWcC93S
	m3DNQo+eQFtVzdTvFn+CtljdeIw+Jczr90of1GlFQHTxxRnSfUfhmIiiy2SFrKNrdIDpn0
	5mPpLyYyA1GPsqNKMeOibbi1DQZEUO78AdPv2AXg/ns6Kd13eoqjEJ7lKji86g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T2DO4hWspbIcc32t+PiSlLERSMz1G8nT+7ErvEEIJcY=;
	b=betdUVss+POTVY0rC8C1v2hKWGlvPZTqJ3XQynVyTsyiMTUzFBTbOzr1xzdXgB1656YULT
	CFYIlcGuhVK6PVq2qp9a0afLTTKEvlBfwgubTkDyQIP2A4SCQ0tCDH0WDsK5C/UV3n0zYR
	Eud+dY4omtqYhaLO+siaqmmfgTUae6MkB1+FU94Hwr8ImCK1PNKotQanLtoAVh4DDu8Rig
	IMZ0MGQSXA04ARMb8X95z17L5bNLS67i8pI5iFi0JyGVrxO55cEqqsvphsuwVQ+e2GPCme
	tCUZh1aWHjEdUW5MsHNwfRNL5UtTNODxILAtRr13hgag1f1vbMLPWQxVzXKh8w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=LoloIjCSr9C3ipXAj84R2jcF29u3p2K2NhorReO9GgwOqf0finru+fmYHW/rWfyQ9DqRjM
	qcq3DAsNUfZuvHAAc9AkTIQIfNfMgc/O1/y2cRt6FRKKP4TpxupGPFCY7QEmUZHSBFJeNy
	2xRhAeTz4rtZrS/qnITSGYG4BhaUzpioX+naXwXnjDkqGF1y5TyTcsLIyI7R5HdjpLz0Q+
	7yXRSAK/1khODAR5Co965dHZjs3K8IypxNNGkk7ed6PkIo9nM9kBEnLOuxmNe2uA2Il8DS
	Tvh3hLfovCmVkKXriijRMs97cfJwd9V7YjzqG4+X969rPFqL8T7ASWJQRcnKHQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:54:04 +0100
Subject: [PATCH 06/10] bootargs: remove unused linux_bootargs_overwrite()
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-6-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=2219;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=UiMQwnek/MfHvMLh/7B6TfixXxl4PStXp+9zhQ2OErQ=;
 b=jIYrJemP3Jt9D6CcQBkDSUGM0dLM1dRS/igGssdPo1zJt89Kz/idzTQI8L8namyM5GyED08Jr
 /QDECJO/jWMCW9PYAvasynwzktSnP0UGUTaZNonJW9mTpItt16EyMK2
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035406_604929_BA418594 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  linux_bootargs_overwrite() lost its last user with commit
   fe1e02cc68cd ("bootm: add generic android image handler"), which replaced
   the old ARM32 specific Android image handler calling it. Remove it t [...]
    
 
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
X-Stat-Signature: wdp197jywykyspskbu4nngkx1rpdjw61
X-Rspamd-Queue-Id: 86D92202962

linux_bootargs_overwrite() lost its last user with commit fe1e02cc68cd
("bootm: add generic android image handler"), which replaced the
old ARM32 specific Android image handler calling it. Remove it together
with the linux_bootargs_overwritten state it maintained.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootargs.c  | 17 -----------------
 include/bootargs.h |  5 -----
 2 files changed, 22 deletions(-)

diff --git a/common/bootargs.c b/common/bootargs.c
index 6373d9ccb1..06623bb60b 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -12,7 +12,6 @@
 #include <environment.h>
 
 static char *linux_bootargs;
-static int linux_bootargs_overwritten;
 
 /*
  * This returns the Linux bootargs
@@ -28,9 +27,6 @@ const char *linux_bootargs_get(void)
 {
 	char *bootargs, *parts;
 
-	if (linux_bootargs_overwritten)
-		return linux_bootargs;
-
 	free(linux_bootargs);
 	linux_bootargs = NULL;
 
@@ -65,19 +61,6 @@ const char *linux_bootargs_get(void)
 	return linux_bootargs;
 }
 
-int linux_bootargs_overwrite(const char *bootargs)
-{
-	if (bootargs) {
-		free(linux_bootargs);
-		linux_bootargs = xstrdup(bootargs);
-		linux_bootargs_overwritten = 1;
-	} else {
-		linux_bootargs_overwritten = 0;
-	}
-
-	return 0;
-}
-
 char *linux_bootargs_append_rootwait(char *rootarg_old)
 {
 	char *rootarg = xasprintf("%s rootwait=%d",
diff --git a/include/bootargs.h b/include/bootargs.h
index 4a51e81173..93ec621ad1 100644
--- a/include/bootargs.h
+++ b/include/bootargs.h
@@ -8,7 +8,6 @@ extern int linux_rootwait_secs;
 
 #ifdef CONFIG_FLEXIBLE_BOOTARGS
 const char *linux_bootargs_get(void);
-int linux_bootargs_overwrite(const char *bootargs);
 char *linux_bootargs_append_rootwait(char *rootarg_old);
 #else
 static inline const char *linux_bootargs_get(void)
@@ -16,10 +15,6 @@ static inline const char *linux_bootargs_get(void)
 	return getenv("bootargs");
 }
 
-static inline int linux_bootargs_overwrite(const char *bootargs)
-{
-	return setenv("bootargs", bootargs);
-}
 static inline char *linux_bootargs_append_rootwait(char *rootarg)
 {
 	return rootarg;

-- 
2.47.3



