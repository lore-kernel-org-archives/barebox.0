Delivery-date: Mon, 17 Aug 2026 16:14:06 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvy6H-0049b8-20
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 16:14:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3612D200C95
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 16:14:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OS9oe1LI;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rsq0j4bScF+eeYk36/GaI1xYQvDtrO1m5kRPakumfiw=; b=OS9oe1LIpjtmxUW9JDo5taJ+wO
	eEXihG9aHGiskJ3PQ7H9oL73oDjzkJVs2t3OSH/JYVGzl1QCjI3a4spvy1MajwryE+GBfvLlzE/dd
	tF3Vb3RhLzIr5SQ5l4wrI57PalFHDTo7FdSyKXY60n1dzkGEkUSMcqPCOQZbIW7Grkdi+ZpMq8hfI
	P+OSSOpGMvjL5SPBPvtp6pCT5g8TVx+Ze4Y/UU84+kkpgYw2IDAv6B4F7+zU0+uoAZJLCyDYXVuMv
	Rk55y3w3ryeSAeP5po1wu6BcGkPf0U04b1S53qEN9VknycTwIf4KR5dgC+RsJRP/VbEImRXdKqfKe
	Z69zSTWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvy5u-00000006HE4-3O5h;
	Mon, 17 Aug 2026 14:13:42 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvy5r-00000006HDZ-2ORh
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 14:13:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 08C1D200C95;
	Mon, 17 Aug 2026 16:13:36 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wvy5n-001yAp-34;
	Mon, 17 Aug 2026 16:13:35 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 17 Aug 2026 16:13:26 +0200
Subject: [PATCH] scripts: gdb: fix missing pbl_barebox_break error message
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260817-fix-gdb-script-error-message-v1-1-4ebbaff5c131@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAAUXg2oC/x3MSwqAMAwA0atI1gbaKipeRVzUGjULPyQignh3g
 8uBxzygJEwKbfaA0MXK+2bh8wzSEreZkEdrCC5UrvE1TnzjPA6oSfg4kUR2wZVUo9kwBF9EV5V
 lKsAWh5D5f9/17/sBKL/F+24AAAA=
X-Change-ID: 20260817-fix-gdb-script-error-message-2b213a0644c3
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Bruno Knittel <bruno.knittel@bruker.com>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_071339_774065_808C3AE8 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Bruno Knittel <bruno.knittel@bruker.com> If no pbl_barebox_break
    symbol is found in the file provided to bb-load-symbols, the script is failing
    with a Python exception stating that BBSymbols has no path attribute. 
 
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
X-Stat-Signature: r9zbbffti9jks48j81kkyuou4sw34oqq
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 3612D200C95

From: Bruno Knittel <bruno.knittel@bruker.com>

If no pbl_barebox_break symbol is found in the file provided to
bb-load-symbols, the script is failing with a Python exception stating
that BBSymbols has no path attribute.

Fix the error handling to actually print the error message.

Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 scripts/gdb/helper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/gdb/helper.py b/scripts/gdb/helper.py
index 40417898902e..e92b1fe65a57 100644
--- a/scripts/gdb/helper.py
+++ b/scripts/gdb/helper.py
@@ -33,7 +33,7 @@ class BBSymbols(gdb.Command):
         symbol = section.get_symbol_by_name("pbl_barebox_break")
         if not symbol:
             gdb.write("Symbol pbl_barebox_break in section {} in file {} not found\n"
-                      .format(section.name, self.path), gdb.STDERR)
+                      .format(section.name, path), gdb.STDERR)
             return
         symbol = symbol[0]
         pc = gdb.parse_and_eval("$pc")

---
base-commit: 3317ac1baff3b0226caba7f83f3da61bc407343a
change-id: 20260817-fix-gdb-script-error-message-2b213a0644c3

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



