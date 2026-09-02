Delivery-date: Wed, 02 Sep 2026 10:24:41 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1gGu-009wUp-1t
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 10:24:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9983C201BCA
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 10:24:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=scQ+oRGj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0aX4NCZn/fV/ihoxlu+ogBXDAYIuk6IgciQHQkFITl8=; b=scQ+oRGjTvZvGVYIykQ6x8/fRz
	NSzIh3R+gkHHLFh+R8GxnPdbOnMzU9v6ne1wQJ3fZfWWy+6y0wYHJ7jHUTChnJXzsfYZpyA1MkU5q
	OF2Ys/gXzVtdL0cUQsD9kj90RDmoza8tDzwNLJleuQbqDqTgsj1X8KEDiFJiX1UFr2lsu3LiLYRXp
	1xG0bGhTWWtYkvRguUivat/kEFoUrZF0uP9nHi9l1qZmGbSGfYXFxub+01mUprt4RbKQLAPc2dK4Z
	TGSAyGO81hJRURsfccaJB2sFSvtK67Y0r9vNyESCRqSpEG/geDbS7Bjq+HxApyf76MGCPvk+oVly0
	xO/KhUAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gFd-0000000E51E-3dkA;
	Wed, 02 Sep 2026 08:23:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1gFY-0000000E4wm-0dla
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 08:23:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EE4AC20177F;
	Wed, 02 Sep 2026 10:23:13 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gFV-004Ymx-2t;
	Wed, 02 Sep 2026 10:23:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1gFV-0000000CS5Z-3EfB;
	Wed, 02 Sep 2026 10:23:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] Documentation: Officially accept GitHub pull requests
Date: Wed,  2 Sep 2026 10:23:11 +0200
Message-ID: <20260902082311.2966181-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_012316_368230_D5AC15B9 
X-CRM114-Status: GOOD (  27.74  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  barebox is on GitHub for years already and we occasionally
    merged GitHub merge requests, but this was always the exception. This changes
    now: We now officially accept GitHub merge requests. Adjust the documentation
    accordingly. While at it better explain the patchflow into barebox to justify
    why work should be done on master while being targeted for next. Also mention
    the exceptions to t [...] 
 
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
X-Rspamd-Queue-Id: 9983C201BCA
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
X-Stat-Signature: dg8ihogw1s9cii9ws13otdzh3eqji91d
X-Rspamd-Server: mx1

barebox is on GitHub for years already and we occasionally merged GitHub
merge requests, but this was always the exception. This changes now:
We now officially accept GitHub merge requests.

Adjust the documentation accordingly. While at it better explain the
patchflow into barebox to justify why work should be done on master
while being targeted for next. Also mention the exceptions to this
rule and how merge conflicts are handled.

Assisted-by: Claude:claude-opus-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/devel/contributing.rst | 13 +++++-
 Documentation/devel/devel.rst        |  1 +
 Documentation/devel/patch-flow.rst   | 62 ++++++++++++++++++++++++++++
 README.rst                           |  7 ++--
 4 files changed, 79 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devel/patch-flow.rst

diff --git a/Documentation/devel/contributing.rst b/Documentation/devel/contributing.rst
index 8b92c6f483..d62d6de361 100644
--- a/Documentation/devel/contributing.rst
+++ b/Documentation/devel/contributing.rst
@@ -47,7 +47,9 @@ Patch series can be sent and fetched from the list using `b4 <https://pypi.org/p
 
    b4 shazam -M https://lore.barebox.org/$messageid # replace with link
 
-Fixes should apply on master and new features on the next branch.
+Base your work on ``master``. Fixes are applied there directly, new features
+go to ``next`` first. See :ref:`patch_flow` for the branches involved and
+what happens to a patch after it has been picked up from the list.
 
 If a series fails to apply, ``b4`` can determine/guess the base
 and have ``FETCH_HEAD`` point at it::
@@ -65,6 +67,15 @@ patches can be sent with::
 
 See the `b4 documentation <https://b4.docs.kernel.org/en/latest/>`_ for details.
 
+GitHub Pull Requests
+--------------------
+
+Besides the mailing list, contributions are also accepted as pull requests
+against `the project on GitHub <https://github.com/barebox/barebox>`_. The
+same rules apply: base your work on ``master`` and target the pull request
+at ``next``, so that GitHub can detect when it has been applied. See
+:ref:`patch_flow` for details.
+
 Continuous Integration
 ----------------------
 
diff --git a/Documentation/devel/devel.rst b/Documentation/devel/devel.rst
index 810b5d254e..8a92d864af 100644
--- a/Documentation/devel/devel.rst
+++ b/Documentation/devel/devel.rst
@@ -10,6 +10,7 @@ Contents:
 
    architecture
    contributing
+   patch-flow
    porting
    troubleshooting
    filesystems
diff --git a/Documentation/devel/patch-flow.rst b/Documentation/devel/patch-flow.rst
new file mode 100644
index 0000000000..5145e6c32f
--- /dev/null
+++ b/Documentation/devel/patch-flow.rst
@@ -0,0 +1,62 @@
+.. _patch_flow:
+
+Patch Flow
+==========
+
+This document describes the path a patch takes from the mailing list into a
+barebox release. See :ref:`contributing` for how to prepare and submit the
+patch in the first place.
+
+Branches
+--------
+
+Two branches are published in the official barebox repositories:
+
+``master``
+  The stable mainline. Releases are branched from here. ``master`` is
+  fast-forward only and never rewritten, so it is safe to base work on.
+
+``next``
+  The integration branch. It contains everything queued for the next
+  release. ``next`` is **not** fast-forward: it is regularly rebuilt from
+  scratch and force-pushed. Never base work on ``next`` that you intend to
+  keep, and never merge ``next`` into a downstream branch. Internally all
+  new features are collected in ``for-next/`` branches from which ``next``
+  is merged
+
+From patch to release
+---------------------
+
+#. A patch is picked up from the mailing list and applied to the
+   ``for-next/`` topic branch matching its subsystem or topic.
+
+#. ``next`` is rebuilt by merging all internal ``for-next/`` branches on top
+   of ``master``, and is published for testing and CI.
+
+#. After the release, the ``for-next/`` branches are merged into ``master``
+   and deleted. ``next`` is then rebuilt on the new ``master``, and the cycle
+   starts over.
+
+The consequence for contributors is that a new feature takes one to two
+months to reach a release, depending on where in the cycle it was applied,
+while a fix can make the next release. The monthly release schedule and the
+release numbering are described in the "Release Strategy" section of the
+top-level ``README.rst``.
+
+What to base your work on
+-------------------------
+
+New features should be based on ``master`` and targeted for ``next``. Merge
+conflicts like Makefile/Kconfig conflicts or context changes will be handled
+at the maintainers side. If and only if a patch depends on a feature currently
+sitting in ``next`` please base your work on ``next`` and note explicitly when
+sending the patch.
+
+GitHub pull requests
+--------------------
+
+We also accept GitHub pull requests. Same rules as above apply. Make sure your
+work is based on master and the pull request is targeted for ``next`` which
+lets the GitHub Logic properly detect when a pull request is applied. Should
+you have to base your work on ``next`` for the above reasons your changes will
+be cherry picked and the pull request is manually closed.
diff --git a/README.rst b/README.rst
index 71286904a8..fe783028df 100644
--- a/README.rst
+++ b/README.rst
@@ -256,9 +256,10 @@ are the release rules:
   to get patches in on a very short time scale (usually a month at most).
 
 - New features are applied to the ``next`` branch. Fixes directly to the
-  ``master`` branch. Releases are always branched from ``master`` and then
-  ``next`` is merged into ``master``. Thus new features take 1-2 months
-  until they hit a release.
+  ``master`` branch. Releases are always branched from ``master``, and only
+  afterwards is the material queued in ``next`` merged into ``master``. Thus
+  new features take 1-2 months until they hit a release. See
+  ``Documentation/devel/patch-flow.rst`` for the details.
 
 - Usually, there are no bugfix releases, so z=0. If there is a need
   to make a bugfix release, z is the right place to increment.
-- 
2.47.3



