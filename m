Delivery-date: Fri, 24 Oct 2025 11:07:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm2-00BGGW-2F
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 11:07:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDlz-0008FT-Dh
	for lore@pengutronix.de; Fri, 24 Oct 2025 11:07:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N0iQq/CpVGyysd0aiAlo5llVUiZjAYkxOXMV+71aDvQ=; b=0dcyoiRFSdnkPt/+wWMMAalW5p
	ps2wuHFIE2c+7T+r20DjcVmsXTI4Z1gcdx1Lz1KCxzD51hdK/k0BVVDYC8KUuTRxXAYYqpH4j3HTy
	4hOPPsABKf2OoOqaMA27myetq0lGVZYWvA/9o7P7/jENilm7H6KMPu0QuRN4bSa2S1GX7GU/9Y0rm
	DCAazymWTmzC7lD3nYyqOg3JLQcGAZXbFv2VxnJ7Kp2cZyzbFXFr6Jvg7gz5Xf0+bah2yc0sBIfvf
	5s1jQnHL9SoGUOWlroLADX7IK6Y3t4NVTNPBsby2gQTagxzdC4u+FXiHxMqIeDAf2GR5d2uR2EFfc
	kxSX2Zng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlS-00000008oMj-0yQM;
	Fri, 24 Oct 2025 09:07:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlP-00000008oKz-0t6f
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0007x0-Hn; Fri, 24 Oct 2025 11:07:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-005CMG-17;
	Fri, 24 Oct 2025 11:07:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0000000AOAP-13TP;
	Fri, 24 Oct 2025 11:07:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 11:07:05 +0200
Message-ID: <20251024090708.2476109-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
References: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020711_249426_D3D5FB7C 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 4/5] Documentation: gen_commands.py: use literal block for help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The help text can have lists, like in the boot command[1] and printing
this as normal text messes up the formatting.
Therefore, let's just print it as a code block.

This doesn't solve interleaved output like fiptool's, but it makes e.g.
the boot help text or menu actually readable.

[1]: https://www.barebox.org/doc/latest/commands/boot/boot.html

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 2f15c8b40540..f8a7ed7b879f 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -57,7 +57,7 @@ def parse_c(name):
 
         elif x := HELP_TEXT.match(line):
             last = cmd['h_post' if 'h_opts' in cmd else 'h_pre']
-            last.append(string_escape(x.group(1)).strip())
+            last.append(string_escape_literal(x.group(1)).strip())
 
         elif x := HELP_OPT.match(line):
             last = cmd['h_opts']
@@ -123,7 +123,8 @@ def gen_rst(name, cmd):
         if pre:
             out.append('Synopsis')
             out.append('^' * len(out[-1]))
-            out.append('\n'.join(cmd['h_pre']).strip())
+            out.append('\n::\n')
+            out.append('\n'.join([f'  {s}' for s in cmd['h_pre']]))
             out.append('')
     if 'h_opts' in cmd:
         out.append('Options')
@@ -144,7 +145,8 @@ def gen_rst(name, cmd):
         if post:
             out.append('Description')
             out.append('^' * len(out[-1]))
-            out.append('\n'.join(cmd['h_post']).strip())
+            out.append('\n::\n')
+            out.append('\n'.join([f'  {s}' for s in cmd['h_post']]))
             out.append('')
     out.append('.. generated from: %s' % ', '.join(cmd['files']))
     if 'c_func' in cmd:
-- 
2.47.3



