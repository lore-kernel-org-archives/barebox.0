Delivery-date: Mon, 26 Oct 2026 13:52:41 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKBt-003Vmq-0o
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 13:52:41 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E34852022DF
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 13:52:40 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RBWR2fYO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UDSJhaho;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019161; a=rsa-sha256;
	cv=pass;
	b=X9Yg5n6q2WQrTciL52XGN/Wc3pgQ+9RFK7fZLXBwOZHDTsL7WL6rLSJgijFB2dCTcqXfhp
	ptgU0ZfoMc9HwJJgwma6aScORVEdFhnEsenpIWJYachiHy6B/4PYQ2pP/b5oFWAcMCMjlq
	dCm7R5Z6jUwBG0WMsyxO/mNtBPVbXgBADVE4VxT9ti7XihfP2elzGduI2Xk2j2aQqHbvNO
	AWdPfaAzBG3TOhj/2s4IOaZRCKgeQPHSOIsYngn4sQEEsxgcty+LsrbHsv+0fs9g5AVYTK
	J1qn3OLMujZdxIoi9OC3UAxo3AtDs3shCA6ZEDTLjvTNnp13gUSZ1P+ZRJtq7A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RBWR2fYO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UDSJhaho;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019161;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=TCUnLst7boM+OhiWFUvReTMNV22N0tkJKWCLRbehStM=;
	b=QOi06qHZ1qokkPbkBJuIk/AKhMXUfCFSWXcM8TkOvF6kXsozliZMnCf3f7+xea1MdF3+h0
	3CVDTmv3Q63IEtIGfX66lPvYgoazn4saKd4mnFqkYWh4QeoRvRIDHD7DHfhGSGkGPDbkWh
	tluDtpiBZk5of+js4kzWx9zgqbyIrwMTFoEnNJV/ElJhn7J85V2t5+AhQl06tW//cHx953
	ingFeYlhMHYyuPbV69gK6aW0q75XEVih3NFnUk9rtdFR3cnLxG+W8BvSdwTevWrId9blQ8
	2EsOhw99SCSTeRRirwhYUQO2nzMQWbCurEc21FQvj/p+EGOGZE2nMOR5m3XNnw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=TCUnLst7boM+OhiWFUvReTMNV22N0tkJKWCLRbehStM=; b=RBWR2fYO8gqs93
	jVdX1xS1PdUjvRZutSZHFnBEJaBI37sQy/8/3DbkMUy8NEOqPMhv5Gw/JgB1d/Ndx9RfcQepkOy/R
	et8Wfoox6ekCj2m5CfCKFXIXnr9x0N9As2g/rApJsWUc53ct0DCX8YKCLhiPUQlDh7erbipNthwdt
	5GO7Cf4Go92Xuu9lPvZvcOyBNzWUlsfSMHLJhLVH/SfKnf5wYncna9HXKdIRBoSjc2l+gnG28u9Rn
	4u52SxXbHW+LKTpELZaqF5LzHgp19ZuGtbAYVA9osvtMLXTg3R0LOc+DYtv2fglCfazHqwsU/Uqi3
	vltHjVAxyVTpuFI6xN3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYd-00000002THR-1Qha;
	Mon, 26 Oct 2026 12:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYY-00000002TBh-3fAR
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:04 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id ADFA7202359;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TCUnLst7boM+OhiWFUvReTMNV22N0tkJKWCLRbehStM=;
	b=UDSJhahoivmIetjuw3l8axugOSiU4P4MsMl5Dh23bfhg+hsXZIaFkO83IUGRY3IV4ZMCbL
	JPb4GgWhgKazNs5eZ92RDcj+SUeCOxLZICFvl1AnzNRYl55JHooHic+HPzEI7N1FjyFq/e
	UPMzO1fswgjZ/U4iGW88EgLV6MImK329qHAKPbPC8E7ZGKALzZCHv5EroFpCkenPydbM21
	n5Mqg2vihyXGCOaBTl/vmYdb5snPAH8mfZLgLso5iE4SLh3k678hQIbCGq6LIakbh5mnN3
	AgUSJpKWhzF5E2+O3ydpjsgFPUe0zLcU6Ifo3Vvz3OYf/9Q1NFxjb3f84ohXtA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016716; a=rsa-sha256;
	cv=none;
	b=UTguf6Zgau0Rd5p34KjMNHCSyVFSWNcmAW+XX/jnp/y6ug0fGf6HFig0+20TvCwxV4QsNv
	KA0QpH5PNj+kitMvWXQqY0CIJTCiuUuTdp5wCt0xuOySOVBym4MBZV3KgDxKCI7Uzdrutm
	4RvC5vsC+kCpHdEPmXRNIv9p6iOB0eldqfWYe0PYfx9JbZHKDHfTHtwbrFaCrm05QRESJ/
	vGhMeJHJ9Bibsc6Nr8PH2nNds2mSMblt2uswsEvesP5KtM95MJMQeFAhWZ32uzGPTOswnr
	E11MyNdoNTfsvVkMurFXW5HlXqkEJ6tMiyOtOk3kzzLerRW/m61I5HA8FCLC7Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016716;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TCUnLst7boM+OhiWFUvReTMNV22N0tkJKWCLRbehStM=;
	b=KjY5SD3wXL9e/7O764TnEuXOlFzvFUhqoUpBmEhtx32AI233UW+sa7XuW7Ee/E5ONd3+ru
	zp/sUomkZcyt7IFAqqncNK0rVsWQ7G0Dpy9NJXhg04HW93QlcS4vCQleb3IrMdTfsnYNUO
	9nWh6ZWINXuPfwXoAVLyI5L77snY4E9yS1v7oxlJQOwZtCilGRgK9SD2llO2zeNu2h4QFW
	Q8XZVkmgy375NkAB1M3QaCRkKWxyie+DLCK5MzTyvU+F1PfnEy35L4h/yhwmciGFa9zUVb
	HzVRWxCftk3cXr+k0k9rQLdPGGblEC0FrV7153MpP38Jb12jKa7/QYblyu1Zxw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9456C743959;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 05/12] globalvar: skip empty variables in globalvar_get_match()
Date: Mon, 26 Oct 2026 13:09:56 +0100
Message-ID: <20261026121150.455510-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051203_125812_D76DD9F0 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  globalvar_get_match() concatenates all matching variables
   with the separator, whether they have a value or not. As variables like global.linux.bootargs.base
    or global.linux.bootargs.dyn.* are register [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: E34852022DF
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
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
X-Stat-Signature: 1miuth68k4fhtajnmegame5r5896ijur

globalvar_get_match() concatenates all matching variables with the
separator, whether they have a value or not. As variables like
global.linux.bootargs.base or global.linux.bootargs.dyn.* are registered
unconditionally, but often left empty, the resulting kernel command line
would contain runs of multiple spaces.

Treat variables without a value as if they didn't exist at all.

Assisted-by: Claude:fable-5
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 2 +-
 common/globalvar.c                   | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 534b27e2167b..9dbd3880091f 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -89,7 +89,7 @@ With ``CONFIG_FLEXIBLE_BOOTARGS`` enabled, the bootargs are composed
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



