Delivery-date: Wed, 26 Aug 2026 14:21:43 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzCdS-007QnW-1T
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 14:21:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 02E2320227A
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 14:21:39 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=CFhwuS37;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GdHesUpf1OkfagP+iwuzJO5Q1z36JcOMHjq30Eyf0vA=; b=CFhwuS37F8U7JhEawCG6tOwwrf
	4ErV7IG2SLsSj66Yqj+kqmH+1ba/O9POc2Jb89rDcV1NZo16YBEK70wM+CNm70n0rMNw0qocz+wgG
	JH6Fe2g8YHOX2U9FQfH3a7Rq2wE7kPw7O3XStP3CGU+TpNHKN4aAM/XzzAW+Twd8T7p7e0kgOT6RF
	8leg18yVaw+lPCPUy7jik/5/rKNXXKmEgbWStX8YRZBdfvKqi4nl9n2tnVG8ASI6YqDdnRvPvwier
	84KlfWnsB3sdXyOesM3lCgZk1GqHWo//nqi7G1y6b+ioruxxLnAwhcje5K/jLHv6z0eoBOCnogqHx
	YzJkbGyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbw-00000002Pkg-0FXv;
	Wed, 26 Aug 2026 12:20:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCbq-00000002Pi2-3IGv
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1275B202101;
	Wed, 26 Aug 2026 14:19:57 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-003RB4-34;
	Wed, 26 Aug 2026 14:19:56 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCbk-0000000CK1K-3Zbs;
	Wed, 26 Aug 2026 14:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 2/9] globalvar: skip empty variables in globalvar_get_match()
Date: Wed, 26 Aug 2026 14:17:06 +0200
Message-ID: <20260826121956.2936414-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
References: <20260826121956.2936414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_052003_181049_A2182250 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  globalvar_get_match() concatenates all matching variables
   with the separator, whether they have a value or not. As variables like global.linux.bootargs.base
    or global.linux.bootargs.dyn.* are register [...] 
 
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: arzs5wapy9eh136rrhsypfncom8xyhk5
X-Rspamd-Queue-Id: 02E2320227A

globalvar_get_match() concatenates all matching variables with the
separator, whether they have a value or not. As variables like
global.linux.bootargs.base or global.linux.bootargs.dyn.* are registered
unconditionally, but often left empty, the resulting kernel command line
would contain runs of multiple spaces.

Treat variables without a value as if they didn't exist at all.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 common/globalvar.c                   | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 95834786b67a..fa5a355183eb 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -87,7 +87,7 @@ With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
 from different :ref:`global device<global_device>` variables and the
 :ref:`bootargs <magicvar_bootargs>` environment variable is ignored.
 All variables beginning with ``global.linux.bootargs.`` will be concatenated
-to the bootargs:
+to the bootargs. Variables without a value are skipped:
 
 .. code-block:: sh
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b2538e..41f3e93b00e1 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <string.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <libfile.h>
@@ -419,7 +420,8 @@ void globalvar_print(void)
  * globalvar_get_match
  *
  * get a concatenated string of all globalvars beginning with 'match'.
- * This adds whitespaces between the different globalvars
+ * This adds the separator between the different globalvars. Variables
+ * without a value are skipped.
  */
 char *globalvar_get_match(const char *match, const char *separator)
 {
@@ -429,6 +431,8 @@ char *globalvar_get_match(const char *match, const char *separator)
 	dev_for_each_param(&global_device, param) {
 		if (!strncmp(match, param->name, strlen(match))) {
 			const char *p = dev_get_param(&global_device, param->name);
+			if (isempty(p))
+				continue;
 			if (val) {
 				char *new = basprintf("%s%s%s", val,
 							separator, p);
-- 
2.47.3



