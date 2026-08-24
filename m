Delivery-date: Mon, 24 Aug 2026 13:57:47 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyTJC-006gli-32
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 13:57:47 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8B4CC201B9A
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 13:57:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=v0jZUD44;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=951A3zVn3BpzJoXtY94G844z8vhpla6+e+kWXYdj7Is=; b=v0jZUD44x6ZBvWWvYOI00Fjc5C
	BBf9Iv+6XIifPCV9ii/+THlQaoKR6ot770/xs0ZYgrt/X7+ZZah7TgIIw59WziUcsGzbJKtCWHr1Q
	LD2rFOz/YwJLSLV7oBV556d66hTDB9o2VcqpxkjaY12fcQ9Bh2w2Bvv39JnKbc1lhnIERJ2GLP+OI
	sZTCuFMeZtCPE0py4kGBX0iS7fyZS7784IVYLtnqmbKYgSN18NF5zmGb8hqRgVAAPBpCU1TL68ngS
	S9hYlTNKAQGnXDAEbyP5xiEoiOmxkvp+XCfzpS9SqZvL7ZkUIWv7Qt7mJE9xs8zd/VzSYQa/MPANf
	RV0xMV5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHz-0000000GYax-0R0D;
	Mon, 24 Aug 2026 11:56:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyTHu-0000000GYZM-2xgy
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 11:56:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 70FB9201B9A;
	Mon, 24 Aug 2026 13:56:24 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-00367z-1B;
	Mon, 24 Aug 2026 13:56:24 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wyTHs-0000000DTPB-10sV;
	Mon, 24 Aug 2026 13:56:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 4/4] Documentation: gen_commands: deduplicate entries from multiple definitions
Date: Mon, 24 Aug 2026 13:55:34 +0200
Message-ID: <20260824115619.3148656-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
References: <20260824115619.3148656-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_045628_055869_7CBA90FC 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Some commands, like cpuinfo, are defined once per architecture
    with identical BAREBOX_CMD_DESC/OPTS/HELP blocks. When several such definitions
    end up in one parse run, the generated rst repeated the d [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Stat-Signature: 71xwiu1bt9gid7eijn1inzwb3ah8dx9y
X-Spamd-Result: default: False [-6.21 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 8B4CC201B9A

Some commands, like cpuinfo, are defined once per architecture with
identical BAREBOX_CMD_DESC/OPTS/HELP blocks. When several such
definitions end up in one parse run, the generated rst repeated the
description, usage string and every option once per definition:

  https://www.barebox.org/doc/2026.07.0/commands/info/cpuinfo.html

Deduplicate descriptions, usage strings and option lists before
emitting them, and join multiple usage strings with a space instead of
concatenating them back to back. Also preserve leading indentation of
help text lines by only stripping trailing whitespace, so preformatted
help text is not flattened.

Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 1a7353a854cd..04d7cc3b435a 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -57,7 +57,7 @@ def parse_c(name):
 
         elif x := HELP_TEXT.match(line):
             last = cmd['h_post' if 'h_opts' in cmd else 'h_pre']
-            last.append(string_escape_literal(x.group(1)).strip())
+            last.append(string_escape_literal(x.group(1)).rstrip())
 
         elif x := HELP_OPT.match(line):
             last = cmd['h_opts']
@@ -97,6 +97,17 @@ def parse_c(name):
                 cmd = last = None
 
 
+def uniq(seq):
+    seen = set()
+    out = []
+    for x in seq:
+        key = tuple(x) if isinstance(x, list) else x
+        if key not in seen:
+            seen.add(key)
+            out.append(x)
+    return out
+
+
 def gen_rst(name, cmd):
     out = []
     out.append('.. index:: %s (command)' % name)
@@ -104,7 +115,7 @@ def gen_rst(name, cmd):
     out.append('.. _command_%s:' % name)
     out.append('')
     if 'c_desc' in cmd:
-        out.append("%s - %s" % (string_escape(name), ''.join(cmd['c_desc']).strip()))
+        out.append("%s - %s" % (string_escape(name), ''.join(uniq(cmd['c_desc'])).strip()))
     else:
         out.append("%s" % (string_escape(name),))
     out.append('=' * len(out[-1]))
@@ -112,7 +123,7 @@ def gen_rst(name, cmd):
     if 'c_opts' in cmd:
         out.append('Usage')
         out.append('^' * len(out[-1]))
-        out.append('``%s %s``' % (name, ''.join(cmd['c_opts']).strip()))
+        out.append('``%s %s``' % (name, ' '.join(uniq(cmd['c_opts'])).strip()))
         out.append('')
     if 'h_pre' in cmd:
         pre = cmd['h_pre']
@@ -129,7 +140,7 @@ def gen_rst(name, cmd):
     if 'h_opts' in cmd:
         out.append('Options')
         out.append('^' * len(out[-1]))
-        for o, d in cmd['h_opts']:
+        for o, d in uniq(cmd['h_opts']):
             o = o.strip()
             d = d.strip()
             if o:
-- 
2.47.3



