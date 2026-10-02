Delivery-date: Fri, 02 Oct 2026 13:28:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCbQu-008p3k-09
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 13:28:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8398A201C7E
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 13:28:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YnNxDtpQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DsWWVBNm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790940487; a=rsa-sha256;
	cv=pass;
	b=SNt5B6T6urQ3grgKcW656heKPoEEz47W1GSoHpslyyKkLpwgLO9hz/WgFXJ/0Uw8l+oOgl
	OH4JERgCv2k3gW7mTNxAksh/rjHCoo0IuuFu1ARqOsI/xpAPKUcQq9FsQX8w1KeFBaev/P
	8OSjVIJqsSoJihblHmx6qQkOFNDrGOs+C/8HTVBCOcd7KIGN6+OvQp5CxdNYdOK7UxhL0P
	r7t6OIsnmFiFNjgxrW4LiDeandY6pX4VXP/yTNUzWPQ8ZSF6swNXm8528clyTLISnq9mGW
	35Lmic/M/r+KLUtmP0HcXBd4uxXeohzUXQA+s3kFK+0rcylUg/vZOBYWUcta7A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YnNxDtpQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DsWWVBNm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940487;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8veQQ8kzcHqjV424nMUVVArAZHFbb+DgagvzL+2ICI8=;
	b=Af+gBBKVZnG3UbTEp1/qcWKWw3g+hFm5rsGfnLvIJiXx9afOyHlKdh46zuu01MsiA3m0PM
	DcoQuu4XlT8xM3M2lVLuzReu7t/ZMpETQTGWMZg7ABvC9k5h9B4rszZcwecqh2FSNsm+o8
	8RlBhXG5DR4cIi2Zcn677YJsCNhGlne8CXeoBoGWCBS+JT8qiAj8J3Olu/mJWy+Xcoohym
	9kbhagM8dnOYC3gPyyePbbSPr7bj9GFleu3iWSQCgu4cU84TqOEX/HzaE/AxJ5x4GzQQ+2
	ks9mZTXhbSgzzq1QcYxtvvogrRVpCX9K77oIlJh4rsZPeOW3AIy74twsw7UgUQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8veQQ8kzcHqjV424nMUVVArAZHFbb+DgagvzL+2ICI8=; b=YnNxDtpQ5BYEF33TlI5Lu2q+7g
	qRA7cs0aEZtpik5SaHSW7CfMGBcdag/j0dm89ntTSF4a2AJMLukyxlesaSwEX1wBiMcPAG5quC2DV
	bpxzEKaaHYx/uAr/YArwRYJx7barlZNA5MuPZd6OiA80zNa4ptCjMps3OA6JabuYyaNVWqyN63fOO
	71sKjPKnuS+Fcl0TckSluDjFfqZIQR/Wai+6ITdeH+91/mtX1LCmAnDBrifwvVZ3cMdr6Oa2k4wNG
	Un5ZXTvgrmRPZsjevbkyshp2zGkqc/SXyuRobDU2AnBJeucJ3YytYoqEO8HimEKkLljbFpnujQHLu
	sSbIj/bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPl-0000000BTIJ-2ZAM;
	Fri, 02 Oct 2026 11:26:57 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCbPj-0000000BTGx-0w75
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 11:26:56 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 633AF201991;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8veQQ8kzcHqjV424nMUVVArAZHFbb+DgagvzL+2ICI8=;
	b=DsWWVBNm0IAwTljpgxmO5qg77W31TmwvA21kwocWZEA2lLBkOAYLqXOjopQa1JYfanl93A
	RrgZuVt2LEf9s8jWvPLjGpS8VhX0D5VKaYT07QGOWjdO8vSUuwLNLwZFwVeluUcOeCVrZU
	vdKcKo561tROelNF15VeVcATK4pftpcVOxsq+ZnuRKO5z0twPxUtPHEe7tP46xeQ3O1zrL
	E06Sb9wFWjWPgPz1ndkGKmkhnOQcFEuelSdq7mjm9jF4u6LBCQjKFtkPzzUeuCJdHMZUc/
	vxa8KX768PmxQv0B8V5/4d5azmpDRvlOPpK634Fc61ezwtlrpsDVGJhGOyw3rA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790940413; a=rsa-sha256;
	cv=none;
	b=KX8aV7pucSGKJTOGhKFIoU4kEJ6sOBYaYgC2QIAWnhlSzKKeLD3ArimBVQpheksxPQ5Clm
	qq5EYoBktVNWqa0fDeQ0OGtvQzgi0qrlfbA25T9Kn4Jm+hIXW9RVfTQjIoL8mEUe+gsGjY
	tfsAiB5HaCtK4n44T4I168EDC/ghcVBwUwu/hRo2Co6Kv7F4Peh1Ln0G1L4lVWupYXELe3
	0zQmUj34CMk8RdSTMzPIG+vzmo8P0cPx5cVr+qQ6gxTGafnRds43K9iSv7QzAgTUAQcyhN
	O+yuCPkJ3vDBP9siC9eeGzB4mq7Ge36UfClBt5bnxiKkQbgzi6JtnNzTTs2oZw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790940413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=8veQQ8kzcHqjV424nMUVVArAZHFbb+DgagvzL+2ICI8=;
	b=KHfJb9jqLnkbst4LzgZwzRH1WPeVuuTsImx9PPtwIPz4Jzn0I160xyGtkF2/UOdjnfTT/W
	QpnF+7uJdCnu2P3iLmOjFPh5WoTwyHXaxl+KGl+JdmON7JxOtBP3EnOtYJWSU3/tordPzM
	b5uVXV6JiiEugJWeYTJac5ZaD5jX1QG2YEAHIneVY9ooJneWXvO1PxoTCVzhTjzcpEZqby
	DJ9DKohemqum5/QNUiEHv111K8tqoCs9XyEkKNhMcWlvBfiA1ruPunKWhy85lb6mKOVbRf
	43lY3DraFEoHFzIFsvhXeBX9LdHyq72wtFDV3Uc4woldEiaTTxBmxg0X4+nQXQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 4D6BD74021F;
	Fri, 02 Oct 2026 13:26:53 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 1/4] bootm: define LINUX_BOOTARGS_BOOTM_EARLY/LATE in <bootm.h>
Date: Fri,  2 Oct 2026 13:26:31 +0200
Message-ID: <20261002112648.2899729-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_042655_410636_45965CDB 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We had previously laid out a prefix convention for the Linux
    command line options added by bootm, but only the late variant was added
   as nothing yet needed the early one. The FIT cmdline support will need it
   and lives outside bootm.c, so let's introduce LINUX_BOOTARGS_BOOTM_EARLY and
    move both prefixes into the header. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8398A201C7E
X-Stat-Signature: k4zbhrmxtkry1bpzgywk1cp55rbwke8q

We had previously laid out a prefix convention for the Linux command
line options added by bootm, but only the late variant was added as
nothing yet needed the early one.

The FIT cmdline support will need it and lives outside bootm.c, so let's
introduce LINUX_BOOTARGS_BOOTM_EARLY and move both prefixes into the
header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please reorder before Thomas' FIT command-line series
---
 Documentation/user/booting-linux.rst |  4 ++++
 common/bootm.c                       | 14 +-------------
 include/bootm.h                      | 14 ++++++++++++++
 3 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 529d4de5c5b8..de40b6a57dc0 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -112,6 +112,10 @@ their ``linux.bootargs.``-prefixed parameter names.
 Kernel command line arguments that barebox generates internally are not
 interleaved with externally provided command-line arguments:
 
+* Following arguments will be concatenated **before** all other options:
+
+  * the ``cmdline`` property of the booted FIT image configuration
+
 * Following arguments will be concatenated **after** all other options:
 
   * ``root=`` and ``rootwait=`` controlled by :ref:`global.bootm.appendroot <magicvar_global_bootm_appendroot>`
diff --git a/common/bootm.c b/common/bootm.c
index 27da1a590bf1..90b99d62b01e 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -22,19 +22,6 @@
 #include <security/config.h>
 #include <security/policy.h>
 
-/*
- * All device parameter iteration happens in lexicographical order.
- * To ensure that bootm options are consistently applied before or after
- * other options from the environment or boot configuration files, we
- * employ following convention for the prefix:
- *
- *   !		0x21 is less than any non-space printable character
- *   ~		0x7e is greater than any printable character
- *
- * Users will never see those as bootm_boot_cleanup() will delete them again.
- */
-#define LINUX_BOOTARGS_BOOTM_LATE	"linux.bootargs.~bootm."
-
 static LIST_HEAD(handler_list);
 static struct sconfig_notifier_block sconfig_notifier;
 
@@ -803,6 +790,7 @@ void bootm_boot_cleanup(struct image_data *data)
 	if (data->of_root_node)
 		of_delete_node(data->of_root_node);
 
+	globalvar_remove(LINUX_BOOTARGS_BOOTM_EARLY "*");
 	globalvar_remove(LINUX_BOOTARGS_BOOTM_LATE  "*");
 	free(data->os_header);
 	free(data->os_file);
diff --git a/include/bootm.h b/include/bootm.h
index 946713971eb5..8e574040f497 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -7,6 +7,20 @@
 #include <linux/list.h>
 #include <loadable.h>
 
+/*
+ * All device parameter iteration happens in lexicographical order.
+ * To ensure that bootm options are consistently applied before or after
+ * other options from the environment or boot configuration files, we
+ * employ following convention for the prefix:
+ *
+ *   !		0x21 is less than any non-space printable character
+ *   ~		0x7e is greater than any printable character
+ *
+ * Users will never see those as bootm_boot_cleanup() will delete them again.
+ */
+#define LINUX_BOOTARGS_BOOTM_EARLY	"linux.bootargs.!bootm."
+#define LINUX_BOOTARGS_BOOTM_LATE	"linux.bootargs.~bootm."
+
 enum bootm_verify {
 	BOOTM_VERIFY_NONE,
 	BOOTM_VERIFY_HASH,
-- 
2.47.3



