Delivery-date: Fri, 13 Nov 2026 11:11:23 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRoFf-00ANzl-08
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 11:11:23 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 42A0F20215A
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 11:11:23 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JC6CW1nA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fFzid8Bq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564683;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3Vu71+ey5nRsPO5KIvtan1UoKKacJwOqsDKFV4aH7w4=;
	b=YaKToY15L4VArsU0FpGy4ys7miprCMPLRaST/7wGyvPwkDTRZ5BjfqYJ0vjjBJZbbB1Uak
	eykl+iAc0xiri/aCtxrGF4BYuYHZur39Ovzc+rRDakPmDfK58GkFOf7YqlR2pi0TYmCbQ7
	w+CV4Q0Sy1kppj6tYtaaY9phkzSlvqGk+MP4rbqmFbwFh2z4/XwPXHI1DZ5XtgJ6I6CJJS
	Oxzu/BNdVgk946jSkFt30JhhMtPWu0Cx7RVVe+E0gi97kfWJwqNGyMbSiSgY/eP3Ba0dIU
	OFmt9coltkbEmdIHwn7IMaC0q3cSegzKqD9Xl9nilZLazQ2+GnvbIaZCQZYxtA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794564683; a=rsa-sha256;
	cv=fail;
	b=UompA8m5xHSJ2iYLrHuHfBsuQP9j7kItXuJecJPAVuF74eITJpxEph7wNyglLyb8UKkSHr
	tEsG8t4aTraVBoDmp+U1o/YrsvTJJzB5hZNfVueG8l2WAMmByf2BEPCUt+jnSloyhXQL5I
	2F49jnF4a9Z3/Y8qe04ib3T//RZslfws23R1jaVZm+RePDjv/8Ku8v3W1q6bfugi571R1S
	L1Q3OmrrkrUCTnvB1MiWOPMFkSFhVsmWuktkLhKwuSu1sIXu1Qf5tHFUniSF5Y+8Mn2ayi
	QalbeZeClJiMFatoAFLL1oOVgFnnvNgw/iIlXxIlZ0pWoU24vif6HBKrGS1f0A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JC6CW1nA;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=fFzid8Bq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=3Vu71+ey5nRsPO5KIvtan1UoKKacJwOqsDKFV4aH7w4=; b=JC6CW1nA00o3lNPvmV7156k2Xl
	PlPIXnoK3JjohWiS083nwCm0sQ0F1eTSasySnUVyvIiQsQoQAsLdAN864SMnPvyxXX02amtY8lANs
	8iBHPrtxWbcduHLj1fd8WToKm6U8zNedzLZnWj2nompJKgqtCLpQGi52az6ULSr6ltlHrEtKCozMU
	Xa/f/TDxasGQRTeuDsj6reSLgQZs9NplLtAddsT6KI0WPg7P6RgRtJ6Xb7PyDCQuhCaB5M2WIAMjl
	Hx0T/b/WlbSdlSuecM+4/mQZkPpz+MtUmGzMkAYNtJgldRPpTLpuM8H8yoFB1HApbL1b14dIkMF8h
	uzc/VTYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoDs-0000000CJ5Q-1HFB;
	Fri, 13 Nov 2026 10:09:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoDp-0000000CJ41-3PRr
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 10:09:31 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D45DB2020E7;
	Fri, 13 Nov 2026 11:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3Vu71+ey5nRsPO5KIvtan1UoKKacJwOqsDKFV4aH7w4=;
	b=fFzid8BqpKOdZN1vgBnHZWgMVDjh/nMDKW/eqMcryNl4rPuUaoHLzoQWYYtXmtOM3wX5iY
	10ICNsL7XgPyGPslxm1gTomvxykGYmeAKcRJm/ihh5pcHeiC4myC73vil+9PO5pwKHD0V2
	khWE1amFpmgCMyaZEx5aElXll7V3kiWaM3PCZd55e+v8gleM0YUG3B0R7lP71j5oJ5cXxO
	/Z3rYVp17P48QqY87nz63d+h0ZiK5vNHAMAhlM5BqC3DZzOgw0QUn1KL2E2bZEzlKImYnG
	RGKdAjgB2zEKxYkXM1QWRkx14/9CaKuw+ibyqRU2C+geV3OI+tP3tHG0sg6YdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794564567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3Vu71+ey5nRsPO5KIvtan1UoKKacJwOqsDKFV4aH7w4=;
	b=Ru8wwDEVZyrNt9xVULTok2HA2YyCxBwmsX2+NTFA/kdcEBprNry0MksKnqIe2sPh4i/knh
	LrqZjUi6aKp/ODWWozSjPR4gZE3l2v6K/XbfwhkoNBNOx4dXV2QK3I91K4aL+5ZCk3Ygao
	94GK4TYFPFs/MaBzuPkPm8HHHZelobjPlU1DZz9B940GPcOn3AVlxoVqRziGTGCSE2Uaqv
	JEGKyBJuqwYt2jPZBSW0npwG2Jt3GbdJTCjqHMrjEqE+WAbt+oS5N9WA7gzP2yEBpr6lRn
	9Tac/m4Y+UyC26c2lYDPiioZxsYEavFIlE/LpNb4jApyXD+oHRrGw8mYWpyguQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794564567; a=rsa-sha256;
	cv=none;
	b=Q94wO13e6fx8YTEznGguhzgMvzDjO8sn+ZaG37ZQsGI1cByE5js8tFoSMIZ5/y6K1f5dJA
	UFxrc08Jnj1Z76zYBFja6NspHr4nrnKxQA9kSfu/PLkwyuMH1wxhyGODXrUYbKFg4/YL7P
	Vac35L8ZLkgvVL8NY5BfZSNuZgijTlqXTmbbaC0qFQpLLW3vi21NnFiq54AMARxBj9qhJu
	pfwbQP3w1JNEFcetof69na0j/rso4gDOt87PcaeiEMwBZOFaxPwR6wpCB9CThCl4wDBsWX
	JoWgbFbPIGAxva/shf9l2QhzbXIW8ip2r4JqmUnqZycGw2WI9DlK7yvn6xJhVw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id BD6E6FF8A1;
	Fri, 13 Nov 2026 11:09:27 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] boot: rename BOOTM_OPTIONAL_SIGNED_IMAGES
Date: Fri, 13 Nov 2026 11:09:26 +0100
Message-ID: <20261113100926.1764058-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_020930_001809_D5036C6A 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  BOOTM_OPTIONAL_SIGNED_IMAGES is easily misread as an option
    that adds support for signed images which are then optional. The option doesn't
    add support for anything, it's merely the opposite of BOOTM_ [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
X-Spamd-Result: default: False [-55.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 42A0F20215A
X-Stat-Signature: uw7aip7jk6i5i9o7ryh31sytak5hy853
X-Rspamd-Action: no action

BOOTM_OPTIONAL_SIGNED_IMAGES is easily misread as an option that adds
support for signed images which are then optional. The option doesn't
add support for anything, it's merely the opposite of
BOOTM_FORCE_SIGNED_IMAGES.  Rename it to BOOTM_ALLOW_UNSIGNED_IMAGES to
make that clear.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 2 +-
 common/Sconfig | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 9adecfd2e4..4cac59fa22 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -796,7 +796,7 @@ config BOOTM_FORCE_SIGNED_IMAGES
 	  are refused to boot. Effectively this means only FIT images can be booted
 	  since they are the only supported image type that support signing.
 
-config BOOTM_OPTIONAL_SIGNED_IMAGES
+config BOOTM_ALLOW_UNSIGNED_IMAGES
 	def_bool !BOOTM_FORCE_SIGNED_IMAGES
 	select HAS_INSECURE_DEFAULTS
 	depends on BOOTM
diff --git a/common/Sconfig b/common/Sconfig
index e5bfb63cfc..f7afb9c94a 100644
--- a/common/Sconfig
+++ b/common/Sconfig
@@ -51,7 +51,7 @@ menu "Boot Policy"
 
 config BOOT_UNSIGNED_IMAGES
 	bool "Allow booting unsigned images"
-	depends on $(kconfig-enabled,BOOTM_OPTIONAL_SIGNED_IMAGES)
+	depends on $(kconfig-enabled,BOOTM_ALLOW_UNSIGNED_IMAGES)
 	help
 	  Say y here if you want to allow booting of images with
 	  an invalid signature or no signature at all.
-- 
2.47.3



