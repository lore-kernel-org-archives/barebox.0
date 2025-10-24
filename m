Delivery-date: Fri, 24 Oct 2025 11:07:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm2-00BGGj-2n
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 11:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm0-0008G6-8R
	for lore@pengutronix.de; Fri, 24 Oct 2025 11:07:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8e8pW69S722qC8chTKwGqr6FZOKgVnNIdgQbM63t/U=; b=bqU3hk/WdK1Xm7RiHU09OQQhPB
	APMSFjOQgDd9Ps65ukZlWH5REr1dASZ7gtIrUtqCyUkMPz5MkUBW1YLRPixlZuA3+CHbK+2q6ALdk
	i/sDJuI8AhX4D5hpgccbAMKTXWDDVqDG86wIsoGm9HS7Bgkd19F73sREG9qzz/binWV04V2JI5Xb0
	YNBACXO1a9paDsLFjllRF6Bfhqg3bwZa63k/tSHQJXxbw+MIQbgF4k6kCbx+ohR33hKQrjXSkenkz
	a9jkfgbK7+QofmfYKnOaK2g2coI1dVRySVTXBlMZa0HAmnKpa4q0scxdFVGWMf6ucX5lTHJ76d3q5
	LdsO2ZIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlR-00000008oMT-2Oaj;
	Fri, 24 Oct 2025 09:07:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlP-00000008oKy-0tQ1
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0007wz-GX; Fri, 24 Oct 2025 11:07:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-005CMD-0y;
	Fri, 24 Oct 2025 11:07:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0000000AOAP-0r3e;
	Fri, 24 Oct 2025 11:07:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 11:07:04 +0200
Message-ID: <20251024090708.2476109-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
References: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020711_249420_21857D31 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] Documentation: gen_commands.py: rework if statements for compactness
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code can get a bit easier to follow by removing some clutter:

- use elif instead continue
- combine assignments and checks into one line

No functional change. This was verified by regenerating the docs and
checking the diff.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 66 ++++++++++++++---------------------
 1 file changed, 27 insertions(+), 39 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 8e129d6b253f..2f15c8b40540 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -44,69 +44,57 @@ def parse_c(name):
     cmd = None
     last = None
     for line in open(name, 'r'):
-        x = HELP_START.match(line)
-        if x:
+        if x := HELP_START.match(line):
             cmd = CMDS.setdefault(x.group(1), defaultdict(list))
             cmd.setdefault("files", set()).add(name)
-            continue
-        x = CMD_START.match(line)
-        if x:
+
+        elif x := CMD_START.match(line):
             cmd = CMDS.setdefault(x.group(1), defaultdict(list))
             cmd.setdefault("files", set()).add(name)
-            continue
-        if cmd is None:
-            continue
-        x = HELP_TEXT.match(line)
-        if x:
-            if 'h_opts' not in cmd:
-                last = cmd['h_pre']
-            else:
-                last = cmd['h_post']
+
+        elif cmd is None:
+            pass
+
+        elif x := HELP_TEXT.match(line):
+            last = cmd['h_post' if 'h_opts' in cmd else 'h_pre']
             last.append(string_escape(x.group(1)).strip())
-            continue
-        x = HELP_OPT.match(line)
-        if x:
+
+        elif x := HELP_OPT.match(line):
             last = cmd['h_opts']
             last.append([
                 string_escape(x.group(1)),
                 string_escape(x.group(2)),
             ])
-            continue
-        x = CMD_FUNC.match(line)
-        if x:
+
+        elif x := CMD_FUNC.match(line):
             last = cmd['c_func']
             last.append(x.group(1))
-            continue
-        x = CMD_DESC.match(line)
-        if x:
+
+        elif x := CMD_DESC.match(line):
             last = cmd['c_desc']
             last.append(string_escape(x.group(1)))
-            continue
-        x = CMD_OPTS.match(line)
-        if x:
+
+        elif x := CMD_OPTS.match(line):
             last = cmd['c_opts']
             last.append(string_escape_literal(x.group(1)))
-            continue
-        x = CMD_GROUP.match(line)
-        if x:
+
+        elif x := CMD_GROUP.match(line):
             last = cmd['c_group']
             last.append(x.group(1).split('_')[-1].lower())
-            continue
-        x = CONT.match(line)
-        if x:
+
+        elif x := CONT.match(line):
             if last is None:
                 raise Exception("Parse error in %s: %r" % (name, line))
             if isinstance(last[-1], str):
                 last[-1] += string_escape(x.group(1))
             elif isinstance(last[-1], list):
                 last[-1][1] += string_escape(x.group(1))
-            continue
-        x = HELP_END.match(line)
-        if x:
-            cmd = last = None
-        x = CMD_END.match(line)
-        if x:
-            cmd = last = None
+
+        else:
+            if x := HELP_END.match(line):
+                cmd = last = None
+            if x := CMD_END.match(line):
+                cmd = last = None
 
 
 def gen_rst(name, cmd):
-- 
2.47.3



