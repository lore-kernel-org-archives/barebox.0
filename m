Delivery-date: Wed, 14 Oct 2026 17:11:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xH0dC-00DXYU-0C
	for lore@lore.pengutronix.de;
	Wed, 14 Oct 2026 17:11:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E099F2019D1
	for <lore@pengutronix.de>; Wed, 14 Oct 2026 17:11:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ewz/uj3t";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Acc0sV8z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791990661; a=rsa-sha256;
	cv=pass;
	b=SgACgvWf8gHujRFRJSumXxfvktxG6qzr/jjI5q5EfkvK455cGbgSHEjrSTLUzaH9unupV2
	lPq3DCM9OLr7n7utogXQ6+CEpVu0xQ6NwHNgk7u1trXKt6y4JRDsmfd9vc7O8iZsaGxUI3
	0yY9xjQhQOK/oyxwJKPJUcER5CxOmN8U9VgFW4wIDRWKg/HzRjqFUf0LaJTK/NsvBOjUoD
	0h9+8DW/OLluCdwCmzxG4cfmW+yNirpa1TxNbu+4CiljBSneX2TY9ekS5ajLSDaUH1Im9A
	JxtIDxw/lNsZjqEKaMDQw0aoEKuGTyAEUDT06sp+OgcoN6PDvyjofyIdJoUzAQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="ewz/uj3t";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Acc0sV8z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990661;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RoAfs+oekBGPN4Z/RPq93+lqcEKv76b3/yKwa18bouc=;
	b=NML8EL4N6pPuiXanMuUiSl99I7KbwXgYhdYDIugL9mteHuRHSqdw7JfS5PIiBkIq1vopbv
	g8T8y04iRA/5u1cJfL18CSbtOTbb6uISLJbrLIKcEH38IAhrlm4pyDGsIN4ejsUry0s5VK
	w27pZp87ANw8wFvL1CLgyrHImerrMqHOSM5OlXqJa+qX0LhYxybCPhZH3oC0g5DKBK0vgk
	YHPCZ+AOfa5cWccXzez2uLRzHgKvXzBxM2w0x2sgLhKgKN/xGySsm78dOfX2tjP+y5i0fK
	3hlGPiFsZIK/H2spqBrWQBjJ+ismr0pNpQsF6tCFBZ6MbRLuFFYBcze5gT8g7A==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RoAfs+oekBGPN4Z/RPq93+lqcEKv76b3/yKwa18bouc=; b=ewz/uj3t2r0eOb
	71t4XIXfSzei7csoxCgCeAO7AYqU4G6VKforpmLOvIGhGzv4bU/qOtUCfi461HU7rnnS4XPAp6P3y
	i3dKVWLBYSEgJNPtnr9oZWr+2wo618JXAUrSfB0c2Do3U2unKhkAdpSrM0nD4Rd8wR++P8yJC4z2n
	6epYUCObOPsBU35bgOli0xlvABaqwil+3/N78yYvDVxAaT5PhTng/Amkz4Wrf9mxIfDXMwQHkRyRt
	IYljoe60A3S+wYuz7w7LeShjz50wMqjzvO7qsrXnABUhOD+Vzp/w/jUKgCciw20md2rGKE4sb8Sew
	ZMHEpNjPV/9V4SfjoYCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0br-0000000FoCo-0pIU;
	Wed, 14 Oct 2026 15:09:39 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xH0bn-0000000FoBP-20UC
	for barebox@lists.infradead.org;
	Wed, 14 Oct 2026 15:09:37 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6CD482004FC;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RoAfs+oekBGPN4Z/RPq93+lqcEKv76b3/yKwa18bouc=;
	b=Acc0sV8zfbMSyJn2ZxBEfPuKg1Wz10uJmKlgIZR/ZfyiuLwNnTAAoQ9l2aXe3vgPU4J55f
	Wulcx/JDcFaM3aBAfNEbP6jlE1oUHSbU8gAOhsXPrAOEsh5scTBtPdNWFauFsK3kFa8cEi
	W5hlY44k4cXXkKvh6NdNk3QkHrrdOSdlcJWDqBAXZaRc7EYtg9tOh97lNuPEAzJIqo4D1A
	WNuNqhdt8UfLSi0f9hpg2qA8ono94Qu5E0Hwferm9qaLg1NEC5jsMzm7zmd8ZYv6UNKu+O
	uiv8dJgAPp8Fx+yBYRIq1EctG0/uZPfM+hYcB4f/gzkFqnyHANt3lV7vBMdYzw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791990572; a=rsa-sha256;
	cv=none;
	b=Nh2vHzIsAFJp+UZFd/ji7amPqLa7zU1qAAST6LwgtKeRdLyOzVyAJ/C1VJfMMhQbbaEJCX
	ziFb1cPurgsBCxGQEkyztwsKoV5UjKGG8i0K4KW/i2E753QFpXSyRvHGcUSaaxwxgNurN5
	OwqSgvAebG7+/EW+p0D+E4Gx3IUfBbOV3RYUr+k+6uLyH3BekTkc0Jf9Vieo1uwOXFtbEe
	l1rOX+0pS+/j1MkV0d3cjdnCVOsegQaJVXJ92qqsPXvitVwr9k1ybCqmXHNJ41w7vYGvSv
	XQNDY9G9OI/SBRNQBRLhkgwAcwungV2iPG2Tqsc+EiH0+SGz1dKBYHFy0yekmQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791990572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=RoAfs+oekBGPN4Z/RPq93+lqcEKv76b3/yKwa18bouc=;
	b=MNkAMilZPr0KpbWPXBemb9RJPy2rk4UKWNbbunUlCcEHwPqU24mjSsXwC1X+XWf1rDPJL8
	S9GqHoVDKCwMsLbpVIaH6gpo6f6Hv+GE1LjehfIkG0RwP7k8NcOtC/7U7Kc6hb7NxdqBcP
	kOo/K9sXnvDUsUowUHskQWeUsB/GdAye+7tcI0S9RLV8mUpp4w0aoGWdIcVYcuGaQh8mab
	9vCDi8WHWhVd0IIDPsXTffQSj0MXKQY3DWX74RAIA0xMqpkrpyjWdKp8xKwNcxvS2G7AnH
	ztU8BDaoBee3+NEATDKV7ZVSYUMen7/EFz4CmLfnWLn1iVTPdb+gRApEh+V4Xg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 627D574180E;
	Wed, 14 Oct 2026 17:09:32 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Subject: [PATCH 0/2] of: overlay: of_overlay_fix_path: allow symbols
 without __overlay__
Date: Wed, 14 Oct 2026 17:09:21 +0200
Message-Id: <20261014-fix-overlay-v1-0-cfd44746d985@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACGbz2oC/yXMyw5AMBCF4VeRWWvSukW8ilj0MmVEkBYhjXdXL
 L+cnD+AR0fooUkCODzI0zJHiDQBPci5R0YmGjKeVYKLglk62XKgm+TFVJlbZaytjdEQH6vDOH+
 1tvvtdzWi3t4E3PcD6fwgYG8AAAA=
X-Change-ID: 20261014-fix-overlay-b53fbdff8ddc
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_080935_677691_A3FBB142 
X-CRM114-Status: UNSURE (   3.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
    --- Stefan Kerkmann (2): of: overlay: of_overlay_fix_path: allow symbols
   without __overlay__ of: overlay: fix_path/apply_symbols: add more de [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E099F2019D1
X-Stat-Signature: 18bihoko1kbpan7ddb9ij1f49djrgmcz

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
Stefan Kerkmann (2):
      of: overlay: of_overlay_fix_path: allow symbols without __overlay__
      of: overlay: fix_path/apply_symbols: add more debugging calls

 drivers/of/overlay.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)
---
base-commit: e82842ffe3c7993dac4f8493fb4a44c4d35810ca
change-id: 20261014-fix-overlay-b53fbdff8ddc

Best regards,
--  
Stefan Kerkmann <s.kerkmann@pengutronix.de>



