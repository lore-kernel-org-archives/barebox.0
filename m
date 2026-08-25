Delivery-date: Tue, 25 Aug 2026 10:52:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wymtt-0070nv-2S
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 10:52:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 58FB4200740
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 10:52:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YvGBMT3Q;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t6scaTEIRcDAV1Zl9k8eEHjkMsxoVGxDqAfPb3I9EZk=; b=YvGBMT3QyyywmtqJ8vZCdhs1RB
	hN7m3l9Yzi/8vHOIGZY7L2Ui7hQk5CNpfGDnVzKfRzJ289wwFCmQvAAkYwqqavSTXUHQov+NgHWCp
	2l7/vIFsdyGCbZYc4wLXk6KKoa5PluV+EZrq/EivOxIGrAPGTu1/GBFrp+eoT36mYBfZSMZwgbB+T
	AOnkPAkBpfXR4h2EC6VfTzcCxRkGHFg3SSsAbutv8Dt9tgWQ1fBTN8cGvzckOR6+RXTgSiOdYKjkL
	qcoO0S7gZ75TnS0SUscOyrVy74TnTAU7SLTza5lZsZAEYaFdyJGtoNvFcxKGoI6LTjm3Ig7nxX/Jq
	/wgbikcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymtS-00000000QWx-0eKa;
	Tue, 25 Aug 2026 08:52:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymtP-00000000QW2-0OAK
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 08:52:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 2833B200740;
	Tue, 25 Aug 2026 10:52:25 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymtN-003F9a-0F;
	Tue, 25 Aug 2026 10:52:25 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wymtM-00000005V4N-40uT;
	Tue, 25 Aug 2026 10:52:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] efi: loader: fix year and month reported by GetTime
Date: Tue, 25 Aug 2026 10:52:22 +0200
Message-ID: <20260825085223.1311031-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_015227_279158_333FCCE8 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  struct rtc_time follows the Linux convention: tm_year counts
    from 1900 and tm_mon is zero based. EFI_TIME on the other hand carries the
    full year and a one based month. efi_get_time_boottime() copied both fields
    over unchanged, so GetTime() reported year 126 and month 6 for July 2026.
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: fyx4i6q41qurr88ehaurmbh9idxemekf
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 58FB4200740

struct rtc_time follows the Linux convention: tm_year counts from 1900
and tm_mon is zero based. EFI_TIME on the other hand carries the full
year and a one based month.

efi_get_time_boottime() copied both fields over unchanged, so GetTime()
reported year 126 and month 6 for July 2026.

efi_set_time_boottime() has the mirrored problem. rtc_valid_tm() accepts
the result, since it only rejects tm_year below 70 and tm_mon of 12 or
more, so rtc_tm_to_time() goes on to compute
mktime(time->year + 1900, time->month + 1, ...) and the RTC is set
roughly 1900 years and one month ahead.

Convert in both directions.

Assisted-by: Codex:gpt-5.5
Fixes: 06947fd4664c ("efi: loader: add support for runtime services before ExitBootServices")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/runtime.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/efi/loader/runtime.c b/efi/loader/runtime.c
index f0fbd263fe55..024d402b3915 100644
--- a/efi/loader/runtime.c
+++ b/efi/loader/runtime.c
@@ -173,8 +173,8 @@ static efi_status_t EFIAPI efi_get_time_boottime(
 	}
 
 	memset(time, 0, sizeof(*time));
-	time->year = tm.tm_year;
-	time->month = tm.tm_mon;
+	time->year = tm.tm_year + 1900;
+	time->month = tm.tm_mon + 1;
 	time->day = tm.tm_mday;
 	time->hour = tm.tm_hour;
 	time->minute = tm.tm_min;
@@ -257,8 +257,8 @@ static efi_status_t EFIAPI efi_set_time_boottime(struct efi_time *time)
 	}
 
 	memset(&tm, 0, sizeof(tm));
-	tm.tm_year = time->year;
-	tm.tm_mon = time->month;
+	tm.tm_year = time->year - 1900;
+	tm.tm_mon = time->month - 1;
 	tm.tm_mday = time->day;
 	tm.tm_hour = time->hour;
 	tm.tm_min = time->minute;
-- 
2.47.3



