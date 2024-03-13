Delivery-date: Wed, 13 Mar 2024 20:46:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYc-004nnm-2t
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:46:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUYc-0000mZ-96
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:46:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RJ5f8qSuSz9uxCf0c85zwJzgCbh5HU5b2lLGSniBEjI=; b=Udabh0mqMh5S91Kr2tARsMz9js
	WXDLgs48QUzjuSvZe5XVMPe6ivRq9IBlFDy9eCMVEXG8o9IhhOBv6Qr6Jx6tezDDQgJh20AhB1MT6
	wM7btrnIfWq65jYUH2XKWCw17qo9yZzsb59qSoZAVmNW7NI9lyRqLZ+qXhoxYoJugMfneLip05OUB
	IdBIvvbsNRHA1dsIFTvSx5T0Hw3p5w3gU18d08rZNSo9rD+0yP8Nx3s3ibr7t4b9Nkgoxhah8b5U8
	k4HwWClz+uKZcxQ/RFeL218PxX3rTdG2eNgfEZOoenz/jBgYwm6ozs0pVNlV4oOyTWX0vGJJFv2mi
	nFTJAuaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUY3-0000000BgnS-3auI;
	Wed, 13 Mar 2024 19:45:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUXy-0000000BglT-4Bys
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:45:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUXv-0008L0-OV
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:45:51 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:45:46 +0100
Message-Id: <20240313194547.3725723-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313194547.3725723-1-m.felsch@pengutronix.de>
References: <20240313194547.3725723-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_124555_107233_CEE55348 
X-CRM114-Status: GOOD (  15.14  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/4] common: hostname: validate the provided hostname
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Port the systemd hostname_is_valid() function to perform hostname
validation and inform the user about a invalid hostname.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/misc.c | 66 +++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/common/misc.c b/common/misc.c
index e266f0951ee9..dc498ad0b318 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -13,6 +13,7 @@
 #include <led.h>
 #include <of.h>
 #include <restart.h>
+#include <string.h>
 #include <linux/stringify.h>
 
 int errno;
@@ -146,6 +147,67 @@ static char *hostname;
 static char *serial_number;
 static char *of_machine_compatible;
 
+/* Note that HOST_NAME_MAX is 64 on Linux */
+#define BAREBOX_HOST_NAME_MAX	64
+
+static bool barebox_valid_ldh_char(char c)
+{
+	/* "LDH" -> "Letters, digits, hyphens", as per RFC 5890, Section 2.3.1 */
+	return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') ||
+	       (c >= '0' && c <= '9') || c == '-';
+}
+
+static bool barebox_hostname_is_valid(const char *s)
+{
+	unsigned int n_dots = 0;
+	const char *p;
+	bool dot, hyphen;
+
+	/*
+	 * Check if s looks like a valid hostname or FQDN. This does not do full
+	 * DNS validation, but only checks if the name is composed of allowed
+	 * characters and the length is not above the maximum allowed by Linux.
+	 * Doesn't accept empty hostnames, hostnames with leading dots, and
+	 * hostnames with multiple dots in a sequence. Doesn't allow hyphens at
+	 * the beginning or end of label.
+	 */
+	if (isempty(s))
+		return false;
+
+	for (p = s, dot = hyphen = true; *p; p++) {
+		if (*p == '.') {
+			if (dot || hyphen)
+				return false;
+
+			dot = true;
+			hyphen = false;
+			n_dots++;
+
+		} else if (*p == '-') {
+			if (dot)
+				return false;
+
+			dot = false;
+			hyphen = true;
+
+		} else {
+			if (!barebox_valid_ldh_char(*p))
+				return false;
+
+			dot = false;
+			hyphen = false;
+		}
+	}
+
+	if (dot || hyphen)
+		return false;
+
+	if (p - s > BAREBOX_HOST_NAME_MAX)
+		return false;
+
+	return true;
+}
+
 /*
  * The hostname is supposed to be the shortname of a board. It should
  * contain only lowercase letters, numbers, '-', '_'. No whitespaces
@@ -156,6 +218,10 @@ void barebox_set_hostname(const char *__hostname)
 	globalvar_add_simple_string("hostname", &hostname);
 
 	free(hostname);
+
+	if (!barebox_hostname_is_valid(__hostname))
+		pr_warn("Hostname is not valid, please fix it\n");
+
 	hostname = xstrdup(__hostname);
 }
 
-- 
2.39.2



