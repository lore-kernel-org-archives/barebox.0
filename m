Delivery-date: Mon, 07 Feb 2022 14:49:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4Of-008Iiw-4k
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 14:49:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nH4Oc-0000ff-IM
	for lore@pengutronix.de; Mon, 07 Feb 2022 14:49:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vQuJ1omfx1sf8gV+ORDdXIpVjJ7fLOQw1aZPHWw33NI=; b=lhqIuaeO5IoMZd
	NltVewRXvlBbP81ZAJH6L3K9DeMMjDyiaAkvlKniv3gMHBHmxHlO6vvTXvOto+F0Lc5LJFEzgxLjU
	+Uy7pIA37H12oHJgZ1uw1HybSVfSRrxux9ZIxkkW0gBHzX/3MZTHOmWK12DwY5MqibS1kwNCL35j8
	q/dwyFiIbBKBvMSGmEnD5YpHlE5N5qDH0Txv/umEf7VXwaW64bIonZjfpSEHWLrBFY56WZGf1cZbT
	81YUSWE+W1o1ZXeK/xh2nGMCmjRUzg1rJfU9ExtBchC2HCxcXLJS26s2L2D/4IVFXP/sGa1k9ZYbJ
	7sippMsYulaV0th9PizQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nH4N2-00AL3t-Ty; Mon, 07 Feb 2022 13:47:57 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nH4Mm-00AKxb-4D
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 13:47:42 +0000
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp
 [133.32.232.101]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 217DlAK4009069;
 Mon, 7 Feb 2022 22:47:10 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 217DlAK4009069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1644241630;
 bh=mz29idBQEgCHQlNVI0DX9MO0wCEfKUK8wnqi9nTU/qQ=;
 h=From:To:Cc:Subject:Date:From;
 b=c3dnoWMeS8ZPGhoYrk4a5jdyD4Bw4FRzTenPzQ8WCgrgbNy3qHZp9rbGZkE5sx0bu
 3uMed6Vvyr9f2kt23EckK54PVkwijG5A/iQLgWE/ycjJZraF3zDjTrSLVUo2ivfC4c
 g0JHRxwHydW4N5Q7vdNVou031wJNg86seUb6Lv3IFSpeR1b1W6MHr6UBJRE4jITM1s
 AgekWgNDqpzDTMk9W0u2okl/7QN+B428mP8JTNlVfBiF9ZDRpegFCWyZwmLp/2ZFLb
 wpwFaXlR7wEqy8ljGB54XYi/ouNSdaNHp6M+OON62KN87hFsveDziFrnu+/kPzKwyt
 4LovTcEkS1Gog==
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon,  7 Feb 2022 22:47:07 +0900
Message-Id: <20220207134707.1775213-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_054740_436398_DFC3CA0B 
X-CRM114-Status: GOOD (  19.36  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] setlocalversion: update to Linux 5.16
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It has been a long time since this script was updated.

Now resync it with Linux 5.16.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/setlocalversion | 103 +++++++++++++++-------------------------
 1 file changed, 39 insertions(+), 64 deletions(-)

diff --git a/scripts/setlocalversion b/scripts/setlocalversion
index cce4706cc..6b54e46a0 100755
--- a/scripts/setlocalversion
+++ b/scripts/setlocalversion
@@ -1,8 +1,14 @@
 #!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
 #
 # This scripts adds local version information from the version
 # control systems git, mercurial (hg) and subversion (svn).
 #
+# If something goes wrong, send a mail the kernel build mailinglist
+# (see MAINTAINERS) and CC Nico Schottelius
+# <nico-linuxsetlocalversion -at- schottelius.org>.
+#
+#
 
 usage() {
 	echo "Usage: $0 [--save-scmversion] [srctree]" >&2
@@ -38,11 +44,12 @@ scm_version()
 	fi
 
 	# Check for git and a git repo.
-	if test -d .git && head=`git rev-parse --verify --short HEAD 2>/dev/null`; then
+	if test -z "$(git rev-parse --show-cdup 2>/dev/null)" &&
+	   head=$(git rev-parse --verify HEAD 2>/dev/null); then
 
 		# If we are at a tagged commit (like "v2.6.30-rc6"), we ignore
 		# it, because this version is defined in the top level Makefile.
-		if [ -z "`git describe --exact-match 2>/dev/null`" ]; then
+		if [ -z "$(git describe --exact-match 2>/dev/null)" ]; then
 
 			# If only the short version is requested, don't bother
 			# running further git commands
@@ -52,69 +59,36 @@ scm_version()
 			fi
 			# If we are past a tagged commit (like
 			# "v2.6.30-rc5-302-g72357d5"), we pretty print it.
-			if atag="`git describe 2>/dev/null`"; then
-				echo "$atag" | awk -F- '{printf("-%05d-%s", $(NF-1),$(NF))}'
-
-			# If we don't have a tag at all we print -g{commitish}.
-			else
-				printf '%s%s' -g $head
+			if atag="$(git describe 2>/dev/null)"; then
+				echo "$atag" | awk -F- '{printf("-%05d", $(NF-1))}'
 			fi
-		fi
 
-		# Is this git on svn?
-		if git config --get svn-remote.svn.url >/dev/null; then
-			printf -- '-svn%s' "`git svn find-rev $head`"
+			# Add -g and exactly 12 hex chars.
+			printf '%s%s' -g "$(echo $head | cut -c1-12)"
 		fi
 
-		# Update index only on r/w media
-		[ -w . ] && git update-index --refresh --unmerged > /dev/null
-
-		# Check for uncommitted changes
-		if git diff-index --name-only HEAD | grep -qv "^scripts/package"; then
+		# Check for uncommitted changes.
+		# This script must avoid any write attempt to the source tree,
+		# which might be read-only.
+		# You cannot use 'git describe --dirty' because it tries to
+		# create .git/index.lock .
+		# First, with git-status, but --no-optional-locks is only
+		# supported in git >= 2.14, so fall back to git-diff-index if
+		# it fails. Note that git-diff-index does not refresh the
+		# index, so it may give misleading results. See
+		# git-update-index(1), git-diff-index(1), and git-status(1).
+		if {
+			git --no-optional-locks status -uno --porcelain 2>/dev/null ||
+			git diff-index --name-only HEAD
+		} | read dummy; then
 			printf '%s' -dirty
 		fi
-
-		# All done with git
-		return
-	fi
-
-	# Check for mercurial and a mercurial repo.
-	if test -d .hg && hgid=`hg id 2>/dev/null`; then
-		# Do we have an tagged version?  If so, latesttagdistance == 1
-		if [ "`hg log -r . --template '{latesttagdistance}'`" == "1" ]; then
-			id=`hg log -r . --template '{latesttag}'`
-			printf '%s%s' -hg "$id"
-		else
-			tag=`printf '%s' "$hgid" | cut -d' ' -f2`
-			if [ -z "$tag" -o "$tag" = tip ]; then
-				id=`printf '%s' "$hgid" | sed 's/[+ ].*//'`
-				printf '%s%s' -hg "$id"
-			fi
-		fi
-
-		# Are there uncommitted changes?
-		# These are represented by + after the changeset id.
-		case "$hgid" in
-			*+|*+\ *) printf '%s' -dirty ;;
-		esac
-
-		# All done with mercurial
-		return
-	fi
-
-	# Check for svn and a svn repo.
-	if rev=`svn info 2>/dev/null | grep '^Last Changed Rev'`; then
-		rev=`echo $rev | awk '{print $NF}'`
-		printf -- '-svn%s' "$rev"
-
-		# All done with svn
-		return
 	fi
 }
 
 collect_files()
 {
-	local file res
+	local file res=
 
 	for file; do
 		case "$file" in
@@ -140,7 +114,7 @@ fi
 if test -e include/config/auto.conf; then
 	. include/config/auto.conf
 else
-	echo "Error: kernelrelease not valid - run 'make prepare' to update it"
+	echo "Error: kernelrelease not valid - run 'make prepare' to update it" >&2
 	exit 1
 fi
 
@@ -157,15 +131,16 @@ res="${res}${CONFIG_LOCALVERSION}${LOCALVERSION}"
 if test "$CONFIG_LOCALVERSION_AUTO" = "y"; then
 	# full scm version string
 	res="$res$(scm_version)"
-else
-	# append a plus sign if the repository is not in a clean
-	# annotated or signed tagged state (as git describe only
-	# looks at signed or annotated tags - git tag -a/-s) and
-	# LOCALVERSION= is not specified
-	if test "${LOCALVERSION+set}" != "set"; then
-		scm=$(scm_version --short)
-		res="$res${scm:++}"
-	fi
+elif [ "${LOCALVERSION+set}" != "set" ]; then
+	# If the variable LOCALVERSION is not set, append a plus
+	# sign if the repository is not in a clean annotated or
+	# signed tagged state (as git describe only looks at signed
+	# or annotated tags - git tag -a/-s).
+	#
+	# If the variable LOCALVERSION is set (including being set
+	# to an empty string), we don't want to append a plus sign.
+	scm=$(scm_version --short)
+	res="$res${scm:++}"
 fi
 
 echo "$res"
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

