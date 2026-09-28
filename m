Delivery-date: Mon, 28 Sep 2026 14:47:12 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAlE-007IIt-0x
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:47:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C77D820026F
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:47:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GJiI29bu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gwUhf0Y9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599632;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=fddUnPcSvGQNwF2ZEOVoom5UhiilPleOo9Ws7Exn9V8=;
	b=UEr8eaZEK7TZqueGrv9kehyQQPA1Q+YM2Ou+ljl8/aoGe+j57/9Kg4qHo3YAqSLqM+PVqb
	L6rW9gVTh2W9LSzObxjgT05Jvqnx54OnSgcnDl1L5YMibvEYxeq4D3Wy00nmsvIXtVSr2z
	cUyS2j504AVGc4dM8ckxZ3qsRf4Eff6Ucy+fC/dERCrkoxKYiw28bg7pa37xOsCf+q6c7n
	gzu+u6064p/iJBfVDnNStqUhLeYA8myyBJ6lH44ktjag6FrjARbqZLVfNZEPsDt2WeNBuM
	uhknA/bSVVjRKKJv4sVBS88fhMAKwt9e222iHAY0bMF4DKoOcm4fTi9nLwbQXw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790599632; a=rsa-sha256;
	cv=pass;
	b=Sdg/14g+Vvm/Wpqfll60r72VrHN8E0wEBmw5mZ2mmy2sV4WusiM81Vw+MS22CDtzv8J/Xv
	ob+spXqW20tz8aIVI2oDJZAr3SYnBu5XceZqXeUEXKenMHRSxZKmYgWGpl3rYqpJPX8nCD
	ASnuDvBuxI9Wm8hKGXGKezWexuMTACbQv2zgHI67MrTNGXmDcEuRHLgzxWKta6f2j717gY
	zQU2DHxNvyNSf6aMbh60mSwvO6e7aBE4kGraitkPbQlWbxxEyXdyXgObN4MKEebFKztgEi
	O6cXEqbbLduOsWbQ3Br3ez6NQtprasN/iLfcK3WuXHVZB5aZOkb0vCqRDvaeFw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GJiI29bu;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=gwUhf0Y9;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fddUnPcSvGQNwF2ZEOVoom5UhiilPleOo9Ws7Exn9V8=; b=GJiI29buWRwOoGDWCb4Jqq/l1g
	U9Tejzq+9scpOTpxOoVEd0DC6ZWQNKqjhM9kU9rDIJccaTTehnKved9C6SNMLHQMquKUyZXvY4xwi
	xTqRwv4SClE+VT6JR9zti9WVFznxqwTx4F/qQJbHNlx76qSO9DGjhyuqAvIr3ogk1NzKFq2WyC+9B
	M463UK7orciph6uXjv7D8wouzOJPheAFyDBWdUxlVJd1E6RH+r+YCe38f8QLFf99iWxatSxWHcPua
	ApmY9/oNPBMjf/skOfu+3KbBF8QCNhmUMMGU3K0B1Y5DRZv6k8rmpDAZpMwOSEPSqMrz3MKYr+0zW
	odPLCwPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk9-00000000abr-18iW;
	Mon, 28 Sep 2026 12:46:05 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk5-00000000aa0-0rFX
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:46:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 652FF201E7E;
	Mon, 28 Sep 2026 14:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fddUnPcSvGQNwF2ZEOVoom5UhiilPleOo9Ws7Exn9V8=;
	b=gwUhf0Y9NoyXgI3hSdef76EysJ/fNYh8jKe4bUoYYXQ8w3JhBPKpf6rYjxHm0nLVHPUzHU
	TFemsDUYNw8W7MEQNOhTz2BkOgs/Nnu1x5oz6eqASt39lNPt4eSZd41TRv2k4lFayA3No+
	M0BrfKNPXPtCwZjK4agqXQVkeSQDkRaAOlKsUFMvT+nzT/bpMASXiDr+JMZDZm3ZXzONMa
	j4intisosuB7zrPRcD44f9WHwLbQRa3/P+Q8fe65RUDDi5mj/e9vXvHpqqBWYA/e8N1kW0
	wabx03JQ0YKUDiisrR7dnbPxmrAZdOaQs9VGK+YW1OQ81d2S2V2tbGLDgVXxpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fddUnPcSvGQNwF2ZEOVoom5UhiilPleOo9Ws7Exn9V8=;
	b=ZJyxHka3/7izEB7f/dgB5YXwEXJodJdh1A5iRoOk7nHcpkFhMfut7XW22VldFmouUNSuZ1
	02hhSwphNNLBw1xDnKFD0m0O2/TW3GZxHAIco0C5KTZQV2p2KoXz6wG4YCRaZphP+SwYYc
	gZ+row/xxMAWU/SO9SfTR3JCvugk2ZoPOkkkGsFQCgJ/OQwTJWQRYs+Y5roTsfT2P6Zk/B
	t8/UZThyP0a7V8TUCA9NHMRcJcuni5kaB1uf0zV6oEbHKNmKIGZs93FP7xTgQg0jhd6dwA
	vGaNHHeG2IlTxRQpntuV4mL1u78hVZ1Ezksbk9yvrGAog1aut6dom9+Xjxjykg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790599559; a=rsa-sha256;
	cv=none;
	b=JAFM21EmZ1pBjaRDSH+c9+xXza2TjaO5iQ3gxgYHkB/+tcXJ51qFIWCmQxcPP+vSVLQBf1
	PVyT/AjWfH0Rpd8o3GTzWbO+pOSuN9Uv6Z5A230Tu6mS0itFaZESxNHUv1r1XCPh5NoQXH
	pZf6GWKmPiwUTDHNHANqstZPypKyFp+RwgS+ifyuY8neFXQTz/lTvYOmUqHgIBzXvaWloX
	si13dTqWL/dDPM7OArQXuBYilYk9+eX46ptQNHFeR8yfzTNn5C0BcJuL4+6hEZ189uXpQt
	IxAOUeJEkNeWiRhZz0DM+tB2fLTks562J7gyeNtwfI1D6Wc6JrhfV9yUQH0utA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAk3-003ECA-14;
	Mon, 28 Sep 2026 14:45:59 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 14:45:58 +0200
Subject: [PATCH 2/2] arm: socfpga: mailbox_s10: add wrapper for
 CONFIG_STATUS
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-socfpga-agilex5-mbox-v1-2-9f6ec865e882@pengutronix.de>
References: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
In-Reply-To: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_054601_542368_04CC07D8 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The CONFIG_STATUS command allows barebox to request the current
    bitstream configuration from the SDM firmware. This includes potential errors,
    the boot configuration and the Quartus Version that was u [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C77D820026F
X-Stat-Signature: 685cpifc4n9tfk8e5kcghbti3y3mnxh5

The CONFIG_STATUS command allows barebox to request the current
bitstream configuration from the SDM firmware. This includes potential
errors, the boot configuration and the Quartus Version that was used to
create the image and the SDM firmware.

Add a wrapper to have a more convenient interface to the SDM firmware.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 21 +++++++++++++++++++++
 include/mach/socfpga/mailbox_s10.h  | 11 +++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index a3e208a2aa17..1cf92813b5a7 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -369,6 +369,27 @@ int mbox_rsu_get_spt(struct rsu_spt_offset *rsu_spt_offset)
 	return 0;
 }
 
+int mbox_config_status(struct config_status *config_status)
+{
+	int ret;
+	u32 *resp_buf = (u32 *)config_status;
+	u32 resp_buf_len = sizeof(*config_status)/sizeof(*resp_buf);
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX,
+			    MBOX_CONFIG_STATUS,
+			    MBOX_CMD_DIRECT,
+			    0, NULL, 0, &resp_buf_len, resp_buf);
+	switch (ret) {
+	case MBOX_RESP_STATOK:
+		break;
+	default:
+		pr_err("MBOX_CONFIG_STATUS failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
 int mbox_rsu_status(struct rsu_status_info *status_info)
 {
 	int ret;
diff --git a/include/mach/socfpga/mailbox_s10.h b/include/mach/socfpga/mailbox_s10.h
index b006fb18ff09..bc0fd97ff0fc 100644
--- a/include/mach/socfpga/mailbox_s10.h
+++ b/include/mach/socfpga/mailbox_s10.h
@@ -190,6 +190,17 @@ int socfpga_mailbox_s10_qspi_close(void);
 int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk);
 int socfpga_mailbox_s10_qspi_get_device_info(u32 *resp_buf, u32 resp_buf_len);
 
+struct config_status {
+	u32 state;
+	u32 version;
+	u32 pin_status;
+	u32 soft_function_status;
+	u32 error_location;
+	u32 error_details;
+};
+
+int mbox_config_status(struct config_status *config_status);
+
 struct rsu_spt_offset {
 	u32 spt0_hi;
 	u32 spt0_lo;

-- 
2.47.3



