Delivery-date: Tue, 22 Sep 2026 12:49:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4I-0052An-0N
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 946D6200927
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZweeXo5T;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=jVl2bgxf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L84GTMrx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074185;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=93yYcgIb5rKoFk6U3SYFD6NVxUJdML6nAOKZcYMe7UI=;
	b=aZixymI32fj64glLOVUjtfKRaphNKd4SZ1Hj0plqtBVz0lVuJr85c+tCJLyjSgr701hWTf
	UFQ2McrRXe8y//LYXRFDEGtgIqTLo6/t/wfQX3sFTfv4CkA8kriLPFAvGxmoC1p51i36+q
	t04s+f+nzBgTSZA3Iu8Dc0nytze9sKLnn3kG27nJCqpsmuTlo+yViphxOSKjuBxy8maVrs
	DNMTBjCw18PoEqSbzA8QqKVVD3Q5wY12IsbCRg03QfTLoLfSK73Ph5iV/TrVwGADIcBWr7
	jL6LjF1H3YMj7fYQvIo6eqoS3QQ6P/xGp6/yDWa7ij34kz7461+GUqWAPWwNsQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074185; a=rsa-sha256;
	cv=pass;
	b=e52oOXHYBufGeZ6BeiG+2kDMozpcyq/7Tbe8EkzqmJ+XMoLRxD2zvy+CeZCMTOg00y+3vg
	L7FdU1WOjuOQJXLNOOYuwhbY1Ifsf+e7XTc1Z5rTxEi76omRJwNTRvOcZOspszqgJvqw0M
	wc+P4UNgmAbCMuk7J1bopSuSYs0l2ERvSrhW3wF0wu5NysUTeVY42uL5jeVgQdA7S7sQ7y
	Qsbzjqa6lJ67LRAEj64e2xw7zI7CcVeerPWRX96qeVqoNN183NEhaMrurgtSeayoA/vAao
	owYEAG3kuaL0I4E8MigbC3eJXVZzdzESufW/JLNAB2y9mtE+tRdnQ/Ge33lvaw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZweeXo5T;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=jVl2bgxf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L84GTMrx;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=93yYcgIb5rKoFk6U3SYFD6NVxUJdML6nAOKZcYMe7UI=; b=ZweeXo5TNr9h6UHca8HWbsa3RV
	tIzsGD++bXIauDt/gnsGnFv+S/2ULTESI1h9bSCAEAC/C4i5KKTZuASEY6cndyuga3r7U6ScHI1WB
	CbNqI1RM4xW6eJPKqitAUdvZcwmzgnGceTky5ygVoIpjiDqXZB34fAHnZenRKJAeWnC91T1I+yCri
	yXlCR33cXMILsIBNW7F8t2GRDPZzpV11twXPU8vz/z5HVCdZHZ9CQMApmlDr7Vy2Ym6qn6AsvtOew
	tAVaWOjaZI0xYFvVW5dsTTNuM3TFPFiFiXZqg0tGhH2gYi/Q4why32j/59SNVWHoJrt5yh4BXiXZn
	Pvbjd8zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2x-000000056GO-1Y6Q;
	Tue, 22 Sep 2026 10:48:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2w-000000056FW-2BHQ
	for barebox@bombadil.infradead.org;
	Tue, 22 Sep 2026 10:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=93yYcgIb5rKoFk6U3SYFD6NVxUJdML6nAOKZcYMe7UI=; b=jVl2bgxfA4a17ol93/Jb0JQRbn
	MYq5Z9Nd0lyJUk3bZiH2lXUV7SLHM6hcBe8Me6iK588krTHt284DZKtchsHuMhyIh6azqmCB0bt38
	/VqikztzGy2QvtCaomwy30TDd/QdRAARsptoTXDzVP6AUdjF0fXLL5QBG4Wqgl2iH+l51ofngZHKL
	W+3UmA2W+Kfo230tem+qdPmBngs9wYwiBEbZTVs8r4mft8LX+tSB+M+JpulTZaaz6vszAZoZcF3y8
	Xc7wJ5+NC67wvlpuTxtbjm1aUhlqLfkybEhVWX0N6K6Vi4NFF5ZUhiZgqqZIcfQvuCH4C4WVCHtwA
	V/CpZTyA==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8y2t-0000000DSZR-26Os
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E7299201F42;
	Tue, 22 Sep 2026 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=93yYcgIb5rKoFk6U3SYFD6NVxUJdML6nAOKZcYMe7UI=;
	b=L84GTMrxOgPd5txVq0kWKp3Y5aGg+taf/5KtegAwBhuLSmYDx4FohpW/0kG4zWczfp1XAw
	Fp9wRp9JxRwOzesiPa6Lci2A02BAuNQjTLl1rt7gzLcOJuOB/gmJnvkKmHtgtPUceO3vTV
	pgb0x8Hhz25ykbhPfLqLu/cwdGOqqlsKU0zK6cSRBLh2dF9ojNLXQmkiZ89oPE5Q712/5q
	i/7uA3QMCJNwwoUuPGmxshWoT7k0Zqi1D0WRu508my2EXTTAEirZiUBJvkYO6p01YDux+1
	NXDuK9qcXE3QsNmY2cDVgWL0Py5DjiGVsmEvQX9togTWn8l8XcOApM0MMnOwew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=93yYcgIb5rKoFk6U3SYFD6NVxUJdML6nAOKZcYMe7UI=;
	b=DrUBQN8/b4l9OwJ4lxfvma1rxvrMx6ICD3gsZNgwYryF+S7LNYve9y5L+u94lLQVwY1gcY
	66SR6Igba+V4sY9v+laMBGSX6vxSdUI3W6bXdC0jH3D4+ZoAEpYYRl6DBmq+ISmr1071FJ
	mbYn1VqR+uLOpWYTExfqxO6AoJu9gxvbJcQQ5zxfEv0fWonEcJsxrCUllKy8/uoH0bsWzM
	tTG8+xFKCH7v0/XHLPR1wMTL0Nu6eoTeY1w/HyksVhCJjlK56gFYx0KtUZqqjAdkAvZSeJ
	F2u1IgRxpyMPrBSohx4miGDpB4rc5OAS6TK0pTc2DeT30l2h8deEOyOAAn8bCw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074096; a=rsa-sha256;
	cv=none;
	b=FdI0lO73PjP0CGl0YDADvUJxmL2qfPMVszbVQWE6VR7LBqd4KPVBGbrNLJRvSH9a5symI8
	16VvREBduOz3KBL/9c4WQrltrdbdSGvq/HZF3YpUbLCu/1rzQGjbGMByaFz2m8bL6R7LUG
	/7LkwKyIUi7z+IL2p4zGDRjetGOAu47mjEpnzk61qvT2eBr9ekCEpJhf+ZLWEkFHvZEyHF
	FIEY0hP7r4VQ+OOr9F8LVCZ/kG5xyRN/aRwIwzgEe715S21qvnTI8/coJh7lDDhrHdHBy4
	xxHkC/AnmPZwkLK2F5DgOo7+euMTAie5kXGB1ZdTKrFiFzyhK8XkQJcmn7Dskg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSh-2l;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-1BhF;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 3/5] include: compiler: make __must_check a yes-op
Date: Tue, 22 Sep 2026 12:47:54 +0200
Message-ID: <20260922104813.317584-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_114819_772480_D53169A4 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  __must_check is gated behind CONFIG_ENABLE_MUST_CHECK, which
    we never define. Linux removed the option in 1967939462641 ("Compiler Attributes:
    remove CONFIG_ENABLE_MUST_CHECK"), so let's do the same. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 946D6200927
X-Stat-Signature: 9zbt9qwggq77j1xbnkp1zmmqm4igmj11

__must_check is gated behind CONFIG_ENABLE_MUST_CHECK, which we never
define.

Linux removed the option in 1967939462641 ("Compiler Attributes: remove
CONFIG_ENABLE_MUST_CHECK"), so let's do the same.

CI build with -Werror is clean now with it enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/compiler_types.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index 798c2e637daa..0e49c6795409 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -357,11 +357,7 @@ struct ftrace_likely_data {
 #endif
 
 
-#ifdef CONFIG_ENABLE_MUST_CHECK
 #define __must_check		__attribute__((warn_unused_result))
-#else
-#define __must_check
-#endif
 
 #if defined(CC_USING_HOTPATCH) && !defined(__CHECKER__)
 #define notrace			__attribute__((hotpatch(0, 0)))
-- 
2.47.3



