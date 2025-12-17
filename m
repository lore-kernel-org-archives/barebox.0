Delivery-date: Wed, 17 Dec 2025 11:36:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVotd-00CRMy-1i
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 11:36:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVotc-0006kE-QO
	for lore@pengutronix.de; Wed, 17 Dec 2025 11:36:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=azjI7cAkskC5KKSbarRRjzimXFUD37ISXuIzINKmRFI=; b=P9btfTn3Img0/nZhNhXpXl8vCv
	AAiDUgST/ltGeD3M/MOhEafBIcFk9ud68ohRfSHnMqmu1s+DsEuvZG9FyOOQ+EE5oR+swGekWSKfe
	ie33R+EFhI3D4eVzI6lAN+OBfmYk39ew5sefc3LjMsWhiy3+VL09zdvGadpdWy7nxE087OcvZ3U9A
	xicGtCz4mqznzKaXITRVMT6qaSCwJpzgqu3sR46bKdu9CbLwBhLrifd0TympAnstmQGkyTAXH7Guf
	5JDkuwOUHKCjxmFsa5xx0khN1pVpi+jp4HoCttZP9HR0OL5SzXDqHDD1MmohI5yhSbfpGi5ZfVVPq
	EoAzSoyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVosv-00000006fBa-1OtG;
	Wed, 17 Dec 2025 10:35:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVosr-00000006fAo-2Iiv
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 10:35:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVosm-0006f7-HD; Wed, 17 Dec 2025 11:35:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVosm-00667k-0m;
	Wed, 17 Dec 2025 11:35:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVosm-0000000Gyxp-0aPT;
	Wed, 17 Dec 2025 11:35:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Jonas Rebmann <jre@pengutronix.de>
Date: Wed, 17 Dec 2025 11:35:46 +0100
Message-ID: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_023553_630524_4A2B257B 
X-CRM114-Status: GOOD (  12.74  )
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
Subject: [PATCH] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To improve tracking where code originated from, e.g. when porting from
Linux or U-Boot, some recent commits have started using Origin-URL
comments. Add a script that can generate them.

Examples in Vim:

  # add into highlight URL pointing at specified file
  V:!git origin-url ../linux/lib/ucs2_string.c

  # as above, but consult buffer extension for comment style
  V:!git origin-url ../linux/lib/ucs2_string.c %

  # generate in snippet syntax
  V:!git origin-url -s ../linux/lib/ucs2_string.c

Cc: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I've been using this for my recent ports and I think it's generally
useful and helps with deciding on a common format.
---
 scripts/git-origin-url.sh | 94 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 94 insertions(+)
 create mode 100755 scripts/git-origin-url.sh

diff --git a/scripts/git-origin-url.sh b/scripts/git-origin-url.sh
new file mode 100755
index 000000000000..d31008b1b761
--- /dev/null
+++ b/scripts/git-origin-url.sh
@@ -0,0 +1,94 @@
+#!/usr/bin/env bash
+# SPDX-License-Identifier: BSD-0-Clause
+
+set -euo pipefail
+
+declare -A repos=(
+    ["a3ffa97f40dc81f2d6b07ee964f2340fe0c1ba97"]="https://git.pengutronix.de/cgit/barebox"
+    ["1da177e4c3f41524e886b7f1b8a0c1fc7321cac2"]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
+    ["cc8ed39b240180b58810784f844e253263594ac3"]="https://git.busybox.net/busybox"
+    ["7e492d8258182e31c988bbf9917d4a3d41949d56"]="https://github.com/u-boot/u-boot"
+    ["afe1be4dbdf142513f6ac1d92e6a20bdc4b20c80"]="https://github.com/systemd/systemd"
+)
+
+err() { echo "error: $* " >&2; exit 1; }
+usage="Usage: $0 <path-to-file> [destination-file]"
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



