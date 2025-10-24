Delivery-date: Fri, 24 Oct 2025 11:07:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm2-00BGGO-1z
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 11:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDlz-0008FX-DZ
	for lore@pengutronix.de; Fri, 24 Oct 2025 11:07:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nbJpyS3zSRxKyESqu7vR2Ib2CxK69XXddmNgxjQCB5k=; b=ggaEHMqLms3X7QjxVo+NXIYzU4
	tL9PBeyTl4vIV2N0LEFXHQ6BckP3+RQZ5LqMG3k0oZCtpOMn3kX/E0LF4W4I9Y3gxX+HoMF5MELQ4
	+gJGiv9+0Qswbg/InF9cPHFViXWUzeIjD0x8cFour7N49WGOKEIx6im43fc+VrPg0j7gorHdiQnvr
	gGT1t6i1eAg+8qEGMYntkg8ryBxz71vEhRoMZtUWxHMqN5fqf+WanuHI73D+LAkjzYuCLHAHDH2fJ
	7qePPYSP84/5XlS0ArXgCyZI0HQWZzrJhzATTQenIT3SgHLuUSS0FqmqBt3nw3o1NZQsHC5UcAE7Z
	MV8a7WNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlU-00000008oNz-3LPw;
	Fri, 24 Oct 2025 09:07:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlP-00000008oL0-0sw3
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0007wx-Ck; Fri, 24 Oct 2025 11:07:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-005CM9-0f;
	Fri, 24 Oct 2025 11:07:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0000000AOAP-0TGq;
	Fri, 24 Oct 2025 11:07:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 11:07:02 +0200
Message-ID: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020711_248976_3E4CAA54 
X-CRM114-Status: GOOD (  10.20  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,WEIRD_QUOTING
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] Documentation: gen_commands.py: escape special characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commands/global.c has following line:

  BAREBOX_CMD_HELP_TEXT("Without options, print all global and env
                        (prefixed with *) variables.")

which triggers a warning as the * has a special meaning in ReST and it
is never terminated.

On the other hand, we have escapes for double quotes, which should be
stripped:

  BAREBOX_CMD_HELP_TEXT("- \"bootchooser\": boot with barebox bootchooser")

Fix these and other issues by processing escapes for all strings we extract,
except for those in literal blocks.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 4fcb4dda6e74..53fd59d8f692 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -26,12 +26,19 @@ CMD_END    = re.compile(r"""^BAREBOX_CMD_END\s*$""")
 
 CONT = re.compile(r"""\s*"(.*?)"\s*\)?\s*$""")
 
+ESCAPE = re.compile(r"""([*_`|<>\\])""")
+UNESCAPE = re.compile(r'''\\(["\\])''')
+
 CMDS = {}
 
+
+def string_escape_literal(s):
+    return re.sub(UNESCAPE, r'\1', s.replace(r'\t', '').replace(r'\n', ''))
+
+
 def string_escape(s):
-  # This used to do s.decode("string_escape") which isn't available on Python 3.
-  # Actually we only need to drop '\t' and '\n', so do this here.
-  return s.replace(r'\t', '').replace(r'\n', '')
+    return re.sub(ESCAPE, r'\\\1', string_escape_literal(s))
+
 
 def parse_c(name):
   cmd = None
@@ -78,7 +85,7 @@ def parse_c(name):
     x = CMD_OPTS.match(line)
     if x:
       last = cmd['c_opts']
-      last.append(string_escape(x.group(1)))
+      last.append(string_escape_literal(x.group(1)))
       continue
     x = CMD_GROUP.match(line)
     if x:
-- 
2.47.3



