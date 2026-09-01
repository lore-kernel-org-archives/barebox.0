Delivery-date: Tue, 01 Sep 2026 14:36:31 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1Nj4-009dxQ-17
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 14:36:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C8D1F200700
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 14:36:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xidSVgsM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KouSoPr3JYnr3sCz9DIXyP4RHJmmfuxsMTwtIp11PiA=; b=xidSVgsMf3ZGn63fKx1Qvbp6Pe
	KU+74CXgwuHd/e+rjPuuaaIKJRi8gLM5e107dK/1oH5Ozj3IjGsjg2hPt+CycuUS4YRXkcew0yM1Z
	JrDABUWncnvWdJmMi9OmELz4KaRJFuDHS4Veyp6CW6p+eG/oOIITo+B7HDCnF9z99I2tVdqI6hJ3Q
	QayENtg0ktXzjqWEDtYeiLktvqtRzEIYdPg+AzYGTJocUfRgCXUyMnSP2q9QyyecTtks+8u1+amkU
	C0v34UQ/s5mwRd1iS/6CA0INEzMrtZ3qgUrUX63EZCCIVO6eoXqEZHYdOCUQXuKZnl2MT5bHTAPzA
	d+ZkXG2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Nbh-0000000C6oS-340w;
	Tue, 01 Sep 2026 12:28:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Nbf-0000000C6n7-0GIi
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 12:28:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 51846205830;
	Tue, 01 Sep 2026 14:28:43 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x1NbX-004QNs-0p;
	Tue, 01 Sep 2026 14:28:43 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x1NbX-0000000CbcI-0fIc;
	Tue, 01 Sep 2026 14:28:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Fabian Pflug <f.pflug@pengutronix.de>
Subject: [PATCH] defaultenv: don't pass environment path to zero env
Date: Tue,  1 Sep 2026 14:28:31 +0200
Message-ID: <20260901122834.3004512-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_052851_248948_D1A46D8D 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes
    envfs_save() emit a bare header and never look at its directory argument.
    Passing CONFIG_DEFAULT_ENVIRONMENT_PATH there was pointless, but ha [...]
    
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: 55km1nj4isnuasugehgsnnsa5mmhaomw
X-Rspamd-Queue-Id: C8D1F200700
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

bareboxenv -z sets ENVFS_FLAGS_FORCE_BUILT_IN, which makes envfs_save()
emit a bare header and never look at its directory argument. Passing
CONFIG_DEFAULT_ENVIRONMENT_PATH there was pointless, but harmless until
the Kconfig sync made auto.conf no longer quote string options:
The result is that the quotes became part of the value.

This is triggered by OpenEmbedded's barebox.bbclass for example, which
overrides the option on the make command line in the old, quoted form:

  oe_runmake CONFIG_DEFAULT_ENVIRONMENT_PATH="\"${BAREBOX_DEFAULT_ENV} ${BAREBOX_ENV_DIR}\""

The recipe's quotes split this value apart:

  bareboxenv -z "" /path/to/env"" defaultenv/barebox_zero_env

and bareboxenv takes the environment directory for its output file and
then aborts with "open: Is a directory".

Thus drop the argument. The generated file remains unchanged.

It's probably also apt to drop the quotes from newer versions of the
barebox.bbclass even though it doesn't currently lead to other errors.

Fixes: 243abef11b8f ("kconfig: sync with Linux v6.18")
Reported-by: Fabian Pflug <f.pflug@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 79edf5604cf6..6c429d5c3b0b 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -32,7 +32,7 @@ $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(bbenv-suffix-y) FORCE
 	$(call if_changed,env_h)
 
 quiet_cmd_env_zero = ENVZ    $@
-cmd_env_zero = ($(objtree)/scripts/bareboxenv -z "$(CONFIG_DEFAULT_ENVIRONMENT_PATH)" $@)
+cmd_env_zero = $(objtree)/scripts/bareboxenv -z "" $@
 
 $(obj)/barebox_zero_env: FORCE
 	$(call if_changed,env_zero)
-- 
2.47.3



