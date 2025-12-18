Delivery-date: Thu, 18 Dec 2025 16:18:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFmE-00Cs67-0X
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 16:18:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFmD-000185-G7
	for lore@pengutronix.de; Thu, 18 Dec 2025 16:18:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w9iLVOE7T8lrlX3kxrEwwiw4vmL2+PJbVRVkp2ITy3I=; b=H5rA6CmTXu8gXG7M3oCZB60seU
	77Z5oRCS5qHTl+4TkKemDtIm9w2vYN0niBxbj/4/ZjquzNDw+3+IAJ6+E4DA1q7ESAPJN6n+/tFyd
	sSBez687i6S4WrVpVc+Jfuc5LaVol9sE187jyCoPAjDqJcH+y95KGhF3LkYSKlu08ehQzgyVn8smx
	xpG7N7rK5SVkroIwyviYsJBqY2x/vJ6o+BoKqPuxrT5foxFqf73zDZiFT2YHOO3ilHKA1/yIV15gp
	Ak7ZrrOWzsBvhfVYuO7hiNmAujDOSFBdT07DEsU0aODSpPnrlgZjykU7ijA9o8+J0f2LLPNdUu53C
	hKFoLO8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFlh-00000008fuz-08tx;
	Thu, 18 Dec 2025 15:18:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFla-00000008fto-1gCD
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 15:18:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFlY-0000xp-AH; Thu, 18 Dec 2025 16:18:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFlY-006IyJ-0O;
	Thu, 18 Dec 2025 16:18:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFlY-00000002u1T-06WD;
	Thu, 18 Dec 2025 16:18:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 18 Dec 2025 16:18:06 +0100
Message-ID: <20251218151807.691382-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_071812_717667_FFEED2D1 
X-CRM114-Status: GOOD (  16.03  )
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
Subject: [PATCH v2] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To improve tracking where code originated from, e.g. when porting from
Linux or U-Boot, some recent commits have started using Origin-URL
comments. Add a script that can generate them with the assumption that
the origin project is checked out at exactly the version the code was
copied from.

Examples in Vim:

  # add into highlight URL pointing at specified file
  V:!git origin-url ../linux/lib/ucs2_string.c

  # as above, but consult buffer extension for comment style
  V:!git origin-url ../linux/lib/ucs2_string.c %

  # generate in snippet syntax
  V:!git origin-url -s ../linux/lib/ucs2_string.c

This is mostly useful for new code that's being ported. It does have no
support to find out similarity between the files specified.

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - mention that this is meant for new code in commit and usage message
    (Jonas)
  - add comment explaining included hashes (Jonas)
---
 scripts/git-origin-url.sh | 99 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 99 insertions(+)
 create mode 100755 scripts/git-origin-url.sh

diff --git a/scripts/git-origin-url.sh b/scripts/git-origin-url.sh
new file mode 100755
index 000000000000..3aa15561c474
--- /dev/null
+++ b/scripts/git-origin-url.sh
@@ -0,0 +1,99 @@
+#!/usr/bin/env bash
+# SPDX-License-Identifier: BSD-0-Clause
+
+set -euo pipefail
+
+# Some very early hashes to identify the projects by
+declare -A repos=(
+    ["a3ffa97f40dc81f2d6b07ee964f2340fe0c1ba97"]="https://git.pengutronix.de/cgit/barebox"
+    ["1da177e4c3f41524e886b7f1b8a0c1fc7321cac2"]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
+    ["cc8ed39b240180b58810784f844e253263594ac3"]="https://git.busybox.net/busybox"
+    ["7e492d8258182e31c988bbf9917d4a3d41949d56"]="https://github.com/u-boot/u-boot"
+    ["afe1be4dbdf142513f6ac1d92e6a20bdc4b20c80"]="https://github.com/systemd/systemd"
+)
+
+err() { echo "error: $* " >&2; exit 1; }
+usage="Usage: $0 [-s] <path-to-remote-file> [local-file]
+
+Generate an Origin-URL comment from a remote file with the assumption
+that it is in a git repository checked out at the correct version
+from which the code in question was originally copied."
+
+snippet=""
+while getopts "sh" opt; do
+    case "$opt" in
+        s)
+            snippet="Snippet-"
+            ;;
+        h)
+            echo "$usage"
+            exit 0
+            ;;
+        *)
+            err "$usage"
+            ;;
+	esac
+done
+
+shift $((OPTIND-1))
+
+if [ $# -ne 1 ] && [ $# -ne 2 ]; then
+    err "$usage"
+fi
+
+# Optional second argument to allow e.g. !git origin-url $remote_file % im vim
+# In cases where local file has different extension then the original
+dstbasename="$(basename ${2:-$1})"
+
+[ -e "$1" ] || err "File not found"
+
+filepath="$(realpath "$1")"
+
+repo_root="$(git -C "$(dirname "$filepath")" rev-parse --show-toplevel 2>/dev/null \
+    || err "Not inside a Git repository: $filepath")"
+
+rel_path="$(realpath --relative-to="$repo_root" "$filepath")"
+
+# newest commit that touched this file
+file_commit="$(git -C "$repo_root" log -n1 --format=%H -- "$rel_path")"
+
+origin_url=""
+
+# find which repo this file ultimately came from
+for commit in "${!repos[@]}"; do
+    if git -C "$repo_root" merge-base --is-ancestor "$commit" "$file_commit" 2>/dev/null; then
+        origin_url="${repos[$commit]}"
+        break
+    fi
+done
+
+[ -z "$origin_url" ] && err "No matching repo base found for file commit $file_commit"
+
+# output uses the newest file commit, not the origin commit
+if [[ $origin_url == https://github.com/* ]] ; then
+    tree_url="$origin_url/blob/$file_commit/$rel_path"
+else
+    # assume cgit as fallback
+    tree_url="$origin_url/tree/$rel_path?id=$file_commit"
+fi
+
+case "${dstbasename##*.}" in
+    h|S|imxcfg|y|l|lds)
+        comment_begin='/* '
+        comment_end=' */'
+        ;;
+    c|dts*)
+        comment_begin='// '
+        comment_end=''
+        ;;
+    *)
+        comment_begin='# '
+        comment_end=''
+        ;;
+esac
+
+comment() { echo "${comment_begin}${*}${comment_end}"; }
+
+[ -z "${snippet}" ] || comment "SPDX-SnippetBegin"
+comment "SPDX-${snippet}Comment: Origin-URL: ${tree_url}"
+[ -z "${snippet}" ] || comment "SPDX-SnippetEnd"
-- 
2.47.3



