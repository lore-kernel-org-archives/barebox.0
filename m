Delivery-date: Fri, 24 Oct 2025 11:07:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm4-00BGHV-1f
	for lore@lore.pengutronix.de;
	Fri, 24 Oct 2025 11:07:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCDm1-0008Gw-Bi
	for lore@pengutronix.de; Fri, 24 Oct 2025 11:07:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fsg9NFvomtV1HSBMZmmyKmE8ZhhdJojV3Bn22vVEFbs=; b=KSMCl0koKLa9YG2faCCqrJ7JjF
	CrqbPvp0VaWiPeW/zRjmLAt73TbxaKgsOQzSugApcg+nKQFDQGBgwi7kxr0aEqg8VAAu3XKQm2/zx
	npHkvO0dfXtL7YtJcTa4ErzTy9z/TitCggfWBfpJ1HzHEOrBcEsYMA309VWLIcYND8oa6C9m/by0S
	7rY95kV6sY9mM2yQ8d8qxCznPU3+3IhsC8FNMJA/rEjUK3jXae5P1dihw5+oU3l2yQ45JmRF88Jjy
	svedNGZ6bUXaSoxXWidoEQU41T3krAJZM7XfRJac6kPNaoic9/jAsXph2tARetKAwXTDEFtge1/wD
	p0HCWNtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlV-00000008oO9-0Qlu;
	Fri, 24 Oct 2025 09:07:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCDlP-00000008oKx-0tSV
	for barebox@lists.infradead.org;
	Fri, 24 Oct 2025 09:07:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0007wy-EM; Fri, 24 Oct 2025 11:07:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-005CMA-0o;
	Fri, 24 Oct 2025 11:07:09 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vCDlN-0000000AOAP-0ete;
	Fri, 24 Oct 2025 11:07:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 Oct 2025 11:07:03 +0200
Message-ID: <20251024090708.2476109-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
References: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_020711_403020_7CB36CA7 
X-CRM114-Status: GOOD (  12.31  )
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
Subject: [PATCH 2/5] Documentation: gen_commands.py: align whitespace with coding style
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We use four spaces for indentation in python files and an extra empty
line before subroutine definition. This is the default enforced by pylsp
for example, so let's do this whitespace only change in preparation for
further work.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/gen_commands.py | 297 +++++++++++++++++-----------------
 1 file changed, 149 insertions(+), 148 deletions(-)

diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
index 53fd59d8f692..8e129d6b253f 100755
--- a/Documentation/gen_commands.py
+++ b/Documentation/gen_commands.py
@@ -41,163 +41,164 @@ def string_escape(s):
 
 
 def parse_c(name):
-  cmd = None
-  last = None
-  for line in open(name, 'r'):
-    x = HELP_START.match(line)
-    if x:
-      cmd = CMDS.setdefault(x.group(1), defaultdict(list))
-      cmd.setdefault("files", set()).add(name)
-      continue
-    x = CMD_START.match(line)
-    if x:
-      cmd = CMDS.setdefault(x.group(1), defaultdict(list))
-      cmd.setdefault("files", set()).add(name)
-      continue
-    if cmd is None:
-      continue
-    x = HELP_TEXT.match(line)
-    if x:
-      if 'h_opts' not in cmd:
-        last = cmd['h_pre']
-      else:
-        last = cmd['h_post']
-      last.append(string_escape(x.group(1)).strip())
-      continue
-    x = HELP_OPT.match(line)
-    if x:
-      last = cmd['h_opts']
-      last.append([
-        string_escape(x.group(1)),
-        string_escape(x.group(2)),
-      ])
-      continue
-    x = CMD_FUNC.match(line)
-    if x:
-      last = cmd['c_func']
-      last.append(x.group(1))
-      continue
-    x = CMD_DESC.match(line)
-    if x:
-      last = cmd['c_desc']
-      last.append(string_escape(x.group(1)))
-      continue
-    x = CMD_OPTS.match(line)
-    if x:
-      last = cmd['c_opts']
-      last.append(string_escape_literal(x.group(1)))
-      continue
-    x = CMD_GROUP.match(line)
-    if x:
-      last = cmd['c_group']
-      last.append(x.group(1).split('_')[-1].lower())
-      continue
-    x = CONT.match(line)
-    if x:
-      if last is None:
-        raise Exception("Parse error in %s: %r" % (name, line))
-      if isinstance(last[-1], str):
-        last[-1] += string_escape(x.group(1))
-      elif isinstance(last[-1], list):
-        last[-1][1] += string_escape(x.group(1))
-      continue
-    x = HELP_END.match(line)
-    if x:
-      cmd = last = None
-    x = CMD_END.match(line)
-    if x:
-      cmd = last = None
+    cmd = None
+    last = None
+    for line in open(name, 'r'):
+        x = HELP_START.match(line)
+        if x:
+            cmd = CMDS.setdefault(x.group(1), defaultdict(list))
+            cmd.setdefault("files", set()).add(name)
+            continue
+        x = CMD_START.match(line)
+        if x:
+            cmd = CMDS.setdefault(x.group(1), defaultdict(list))
+            cmd.setdefault("files", set()).add(name)
+            continue
+        if cmd is None:
+            continue
+        x = HELP_TEXT.match(line)
+        if x:
+            if 'h_opts' not in cmd:
+                last = cmd['h_pre']
+            else:
+                last = cmd['h_post']
+            last.append(string_escape(x.group(1)).strip())
+            continue
+        x = HELP_OPT.match(line)
+        if x:
+            last = cmd['h_opts']
+            last.append([
+                string_escape(x.group(1)),
+                string_escape(x.group(2)),
+            ])
+            continue
+        x = CMD_FUNC.match(line)
+        if x:
+            last = cmd['c_func']
+            last.append(x.group(1))
+            continue
+        x = CMD_DESC.match(line)
+        if x:
+            last = cmd['c_desc']
+            last.append(string_escape(x.group(1)))
+            continue
+        x = CMD_OPTS.match(line)
+        if x:
+            last = cmd['c_opts']
+            last.append(string_escape_literal(x.group(1)))
+            continue
+        x = CMD_GROUP.match(line)
+        if x:
+            last = cmd['c_group']
+            last.append(x.group(1).split('_')[-1].lower())
+            continue
+        x = CONT.match(line)
+        if x:
+            if last is None:
+                raise Exception("Parse error in %s: %r" % (name, line))
+            if isinstance(last[-1], str):
+                last[-1] += string_escape(x.group(1))
+            elif isinstance(last[-1], list):
+                last[-1][1] += string_escape(x.group(1))
+            continue
+        x = HELP_END.match(line)
+        if x:
+            cmd = last = None
+        x = CMD_END.match(line)
+        if x:
+            cmd = last = None
+
 
 def gen_rst(name, cmd):
-  out = []
-  out.append('.. index:: %s (command)' % name)
-  out.append('')
-  out.append('.. _command_%s:' % name)
-  out.append('')
-  if 'c_desc' in cmd:
-    out.append("%s - %s" % (name, ''.join(cmd['c_desc']).strip()))
-  else:
-    out.append("%s" % (name,))
-  out.append('='*len(out[-1]))
-  out.append('')
-  if 'c_opts' in cmd:
-    out.append('Usage')
-    out.append('^'*len(out[-1]))
-    out.append('``%s %s``' % (name, ''.join(cmd['c_opts']).strip()))
+    out = []
+    out.append('.. index:: %s (command)' % name)
     out.append('')
-  if 'h_pre' in cmd:
-    pre = cmd['h_pre']
-    if pre and pre[-1] == "Options:":
-      del pre[-1]
-    if pre and pre[-1] == "":
-      del pre[-1]
-    if pre:
-      out.append('Synopsis')
-      out.append('^'*len(out[-1]))
-      out.append('\n'.join(cmd['h_pre']).strip())
-      out.append('')
-  if 'h_opts' in cmd:
-    out.append('Options')
-    out.append('^'*len(out[-1]))
-    for o, d in cmd['h_opts']:
-      o = o.strip()
-      d = d.strip()
-      if o:
-        out.append('%s\n %s' % (o, d))
-      else:
-        out.append(' %s' % (d,))
-      out.append('')
+    out.append('.. _command_%s:' % name)
     out.append('')
-  if 'h_post' in cmd:
-    post = cmd['h_post']
-    if post and post[0] == "":
-      del post[0]
-    if post:
-      out.append('Description')
-      out.append('^'*len(out[-1]))
-      out.append('\n'.join(cmd['h_post']).strip())
-      out.append('')
-  out.append('.. generated from: %s' % ', '.join(cmd['files']))
-  if 'c_func' in cmd:
-    out.append('.. command function: %s' % ', '.join(cmd['c_func']))
-  return '\n'.join(out)
+    if 'c_desc' in cmd:
+        out.append("%s - %s" % (name, ''.join(cmd['c_desc']).strip()))
+    else:
+        out.append("%s" % (name,))
+    out.append('=' * len(out[-1]))
+    out.append('')
+    if 'c_opts' in cmd:
+        out.append('Usage')
+        out.append('^' * len(out[-1]))
+        out.append('``%s %s``' % (name, ''.join(cmd['c_opts']).strip()))
+        out.append('')
+    if 'h_pre' in cmd:
+        pre = cmd['h_pre']
+        if pre and pre[-1] == "Options:":
+            del pre[-1]
+        if pre and pre[-1] == "":
+            del pre[-1]
+        if pre:
+            out.append('Synopsis')
+            out.append('^' * len(out[-1]))
+            out.append('\n'.join(cmd['h_pre']).strip())
+            out.append('')
+    if 'h_opts' in cmd:
+        out.append('Options')
+        out.append('^' * len(out[-1]))
+        for o, d in cmd['h_opts']:
+            o = o.strip()
+            d = d.strip()
+            if o:
+                out.append('%s\n %s' % (o, d))
+            else:
+                out.append(' %s' % (d,))
+            out.append('')
+        out.append('')
+    if 'h_post' in cmd:
+        post = cmd['h_post']
+        if post and post[0] == "":
+            del post[0]
+        if post:
+            out.append('Description')
+            out.append('^' * len(out[-1]))
+            out.append('\n'.join(cmd['h_post']).strip())
+            out.append('')
+    out.append('.. generated from: %s' % ', '.join(cmd['files']))
+    if 'c_func' in cmd:
+        out.append('.. command function: %s' % ', '.join(cmd['c_func']))
+    return '\n'.join(out)
 
 for root, dirs, files in os.walk(sys.argv[1]):
-  for name in files:
-    if name.endswith('.c'):
-      source = os.path.join(root, name)
-      parse_c(source)
+    for name in files:
+        if name.endswith('.c'):
+            source = os.path.join(root, name)
+            parse_c(source)
 
 for name in CMDS.keys():
-  CMDS[name] = dict(CMDS[name])
+    CMDS[name] = dict(CMDS[name])
 
 for name, cmd in CMDS.items():
-  #pprint({name: cmd})
-  rst = gen_rst(name, cmd)
-  group = cmd.get('c_group')
-  if group is None:
-    print("gen_commands: warning: using default group 'misc' for command '%s'" % name, file=sys.stderr)
-    group = ['misc']
-  subdir = os.path.join(sys.argv[2], group[0])
-  try:
-    os.makedirs(subdir)
-  except OSError as e:
-    if e.errno == errno.EEXIST and os.path.isdir(subdir):
-      pass
-    else:
-      raise
-  target = os.path.join(subdir, name+'.rst')
+    #pprint({name: cmd})
+    rst = gen_rst(name, cmd)
+    group = cmd.get('c_group')
+    if group is None:
+        print("gen_commands: warning: using default group 'misc' for command '%s'" % name, file=sys.stderr)
+        group = ['misc']
+    subdir = os.path.join(sys.argv[2], group[0])
+    try:
+        os.makedirs(subdir)
+    except OSError as e:
+        if e.errno == errno.EEXIST and os.path.isdir(subdir):
+            pass
+        else:
+            raise
+    target = os.path.join(subdir, name + '.rst')
 
-  # Only write the new rst if it differs from the old one. Wroto
-  hash_old = hashlib.sha1()
-  try:
-    f = open(target, 'rb')
-    hash_old.update(f.read())
-  except:
-    pass
-  hash_new = hashlib.sha1()
-  hash_new.update(rst.encode('utf-8'))
-  if hash_old.hexdigest() == hash_new.hexdigest():
-    continue
+    # Only write the new rst if it differs from the old one. Wroto
+    hash_old = hashlib.sha1()
+    try:
+        f = open(target, 'rb')
+        hash_old.update(f.read())
+    except:
+        pass
+    hash_new = hashlib.sha1()
+    hash_new.update(rst.encode('utf-8'))
+    if hash_old.hexdigest() == hash_new.hexdigest():
+        continue
 
-  open(target, 'w').write(rst)
+    open(target, 'w').write(rst)
-- 
2.47.3



