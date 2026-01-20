Delivery-date: Tue, 20 Jan 2026 13:28:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAqT-003NwR-2E
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:28:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAqS-0006ei-Hx
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:28:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RIfmPwytn1lyKQmAzA3IMh9P3KoS5+aiiQw1sA9Y9ak=; b=wm0F6uGkZiALk2S9l3vtnD7wwm
	Ke3Nn/CeFBuH+NwTcCzaNlVPtC8CIzJX6FhGGmMcWkkgPsooB4uA1VJwXxZe8RPHTLhFq7YNlTHMR
	nS4UNYe+NdraCsGLwz7y6exiq9w7vmkEnCHcaFcktzNEFcJoMEnJD/zZCWip54CviLLjjjwZ7kv/Z
	n3NnwhKbZRmy9cq7ALStviHrWXeMQ/se1fDxUoadcpNKN6hIkdlSQPJWcJLiWqtXpXXyDEfB0bbRD
	9Qml35VKgYKurPK1gd78DYs/RqWQlq5fZbykZjDsv2JyVqts3hjGbiDZvjaCH8vDlFYjPPPYq4o4p
	vv6P2jtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAq2-00000003qB7-2Sps;
	Tue, 20 Jan 2026 12:28:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAq0-00000003qA3-1l9R
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=RIfmPwytn1lyKQmAzA3IMh9P3KoS5+aiiQw1sA9Y9ak=; b=W7KR3VYX0wL86/69YQw6AvGi4X
	6OSi6rY1M8lyQ3GbCl7tUsktFkHKEr028b2KMOSDJTmemAw+Z1IXcgXa98WcypRA5bpgK9hXkB55R
	O+OfBMJXvr/o19zwc0H0DVEF+us1PhN1AIvw0DYUrtIRiqLpaypJ1niP3lEtw//UyHLr3pB4wH6Dq
	gyGitFArAa2RESvkAWOrppgMV9iFadSh6WJ27yK+FbHvsTNkPlSGRUXg3liBdqCKjPwvsSe/28k/u
	wT0gyJQzkwa9sL95cFy6Q7eGydgDFtvAN5MecmA+WFZ5E9fLGjFA2nQ5ZREA6xswRmiu3dkfHzlp2
	k9ZYqqLg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viApx-0000000E1II-1REb
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:27:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApw-0006Rx-Ly; Tue, 20 Jan 2026 13:27:56 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApx-001aAq-0W;
	Tue, 20 Jan 2026 13:27:56 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viApx-00000002fHp-0KOJ;
	Tue, 20 Jan 2026 13:27:56 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Tue, 20 Jan 2026 13:27:54 +0100
Message-ID: <20260120122755.635347-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122757_467767_1746C0CF 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: py: helper: return typed data from of_get_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

For the simple comparison we currently do, comparing the output of
barebox of_dump as-is was sufficient. But once we want to do more like
comparing 64-bit integers for example, it would be more convenient if
of_get_property could be made to directly return the value with the
correct type.

Extend the function to support this.

Co-developed-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/py/helper.py   | 54 +++++++++++++++++++++++++++++++++++++++++----
 test/py/test_fit.py | 18 ++++++---------
 2 files changed, 57 insertions(+), 15 deletions(-)

diff --git a/test/py/helper.py b/test/py/helper.py
index 756a06a8be66..ce8e236b4689 100644
--- a/test/py/helper.py
+++ b/test/py/helper.py
@@ -116,18 +116,64 @@ def getparam_int(info, var):
     return int(info["Parameters"][var].split()[0])
 
 
-def of_get_property(barebox, path):
+def of_scan_property(val, ncells=1):
+    if '/*' in val:
+        raise ValueError("Comments are not allowed")
+
+    # empty string
+    if val == '""':
+        return ""
+
+    items = []
+
+    # strings
+    for m in re.finditer(r'"([^"]*)"', val):
+        items.append(m.group(1))
+
+    # < ... > cells
+    for m in re.finditer(r'<([^>]*)>', val):
+        nums = [int(x, 16) for x in m.group(1).split()]
+
+        if ncells > 1 and len(nums) % ncells:
+            raise ValueError("Cell count not divisible by ncells")
+
+        if ncells == 0:
+            v = 0
+            for i, n in enumerate(nums):
+                v |= n << (32 * (len(nums) - i - 1))
+            items.append(v)
+        elif ncells == 1:
+            items.extend(nums)
+        else:
+            for i in range(0, len(nums), ncells):
+                v = 0
+                for j, n in enumerate(nums[i:i+ncells]):
+                    v |= n << (32 * (ncells - j - 1))
+                items.append(v)
+
+    # [ ... ] byte list
+    m = re.search(r'\[([0-9a-fA-F ]+)\]', val)
+    if m:
+        items.append(bytes(int(x, 16) for x in m.group(1).split()))
+
+    if not items:
+        return False
+    return items[0] if len(items) == 1 else items
+
+
+def of_get_property(barebox, path, ncells=1):
     node, prop = os.path.split(path)
 
     stdout = barebox.run_check(f"of_dump -p {node}")
     for line in stdout:
-        if line == '{prop};':
+        if line == f'{prop};':
             return True
 
         prefix = f'{prop} = '
         if line.startswith(prefix):
-            # Also drop the semicolon
-            return line[len(prefix):-1]
+            # Drop the prefix and semicolon, then parse the value
+            value_str = line[len(prefix):-1].strip()
+            return of_scan_property(value_str, ncells)
     return False
 
 
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index e0999a01b0cb..1a2efde73f21 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -69,31 +69,27 @@ def test_fit(barebox, strategy, testfs, fit_testdata):
     assert ver.startswith('barebox-2')
 
     barebox.run_check("of_property -s /chosen barebox,boot-count '<0x0>'")
-    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x0>'
+    assert of_get_property(barebox, "/chosen/barebox,boot-count") == 0x0
 
     barebox.run_check("of_property -fs /chosen barebox,boot-count '<0x1>'")
-    assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x0>'
+    assert of_get_property(barebox, "/chosen/barebox,boot-count") == 0x0
 
     barebox.run_check("global linux.bootargs.testarg=barebox.chainloaded")
 
     boottarget = generate_bootscript(barebox, fit_name('gzipped'))
 
     with strategy.boot_barebox(boottarget) as barebox:
-        assert of_get_property(barebox, "/chosen/barebox-version") == f'"{ver}"', \
+        assert of_get_property(barebox, "/chosen/barebox-version") == ver, \
                "/chosen/barebox-version suggests we did not chainload"
 
-        assert of_get_property(barebox, "/chosen/barebox,boot-count") == '<0x1>', \
+        assert of_get_property(barebox, "/chosen/barebox,boot-count") == 0x1, \
                "/chosen/barebox,boot-count suggests we got bultin DT"
 
         # Check that command line arguments were fixed up
         bootargs = of_get_property(barebox, "/chosen/bootargs")
         assert "barebox.chainloaded" in bootargs
 
-        initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start")
-        initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end")
+        initrd_start = of_get_property(barebox, "/chosen/linux,initrd-start", 0)
+        initrd_end = of_get_property(barebox, "/chosen/linux,initrd-end", 0)
 
-        addr_regex = r"<(0x[0-9a-f]{1,8} ?)+>"
-        assert re.search(addr_regex, initrd_start), \
-            f"initrd start {initrd_start} malformed"
-        assert re.search(addr_regex, initrd_end), \
-            f"initrd end {initrd_end} malformed"
+        assert initrd_start < initrd_end
-- 
2.47.3



