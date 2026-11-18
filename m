Delivery-date: Wed, 18 Nov 2026 15:54:00 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTh2u-000nin-0Y
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 15:54:00 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 43516205AEC
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 15:53:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=acYbqxHH;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AcN9Mb0O;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013636;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=dT3jYVVcp5iBeyceLs/Sibk0RMw4u/MLR1/GPH6it5w=;
	b=dR/l8vOCvB/WaQa/+oto2hlbYfk5y1hNGCitvuGTWnI6TDJ3zGknRiTn8R4IIwDCgTjqxF
	Dju6fSFMDTn4JBv0ykX1YjVqbpDpWVW6vy4X7jPS9KBWSLVSQNU1ZoutVegYCuS8dHWANw
	QdkbTivzX/QE95a0iaxyCiY4hsIO78/7BPAyAqNfBeA2afLKt90PwApSaTagz5sGvgxry8
	a3LWG6kMc/vY8LhR1IINg7MKLRVoVfxyuj5mfmgJAxm4z/dT7S3JBKobDJk9g5LdsWWuEF
	ckWEdVj0g3R8rinjmH2zwK2Gwu86NTQzYVU4aqE3fw6cLB7q/6U6LMwTj4g/UQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795013636; a=rsa-sha256;
	cv=fail;
	b=Sc+p+gJ1dVggoTeDkF5FfT+Qf442d7jFQTaGFsIgXJzed36+EpEC8TPzN3l0eI64lM5iNi
	aPMGAK9o9QrOxvmsyiiDNYfn6psfOpjTU8M4epGI10jaJEjvF/3Oa7g8aduoVqk/vpiB6Q
	vXJIxnhTx/b2sUzPly1XoA7bg9xu0Izbpk54q3rDxyb33plQ4wXZkVA4l5LSZCR/lGxpHo
	MtQSY3B3PrWa6NVztlRStAyt/0WxrElQl0mQche7B/aQc0ionB0iw2XccYQHKe0ZJyaWMX
	QrF9s8KpaM8+9CSW+C/DU2dHYIB2kUiFtmZ+n0AVR9BaZTYKUlh3gjBx/O1yKA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=acYbqxHH;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AcN9Mb0O;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=dT3jYVVcp5iBeyceLs/Sibk0RMw4u/MLR1/GPH6it5w=; b=acYbqxHHmSAIMq
	Jx0pqs97fv5IvHm0NPz9m96RTdInIfwhdGAaY1pRQcvRxdUIUrVV1GFBCcEkbwxUgBCVZUK70rUXJ
	/2v2LiYGEDWiwT37EzP1FMPwjo5yBgbfstQXefL5zJvAl+S+N+uSabVd0LClPvp9uvyh/uT7whGW2
	QgVA2wd4A/dk407QDyU8E5THKaM1FgYedtQO2YcDb2KbQeavmHjfxG81MXQ7yxs/27B99+3dli/S3
	3UPiK+vbWDuOeaOXS9V6OxGK4PaXsymi3kjgjKk+goplQLuFef09MXdRL9tlyONbOyuJVGDLfMuu8
	OhOi1fe6BfpMMYtgmwhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1U-000000099yR-2F2K;
	Wed, 18 Nov 2026 14:52:32 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh1S-000000099vh-1Bel
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 14:52:31 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 808B6201F17;
	Wed, 18 Nov 2026 15:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dT3jYVVcp5iBeyceLs/Sibk0RMw4u/MLR1/GPH6it5w=;
	b=AcN9Mb0O0dNrwjrX413vTuRjS13jU5GT3Cwx0zjOGg5GYSIR/TZjeBR/I6MXjnbDnF57uO
	Xdkr8WccapebFOAVZUVh6EXZmerBMdoXPmKYfniN6LeA/Sgl+H94lb/+Gc/tfDtP7t+pvq
	Tz8fz0OtAaRRG0tvJMIORLi0Sh4ClmQpmrAzkEZ/bDKMHjwDV/LzBVfQcRB6JdaoA5LftD
	7pndwFywWSv7ZTP6x1OEYvQQz8J25CH1+CPEPs43tvQGeDGdTuHyWIBqBZxBr+ZwOu4VfR
	jcgpTsmPBK3Y8Ggc4AZeeV8QSInEFHl1M3nlUpSO7zoQG6y3zUjMApP9kur/TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795013544;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dT3jYVVcp5iBeyceLs/Sibk0RMw4u/MLR1/GPH6it5w=;
	b=d43ihCn6T4iJtrshUZXFUgtV5ji3Fx7k+uKaxPvGkdS5cLCvDZn2q5p20cP2+L2Gtxwmo8
	fwEr/2WRELmuXUgZ2WNLNh3KThlY8ntHWoFVFQaJNraX+ZYs7A51+K3ZKrTBufca/Z8jbj
	N/c+RqIw10AaCcBs46tTRGqK9quUAFpkKy8BysMiuWvillLEkldaZll92nx+VeL7RL5q+n
	IyTPvuZCTmfJ29Ogf8bd9HQfJ6SiuqQwE3nwOrNZ/dqdjlckApsJ8mQzn5LZfImGbMMS6n
	AbVAiXufRFa6fkLFhMXPMvt0UXTPVj3QYnSqky5ciVg4kP4ZF08yuquHiWwoZw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795013544; a=rsa-sha256;
	cv=none;
	b=Rz+KV4SKvYYzUB21Bp4jWPv6ml4Y9rpHL8jzM9dvt/MuAKxA2zxFZHABXGFlG4V0kqFH66
	wAonR8N9CcCrqdDeq+Ckmiv0f7+xsbSZz5XQNVwsOw+jXAonG2um+Hrfuv68lwGNe9LiD4
	8vtdLhmUfI5rB2uQ8XmKzGjYpFMo2LrW0I+y4f5BDLjzJXYIil0kr/I+OAey2jws5kpX2V
	QRFaSC2L+T7JpxLL98yIaiLY1lmjRyRS0UUkRxqUFDwa1LmqX6SqNBAwcLLR4Z1KGYxCql
	OqM9Q8WSokJBmDZsEfl36TJExBo1RKObfYIhRPAuO/I/cwaymknhn8lmH4K/mQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Nov 2026 15:51:57 +0100
Subject: [PATCH 07/13] fs: fat: fix building without CONFIG_FS_FAT_LFN
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261118-fs-conformance-fixes-v1-7-59b59ec15d47@pengutronix.de>
References: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
In-Reply-To: <20261118-fs-conformance-fixes-v1-0-59b59ec15d47@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795013515; l=1377;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=vKwrnxth4oHVKzQorHTpbeaPKM2+ByV05nHthKue7YA=;
 b=zbVXEKD05I7wgaLG1/ChoL1eyvFXq8ThncO69fgxIcw0qnfnyY5iy+R1a/92EIMD9DHxKUyvW
 1lFuHCdkEv7AW9ueKXLh1FmJdUNoRI3aaxtALUMhSfSNJEG3ELCEtNl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065230_496998_617E01BB 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  FILINFO only has the lfname and lfsize fields with long file
    name support, so the FAT fuzz test, which sets them depending on IS_ENABLED(CONFIG_FS_FAT_LFN),
    breaks building FAT without it: fs/fat/fat.c: error: 'FILINFO' has no member
    named 'lfname' 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [185.203.200.13 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
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
	RCVD_IN_DNSWL_NONE(0.00)[185.203.200.13:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 43516205AEC
X-Rspamd-Server: mx1
X-Stat-Signature: req7urzdm9x49yc56e331uhtxpsch1i5

FILINFO only has the lfname and lfsize fields with long file name
support, so the FAT fuzz test, which sets them depending on
IS_ENABLED(CONFIG_FS_FAT_LFN), breaks building FAT without it:

  fs/fat/fat.c: error: 'FILINFO' has no member named 'lfname'

Use #ifdef like the rest of the driver does.

Fixes: f585092b1737 ("fs: fat: add fuzz test for FAT filesystem")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fat/fat.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index 1c5aa257b4..f413c1cd8f 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -454,7 +454,9 @@ static int fuzz_fat(struct block_device *ramdisk)
 	BYTE buf[512];
 	UINT br;
 	int ret, i;
+#ifdef CONFIG_FS_FAT_LFN
 	char lfname[256];
+#endif
 
 	priv.cdev = &ramdisk->cdev;
 	fat.userdata = &priv;
@@ -475,10 +477,11 @@ static int fuzz_fat(struct block_device *ramdisk)
 	for (i = 0; i < 64; i++) {
 		memset(&finfo, 0, sizeof(finfo));
 
-		if (IS_ENABLED(CONFIG_FS_FAT_LFN)) {
-			finfo.lfname = lfname;
-			finfo.lfsize = sizeof(lfname);
-		}
+#ifdef CONFIG_FS_FAT_LFN
+		/* FILINFO only has the fields for long names with LFN */
+		finfo.lfname = lfname;
+		finfo.lfsize = sizeof(lfname);
+#endif
 
 		ret = f_readdir(&dir, &finfo);
 		if (ret || finfo.fname[0] == '\0')

-- 
2.47.3



