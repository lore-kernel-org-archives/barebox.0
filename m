Delivery-date: Mon, 28 Sep 2026 14:47:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAlG-007IJe-2Z
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:47:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4F1B820026F
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:47:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fLpYGE6N;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VAca56QU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599634;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=/GF6stxxZd4/+5dLI6KyUx5gcr2//IDyfIRcmQoNy2k=;
	b=RMMgXw4cbxRCwpt+isNigQ4z3ht2iv/ATVJ4a+3hJUqugZxaEFwoSi0hDdCF6Gzf0Mzzs3
	ZlLYHdLUmcg/u5RQ7TJ/fxJx4aPZ0ATQ2VCDvgWfPFT6bI8KAQSu2JqjVnTtcn38Gh4lJG
	N+wsF42tjX5D3fnkVln8+ez0SWH88ZQDbmIOo1sqGt1k6e62fDjCK9FyB6twNRUA5lCh23
	2QdCy/hP79OPP2sC0av0F6BBdAYo5edPEV6dEei/wZvV4QQN7KZ/bkUifpqpe6kSM22scY
	xQFVW1abmYjfOgEaYcYJwr1UHPgJLxNF7RhhkFY76RcS6Ism2gIEKxBaDxjHZg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790599634; a=rsa-sha256;
	cv=pass;
	b=hFyCWT/lagEJaZcAVCjIcC8Xv07G6rS6LdhWZNgR1btzP/6JakyNjOxgy9uKbVLUxdoq/a
	4yusYhaX4Pg+Ud/BTlw0g3HJIVXxKkRjjudFD/jyDdustiOntUksbU9DvcfPY2bs+3r56P
	33AlV9SWHjRYJ1G75LGgUKn1I6iQ85n2cPgFz31pqFgWWGh9CaYMEjA4bLp0DL/Q5JJqQY
	NFyqYZ4ck+klomKZ6F9aRMEBCNiPt7oUFnalZT1SBY6d3Ta8MCYrYAAyYueP2zPNnvAazf
	n1igp8YoxgVEftcf0d0NplnJu9FFCZeoJ+WNwDZ3Kw17D4T0fNn0DmFEOg1FGg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fLpYGE6N;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VAca56QU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/GF6stxxZd4/+5dLI6KyUx5gcr2//IDyfIRcmQoNy2k=; b=fLpYGE6NUbC45E31wOQUVA3Q5U
	Rl9pqDNd1Oz9hou30qkRM2FfxnSJfx4KHZZlNqWjqR1ztEQ04iJupGVZP+hBeB1UdZHlBc00WmRXP
	wtyWvoDTEIZ8AWhMB2dq+10E5XAkpedfC9yV/Npw3pdMOU4Ln+f93ku8fl2evTXbmziRoaaCNz92I
	/rvsOEvV8pBdc0WePed4SKqdA8//9DuDJ9u3DY6EG6auA4sebpTjE6jFd1wQwjYzfDoacijoJaRaN
	DC6VyRFa+ZOGsfd92QCq5qhRuwVeX6oivhvsRwgBqFpb222fgr3woYe3TM8mKL41WouduzNDJaxAq
	HEJTwW2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk7-00000000abC-3zSZ;
	Mon, 28 Sep 2026 12:46:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAk5-00000000aZz-1II4
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:46:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5D81E201E6E;
	Mon, 28 Sep 2026 14:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/GF6stxxZd4/+5dLI6KyUx5gcr2//IDyfIRcmQoNy2k=;
	b=VAca56QUIXXyKNEagVdTJ5F9dpKhLmvDNfx6tY7/nhRQDTPe+b6Q94tzC4bfY209ReabKy
	2q50FKrZof8ch3QI9m1kaYZIDUAFQoDQN0pIwlN+TOVvRP/a6YEf0ySRWSW4XNSCKQNY8O
	ZNa6dEzX666GDt5L0sZT7ilLgi9XqAz/nzzXJ9QYk45XEL1RU+L0OfRcCD8Fur2gbdbxZw
	HiXguXFxs7xOh5+tOU+/FOXMKcbc3TgQXz8wam+YWuzjhvaIrTBuY1btD1fmFWFr5Qb8Ob
	9KvlQsFCEj6tI5X9SCVkDn8dam6hR1gvoOVGrDQc9yMXKtp7IUmpqGlux///Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790599559;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/GF6stxxZd4/+5dLI6KyUx5gcr2//IDyfIRcmQoNy2k=;
	b=Zl6viTusVchEemEqGRy9N5Dae7ve3axKRmZw09nuhQBaR0EaDMX1a/INY2oQF3RNDAh3tO
	9ugmPP+aiOt2l640lMnK562zrBbGSyDoWkq04zQ8HYbxUCFR1J7DNkV4mvUsc0y70gTl8q
	i4UpSTk9yIVOvHmjTwOC01+TBPzxpso+dp2xkq4jnqj4s2Fiysl9yeRosJfTjQinnI6UVA
	ZDyt0mrMCkx1Gykex9+h+6BEpGkfH6v90TWMZcKTrnG7sBWm2GZMgvW3zMXO3IT4uBWVYH
	m6uxkUq6J7SMkcFg13PjBwWlzrS1gnKdW4OgXNvXetqD6vtJewBhH7b2a2G9/g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790599559; a=rsa-sha256;
	cv=none;
	b=PaiHVbu137ms775jILObmZQhNY0aUfjcsHXhUWyxW0Cyh5EZ+Rwq2u5DMkeqvrixqtpl0n
	1P8jLm3odhu4E77rQpbG+dL0ICdkrkqdGib1GUZ82qJh9sHd5PceXs4TZyDlCpbByOwEER
	03Lxx4wMqw2acTFJtYHTQ3ZRNrt9gAP+40X6fwcJlpmIEHUom98vromkmZcswYOdMpMjQL
	/fdtFzUcKTrZ3XXjQbV6qZelddBrwidnRPfA657YRqIubU4BaOTSpeQlYTkHFF+h++1Vsk
	7JXvinazLC2ZOM4QXfXifH6T6xmrnu5JQjs4QNMiskAo3sqNOthaNnUPte8pdg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xBAk3-003ECA-0y;
	Mon, 28 Sep 2026 14:45:59 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 14:45:57 +0200
Subject: [PATCH 1/2] arm: socfpga: mailbox_s10: add wrapper for RSU status
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-socfpga-agilex5-mbox-v1-1-9f6ec865e882@pengutronix.de>
References: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
In-Reply-To: <20260928-socfpga-agilex5-mbox-v1-0-9f6ec865e882@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_054601_510811_1E061104 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  SoCFPGA RSU (Remote System Update) on Agilex 5 is implemented
    in the SDM firmware. The RSU_STATUS command allows barebox to ask the SDM
    firmware, which image was booted and why booting other images failed. 
 
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
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
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
X-Rspamd-Queue-Id: 4F1B820026F
X-Stat-Signature: akw7zyzuaitdsiayadqw7jxaqj34sw9w

SoCFPGA RSU (Remote System Update) on Agilex 5 is implemented in the SDM
firmware.

The RSU_STATUS command allows barebox to ask the SDM firmware, which
image was booted and why booting other images failed.

Furthermore, RSU uses a custom partition table (SPT, sub-partition
table) for the partition layout in the flash, which is used by the
BootROM firmware to find the boot images. The GET_SUBPARTITION_TABLE
command allows barebox to ask the SDM firmware for the location of this
partition table to be able to inspect the SPT itself.

Add wrapper functions for RSU_STATUS and GET_SUBPARTITION_TABLE to have
a more convenient interface to the SDM firmware.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/mailbox_s10.c | 42 +++++++++++++++++++++++++++++++++++++
 include/mach/socfpga/mailbox_s10.h  | 23 ++++++++++++++++++++
 2 files changed, 65 insertions(+)

diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index fdbd7f272866..a3e208a2aa17 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -347,3 +347,45 @@ int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk)
 
 	return ret;
 }
+
+int mbox_rsu_get_spt(struct rsu_spt_offset *rsu_spt_offset)
+{
+	int ret;
+	u32 *resp_buf = (u32 *)rsu_spt_offset;
+	u32 resp_buf_len = sizeof(*rsu_spt_offset)/sizeof(*resp_buf);
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX,
+			    MBOX_GET_SUBPARTITION_TABLE,
+			    MBOX_CMD_DIRECT,
+			    0, NULL, 0, &resp_buf_len, resp_buf);
+	switch (ret) {
+	case MBOX_RESP_STATOK:
+		break;
+	default:
+		pr_err("MBOX_GET_SUBPARTITION_TABLE failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
+int mbox_rsu_status(struct rsu_status_info *status_info)
+{
+	int ret;
+	u32 *resp_buf = (u32 *)status_info;
+	u32 resp_buf_len = sizeof(*status_info)/sizeof(*resp_buf);
+
+	ret = mbox_send_cmd(MBOX_ID_BAREBOX,
+			    MBOX_RSU_STATUS,
+			    MBOX_CMD_DIRECT,
+			    0, NULL, 0, &resp_buf_len, resp_buf);
+	switch (ret) {
+	case MBOX_RESP_STATOK:
+		break;
+	default:
+		pr_err("MBOX_RSU_STATUS failed: %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
diff --git a/include/mach/socfpga/mailbox_s10.h b/include/mach/socfpga/mailbox_s10.h
index 0033bf40d45b..b006fb18ff09 100644
--- a/include/mach/socfpga/mailbox_s10.h
+++ b/include/mach/socfpga/mailbox_s10.h
@@ -7,6 +7,8 @@
 #ifndef _MAILBOX_S10_H_
 #define _MAILBOX_S10_H_
 
+#include <linux/types.h>
+
 /* user define barebox ID */
 #include <linux/bitops.h>
 #define MBOX_CLIENT_ID_BAREBOX	0x2
@@ -188,4 +190,25 @@ int socfpga_mailbox_s10_qspi_close(void);
 int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk);
 int socfpga_mailbox_s10_qspi_get_device_info(u32 *resp_buf, u32 resp_buf_len);
 
+struct rsu_spt_offset {
+	u32 spt0_hi;
+	u32 spt0_lo;
+	u32 spt1_hi;
+	u32 spt1_lo;
+};
+
+int mbox_rsu_get_spt(struct rsu_spt_offset *rsu_spt_offset);
+
+struct rsu_status_info {
+	u64 current_image;
+	u64 fail_image;
+	u32 state;
+	u32 version;
+	u32 error_location;
+	u32 error_details;
+	u32 retry_counter;
+};
+
+int mbox_rsu_status(struct rsu_status_info *status_info);
+
 #endif /* _MAILBOX_S10_H_ */

-- 
2.47.3



