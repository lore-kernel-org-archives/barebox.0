Delivery-date: Fri, 13 Nov 2026 19:50:17 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRwLp-00AW5D-1b
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 19:50:17 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A1B32205A44
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 19:50:13 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ynuPlZuB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794595813;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=tkfdypeEzWL7SV7H1I/96H38/QQclYBfJRS3RkvEQZ0=;
	b=EhsWv5BRT+oGHynZq1pXKAuFEGzgm7s3u6sfgCoDg9JC07hKXV9B2aqHwxcuVJYkeL+yQW
	C/gzKVgJZbx6vf7bo4bxIEND/ALWVWxpT4iOKNVmkIZ7UQz2u3bQWfar2pkK9xo1/ufX3J
	PUsHSviPpuIsUaiwHunzVPu2XZq5BQ4VN6KlrVzKI4PokJ81K6xRokXzdkCQLsGes+lLDc
	Gy34gMB788/58WoP8a/J/g2SwTtxCY2d1nKAoocutyLyi+0q5nDlbbCfwuNdYmS9WsdGq3
	iEjWpGrj31KqYPixlApB8UyfzqOXx+ni8hXLWDELVMJQQne9Iqz9mY3gE2IiFw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ynuPlZuB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794595813; a=rsa-sha256;
	cv=none;
	b=UN5cmrOJsjEbqIXfcO2ZjzQhAxfBR+6PJIKfIdvfgIjMaDmGUEvDr59LyiChHrm5y2865g
	lx0+IXysl3mCtceS5vzNDQqIc70bsBZZnS5PjgS0ELR8mnQgXVyBRZfgr5ErcBCY6ZH8UK
	OESVdCcH80/qpmwipDWczpW/gBLEPXKV+Wg/SKf+/dyNv0u0Fo1lnaVTAJ3f1cQ30crQkC
	Pn54mqmX9hQGm+w9MbbEjRopHVQNR4JhoVoVAVP2XJmyW0+WUW0ja8BVfaTF2YbBPUOrnG
	idr4DZCr1zx8wXU7Vg9le4Ytxox80BIW3eS1aFqMss5H/6U5cNzR3a9ySi48+g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=tkfdypeEzWL7SV7H1I/96H38/QQclYBfJRS3RkvEQZ0=; b=ynuPlZuBh5URby
	PbN2HxwKKRgqCRyMYd4VrcK/Tt9MxeCjm8R5W13KgRwjCEwHIg62Xh+LQUqTIDaNcvMPhKRcfuuKy
	kCPn17oUvzL0lJPzLuYoDE+QuN/j9Axcg0jcP/lEFyLDctc3Fkaxqm+tUtrRcWSR5sMJNR1Vl8SiM
	1QbS4OQgU8uAdMx3mxFrMxoPROUvxkFUNFCjcoZcE4ohTM7aMZjkvxUVAffJWjLd2Dm3HxTRc0OrY
	M4l7jmksi3kYygpD5QmD16L960fC7iTGlqQdoTVU+p2Rf8OiswAbcLToMgkULfSEvsX1i8+Ak3pnZ
	7ltN6IAzPAm37Ag+EMwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwKl-0000000DzpL-29Yh;
	Fri, 13 Nov 2026 18:49:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRwKi-0000000Dzns-1BQl
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 18:49:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xRwKg-0000Hi-D9; Fri, 13 Nov 2026 19:49:06 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] fixup! commands: mipi_dsi: add command for easier DCS experimentation
Date: Fri, 13 Nov 2026 19:49:04 +0100
Message-ID: <20261113184905.2137464-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261108101110.1270196-4-a.fatoum@barebox.org>
References: <20261108101110.1270196-4-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_104908_319031_7D861799 
X-CRM114-Status: UNSURE (   8.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The option description is overly specific, as the option is
    short for verbose anyway, just say that. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- commands/mipi_dsi.c | 2 +- 1 file changed, 1 insertion(+), 1 deletion(-)
    
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: A1B32205A44
X-Rspamd-Server: mx1
X-Stat-Signature: c6ez43b86mpwzugzjj3r53uu8ce9nqmb

The option description is overly specific, as the option is short for
verbose anyway, just say that.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/mipi_dsi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mipi_dsi.c b/commands/mipi_dsi.c
index ccef279b9830..55eed9da174e 100644
--- a/commands/mipi_dsi.c
+++ b/commands/mipi_dsi.c
@@ -333,7 +333,7 @@ BAREBOX_CMD_HELP_TEXT("CMD and DATA bytes are given in hex.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-l\t",  "list all MIPI DSI devices")
-BAREBOX_CMD_HELP_OPT ("-v\t",  "list with host, channel, lanes, format and mode flags")
+BAREBOX_CMD_HELP_OPT ("-v\t",  "verbose output")
 BAREBOX_CMD_HELP_OPT ("-d DEVICE",  "select specific device (default is first registered)")
 BAREBOX_CMD_HELP_OPT ("-i\t",  "read the panel identification registers")
 BAREBOX_CMD_HELP_OPT ("-n LEN\t",  "number of bytes to read (default: known length, else 1)")
-- 
2.47.3



