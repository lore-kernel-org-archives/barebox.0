Delivery-date: Wed, 21 Oct 2026 22:35:46 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJd2I-001azg-13
	for lore@lore.pengutronix.de;
	Wed, 21 Oct 2026 22:35:46 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1DFEF201E7D
	for <lore@pengutronix.de>; Wed, 21 Oct 2026 22:35:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=z3a+pi12;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Zsbn6dKs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fGzVusJG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792614942; a=rsa-sha256;
	cv=pass;
	b=JQp8vng2roDXSI8BG2TfqHdIb3Ts4yxbTx9ZdpN0H7gew4a+KfwQRiGJA63n/+63CH/KeW
	VtZNYnNQfMKopMUpa1/uWVW3yRHajOBSy0rplHyF1JfNc6ICZ+EDr3IHWIicOu/H/vCnAL
	qZDC39eGjGKjJHDb20PTkX0SwrQDfMU+kr4u+GGfB7YYEaLRjwpgivT4KcK0YDndfkvlGJ
	qsoUjUfAD/8hVPKBmVqh5nzL/aooi+/DZZORTJ0rZHRvD3i5hgAkk1q2kAhrmQH0JTYOPE
	kYltOO0OqNLtAAIpkVkMFV/HgudKHqcsX26SkbgR4VSdFRvwlmLqNk7VEOXXcA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=z3a+pi12;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Zsbn6dKs;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=fGzVusJG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614942;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=BXEyJHAfU98PIqrslEly0UEDR3QN8q32xiKQHxGi2Fg=;
	b=QfgvZm76kNOYMPcKth7Zd0CPIrv1LWjGzBGACb3NGsB/so4EMhHCEDcDkGUJLVlYZSVEJr
	QXV3vDD69Fluy9Lt7hfGbw3fgzxVg64qWb++2dI0BbRynYhnM66ThT01Ikrg163hPjMSVI
	qXx5mA1QCs/oHMeZ4Ke9DfjlIYFbxpmSyrRneFEp1cmZ69trJZcVBjBCc3+JZi3wXeJNAe
	qK0GlUBeq4u0p+FxFV2zD1O+qg7LdydaxH1sJ11HP8KNb6ilAAY/GssCB4TMOWQs1gLSsy
	p55W13whfXeEK3XAs23Hd2D+jVfN0AN9YwcG+SGcF05yzrpQSrefc7armcbqUQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BXEyJHAfU98PIqrslEly0UEDR3QN8q32xiKQHxGi2Fg=; b=z3a+pi12v3pD9vFRIB+7zuNu/u
	LsGkNaudf4VBik/Mp4O+3XRB1NTcTTcFVVpz+winh/SwV8cHXuvfHUOG2B2fk1giFAu0seWbunRDz
	Ce/VJMFpz899I1H2BHZk50PMECbKvgIwSJ99Cfp8gG7eMhbbEOCfHQ40uOI5luShQsNNOnEPsd+s2
	miGOTG71Brn1pi0QwYLXkUe0L37V3DXXLoTvQvScSAuNApwAQJ86qz8uW8LKgQ50tJ4Fpe7WHNfsf
	uj8s2x0cWjnDpUIngnmbjNwYSCRc0860TG7hyAovTyZyozHLi4GXyP+toJFEgxBkD+9SbxFhyr1Zk
	EQsar9eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0m-0000000CqDg-31V5;
	Wed, 21 Oct 2026 20:34:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJd0l-0000000CqCy-3Q8C
	for barebox@bombadil.infradead.org;
	Wed, 21 Oct 2026 20:34:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=BXEyJHAfU98PIqrslEly0UEDR3QN8q32xiKQHxGi2Fg=; b=Zsbn6dKsy6CuxhPmBILomVvtoZ
	ivV8MT0cSdU2vB23+1hBb1MkWTItN4VvJQli1ttrbxLSreXQUbaBedPZxNjN9pJDTaDSDYjtTmcMg
	NIMQix29ZeD6tTOtvEH6iGrgCCCCoh318mYKNPuyZHemWe69XK+6kWt3+ZHCtnDR8zeFB/5oq3KIp
	N+IbpKuC5rrThvIiMCNV+bAVmiwLCvy4UUV2eTyYN8fcv40e1gkM3G89KYR6K98xNuLYxHL1WJiRu
	OHlCdwsO12tQqtvbGi8H8jeOYPxEdopbD+W00Ced8kMa3j7Fzt9CG7ew+870ONrtqJFvJ9SW4Jom1
	lTLS1BfA==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJd0i-00000006Cnr-0CCu
	for barebox@lists.infradead.org;
	Wed, 21 Oct 2026 20:34:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 869ED201E9D;
	Wed, 21 Oct 2026 22:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BXEyJHAfU98PIqrslEly0UEDR3QN8q32xiKQHxGi2Fg=;
	b=fGzVusJGicE/X9x1kFVVSJnVqZTrN0Z/4QIBOrLDMGJJCKXGql5UAQFUqmbnl+IDeo9t/T
	VAm0Cwhk7C1/r+CTgaFunDmnJXnRuLYN1CDJhT8gEh9ZIZONWN7te0Ki0ixLwTeVO8JWRh
	aqCSoDZ6jePR6AXp168RB9jHitkdjqXoQQ49/mbtBFyzftH20tC18/bX7MHjGYHyyd47yv
	DoMjunAjOKbccyvFBmDgRecwprS1rtheqAI4JtcKjDwoXjbGRzs9w+ZA+tGLju6iROLYjI
	QmXJwlWhjaDwlGbpv2srrghMQipbaGulmDGETHVSgg6KIbWBxqKGWND9Q7gU2g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792614841; a=rsa-sha256;
	cv=none;
	b=SWOyUzdfmEWNKEcDHuiBv7FkWJ2uzLRIcbvMk3ktD+MmyTZhQaLA76QSe0efq1HZoih495
	RsN9Ll24U587TOED2/uydQS5RsVyGrwqzXf8zXqWjN9FESxBa2C1HkqTNxMYhQNnhmHynQ
	BL1k4127qHqzzOiols4eNgSMmnEkNi6gT21jqYGhJn/EDJ20A5GXDzLyGbrhnGOAOBJFgU
	inRvGZVZAEz9OvsRtbPRCYSDse0X1snKB+afH5u8i/p/ZeT5pU5MSzcLppROrTcYY9b9Z+
	5XSy1zKXo6bTJH/wUmMp/Xjy4ydtq0rVqADk2ZwfRrSXPuZe1+5FV6Ot8WEIKQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792614841;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=BXEyJHAfU98PIqrslEly0UEDR3QN8q32xiKQHxGi2Fg=;
	b=UNVcAyKfyoxOMxmVIWnlAdQO3p637UjAj/Ah3xeFXdl3RXG+HdvjIm9g7lkZAUl5b/W7CI
	HFH7rWSjiGGoewoL/5z5P+gaItiBXYLas/REuOCjahkleUU31MK2BywNYxnCYowyuMbm6p
	hlIllQFSFOoH9eKJMsoKF7STFPAWlnUZjKs3rUVSC6V9popMDnJwjQS+/bV5GutQCRc5+n
	OqBZ3ygU7lXvIKrUomDedpktTwgBgfA/hUCSQAglOk/WSGs85U2PinPPBSfVu0GGGiBk29
	gDtzj+oiC3WxUGAjWK9Rt6CcdT8xKAlpvk1WJY05SWaVcJ51rS2Omd3jFNdM9A==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xJd0b-000bcM-1S;
	Wed, 21 Oct 2026 22:34:01 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 21 Oct 2026 22:33:52 +0200
Subject: [PATCH 1/2] arm: socfpga: mailbox_s10: add certificate validation
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261021-socfpga-agilex5-verify-ssbl-v1-1-0463e94669ab@pengutronix.de>
References: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
In-Reply-To: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_213408_892722_B3E6EF86 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The SDM firmware is able to verify a certificate in the proprietary
    certificate format against the programmed root key. Add a wrapper function
    for the MBOX_VAB_SRC_CERT mailbox command to be able to verify a certificate
    more easily. 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1DFEF201E7D
X-Spamd-Result: default: False [-61.01 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.80)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: ankuuq3aaqudpgy6u9yn98io8rtpsxoj

The SDM firmware is able to verify a certificate in the proprietary
certificate format against the programmed root key.

Add a wrapper function for the MBOX_VAB_SRC_CERT mailbox command to be
able to verify a certificate more easily.

Note that the certificate has to be passed in a slighly different format
than what is produced by the signing tools provided by Altera.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 53 +++++++++++++++++++++++++++++++++++++
 include/mach/socfpga/mailbox_s10.h  |  2 ++
 2 files changed, 55 insertions(+)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index 1cf92813b5a7..11804969c29f 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -287,6 +287,59 @@ int socfpga_mailbox_s10_init(void)
 	return 0;
 }
 
+/*
+ * The SDM firmware apparently has an off-by-one error when verifying the
+ * certificate. The passed address must be one word before the actual start of
+ * the certificate, otherwise the firmware reports a 0x80 error with response
+ * set to 0x2. If the first word in the buffer isn't 0, the firmware reports a
+ * 0x3ff error code.
+ *
+ * Therefore, data has to start with a zero word and the actual certificate has
+ * to start with a 32 bit offset.
+ *
+ * The downstream U-Boot and TF-A allocate a temporary buffer, and copy the
+ * certificate with a start offset of -1 in the source buffer. The
+ * documentation in U-Boot and the TF-A seems to be wrong.
+ */
+int mbox_vab_src_cert(void *data, size_t size)
+{
+	int ret;
+	u32 *buf = (u32 *)data;
+	u32 buf_len = size / sizeof(*buf);
+	u32 resp_buf;
+	u32 resp_buf_len = 1;
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX,
+			    MBOX_VAB_SRC_CERT,
+			    MBOX_CMD_DIRECT,
+			    buf_len, buf, 0,
+			    &resp_buf_len, &resp_buf);
+	switch (ret) {
+	case MBOX_RESP_STATOK:
+		ret = 0;
+		break;
+	case MBOX_RESP_NOT_ALLOWED_UNDER_SECURITY_SETTINGS:
+		pr_warn("Authentication bypass\n");
+		ret = 0;
+		break;
+	case MBOX_RESP_AUTH_FAIL:
+		pr_err("Authentication failed\n");
+		break;
+	case MBOX_RESP_UNKNOWN:
+		pr_err("Authentication not supported\n");
+		break;
+	case 0x80:
+		pr_err("Authentication command specific error: 0x%x (0x%x)\n",
+		       ret, resp_buf & 0x1ff);
+		break;
+	default:
+		pr_err("VAB_SRC_CERT failed: 0x%x (0x%x)\n", ret, resp_buf);
+		break;
+	}
+
+	return ret;
+}
+
 int socfpga_mailbox_s10_qspi_close(void)
 {
 	return mbox_send_cmd(MBOX_ID_BAREBOX, MBOX_QSPI_CLOSE, MBOX_CMD_DIRECT,
diff --git a/include/mach/socfpga/mailbox_s10.h b/include/mach/socfpga/mailbox_s10.h
index bc0fd97ff0fc..abe770b8128f 100644
--- a/include/mach/socfpga/mailbox_s10.h
+++ b/include/mach/socfpga/mailbox_s10.h
@@ -186,6 +186,8 @@ enum ALT_SDM_MBOX_RESP_CODE {
 
 int socfpga_mailbox_s10_init(void);
 
+int mbox_vab_src_cert(void *data, size_t size);
+
 int socfpga_mailbox_s10_qspi_close(void);
 int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk);
 int socfpga_mailbox_s10_qspi_get_device_info(u32 *resp_buf, u32 resp_buf_len);

-- 
2.47.3



