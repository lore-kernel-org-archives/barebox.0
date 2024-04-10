Delivery-date: Wed, 10 Apr 2024 14:27:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruX30-0061cJ-2x
	for lore@lore.pengutronix.de;
	Wed, 10 Apr 2024 14:27:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ruX2z-0002fF-T1
	for lore@pengutronix.de; Wed, 10 Apr 2024 14:27:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+qu3CxBimRb9dy/x/TFqSfrSnExZWysH0feRX2yk8uU=; b=xwDkiZXgxchvXzqQaRIKWOeG2w
	p/xOg/2Qzqu6I87SbsxtS4AXMIEqo9ImRH3vR/NzmH4qxxm9ZSmjlDJjzrVTuEClJjs2dp89I+jAE
	3sADFNCdzG0aEM6c46kYCpSeWA8+9dWNGBU0U/ZTxzMaOQFnogOAUSR5L8KnjaAieDXfRy17LP3ue
	eIdVj3x26RabQyUu6rdAdtm2OVwxcLbypfJvtV/5v2ZSmnrtFu7uo7uIOz6B96HBNnXG5kx7b0Z+f
	2fBREcBR2YLlMt7zQy2yJ+XEcfsN5qTbvtO4NWGgk6DSNdGfpzy64ZRND2SvM/36vYVQoLdYh+YjU
	QIT9AHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruX2S-00000006rkw-2s6H;
	Wed, 10 Apr 2024 12:26:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruX2O-00000006ris-2ctP
	for barebox@lists.infradead.org;
	Wed, 10 Apr 2024 12:26:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ruX2N-0001rc-90; Wed, 10 Apr 2024 14:26:47 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ruX2M-00BUXI-T2; Wed, 10 Apr 2024 14:26:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ruX2M-00FWwe-2d;
	Wed, 10 Apr 2024 14:26:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Apr 2024 14:26:45 +0200
Message-Id: <20240410122645.3701482-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_052649_397934_C5B15ADE 
X-CRM114-Status: GOOD (  15.88  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: config: add script to manipulate .config files on the command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This ports over the Linux v6.9-rc3 state of the config script, which
allows easy enabling and disabling of options from the command line, e.g.:

  scripts/config --file build/.config -d CONFIG_WERROR

By having the script in the barebox scripts directory, it's available
for use by build systems instead of running sed over the .config file.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/config | 230 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 230 insertions(+)
 create mode 100755 scripts/config

diff --git a/scripts/config b/scripts/config
new file mode 100755
index 000000000000..ff88e2faefd3
--- /dev/null
+++ b/scripts/config
@@ -0,0 +1,230 @@
+#!/usr/bin/env bash
+# SPDX-License-Identifier: GPL-2.0
+# Manipulate options in a .config file from the command line
+
+myname=${0##*/}
+
+# If no prefix forced, use the default CONFIG_
+CONFIG_="${CONFIG_-CONFIG_}"
+
+# We use an uncommon delimiter for sed substitutions
+SED_DELIM=$(echo -en "\001")
+
+usage() {
+	cat >&2 <<EOL
+Manipulate options in a .config file from the command line.
+Usage:
+$myname options command ...
+commands:
+	--enable|-e option   Enable option
+	--disable|-d option  Disable option
+	--module|-m option   Turn option into a module
+	--set-str option string
+	                     Set option to "string"
+	--set-val option value
+	                     Set option to value
+	--undefine|-u option Undefine option
+	--state|-s option    Print state of option (n,y,m,undef)
+
+	--enable-after|-E beforeopt option
+                             Enable option directly after other option
+	--disable-after|-D beforeopt option
+                             Disable option directly after other option
+	--module-after|-M beforeopt option
+                             Turn option into module directly after other option
+
+	commands can be repeated multiple times
+
+options:
+	--file config-file   .config file to change (default .config)
+	--keep-case|-k       Keep next symbols' case (dont' upper-case it)
+
+$myname doesn't check the validity of the .config file. This is done at next
+make time.
+
+By default, $myname will upper-case the given symbol. Use --keep-case to keep
+the case of all following symbols unchanged.
+
+$myname uses 'CONFIG_' as the default symbol prefix. Set the environment
+variable CONFIG_ to the prefix to use. Eg.: CONFIG_="FOO_" $myname ...
+EOL
+	exit 1
+}
+
+checkarg() {
+	ARG="$1"
+	if [ "$ARG" = "" ] ; then
+		usage
+	fi
+	case "$ARG" in
+	${CONFIG_}*)
+		ARG="${ARG/${CONFIG_}/}"
+		;;
+	esac
+	if [ "$MUNGE_CASE" = "yes" ] ; then
+		ARG="`echo $ARG | tr a-z A-Z`"
+	fi
+}
+
+txt_append() {
+	local anchor="$1"
+	local insert="$2"
+	local infile="$3"
+	local tmpfile="$infile.swp"
+
+	# sed append cmd: 'a\' + newline + text + newline
+	cmd="$(printf "a\\%b$insert" "\n")"
+
+	sed -e "/$anchor/$cmd" "$infile" >"$tmpfile"
+	# replace original file with the edited one
+	mv "$tmpfile" "$infile"
+}
+
+txt_subst() {
+	local before="$1"
+	local after="$2"
+	local infile="$3"
+	local tmpfile="$infile.swp"
+
+	sed -e "s$SED_DELIM$before$SED_DELIM$after$SED_DELIM" "$infile" >"$tmpfile"
+	# replace original file with the edited one
+	mv "$tmpfile" "$infile"
+}
+
+txt_delete() {
+	local text="$1"
+	local infile="$2"
+	local tmpfile="$infile.swp"
+
+	sed -e "/$text/d" "$infile" >"$tmpfile"
+	# replace original file with the edited one
+	mv "$tmpfile" "$infile"
+}
+
+set_var() {
+	local name=$1 new=$2 before=$3
+
+	name_re="^($name=|# $name is not set)"
+	before_re="^($before=|# $before is not set)"
+	if test -n "$before" && grep -Eq "$before_re" "$FN"; then
+		txt_append "^$before=" "$new" "$FN"
+		txt_append "^# $before is not set" "$new" "$FN"
+	elif grep -Eq "$name_re" "$FN"; then
+		txt_subst "^$name=.*" "$new" "$FN"
+		txt_subst "^# $name is not set" "$new" "$FN"
+	else
+		echo "$new" >>"$FN"
+	fi
+}
+
+undef_var() {
+	local name=$1
+
+	txt_delete "^$name=" "$FN"
+	txt_delete "^# $name is not set" "$FN"
+}
+
+if [ "$1" = "--file" ]; then
+	FN="$2"
+	if [ "$FN" = "" ] ; then
+		usage
+	fi
+	shift 2
+else
+	FN=.config
+fi
+
+if [ "$1" = "" ] ; then
+	usage
+fi
+
+MUNGE_CASE=yes
+while [ "$1" != "" ] ; do
+	CMD="$1"
+	shift
+	case "$CMD" in
+	--keep-case|-k)
+		MUNGE_CASE=no
+		continue
+		;;
+	--refresh)
+		;;
+	--*-after|-E|-D|-M)
+		checkarg "$1"
+		A=$ARG
+		checkarg "$2"
+		B=$ARG
+		shift 2
+		;;
+	-*)
+		checkarg "$1"
+		shift
+		;;
+	esac
+	case "$CMD" in
+	--enable|-e)
+		set_var "${CONFIG_}$ARG" "${CONFIG_}$ARG=y"
+		;;
+
+	--disable|-d)
+		set_var "${CONFIG_}$ARG" "# ${CONFIG_}$ARG is not set"
+		;;
+
+	--module|-m)
+		set_var "${CONFIG_}$ARG" "${CONFIG_}$ARG=m"
+		;;
+
+	--set-str)
+		# sed swallows one level of escaping, so we need double-escaping
+		set_var "${CONFIG_}$ARG" "${CONFIG_}$ARG=\"${1//\"/\\\\\"}\""
+		shift
+		;;
+
+	--set-val)
+		set_var "${CONFIG_}$ARG" "${CONFIG_}$ARG=$1"
+		shift
+		;;
+	--undefine|-u)
+		undef_var "${CONFIG_}$ARG"
+		;;
+
+	--state|-s)
+		if grep -q "# ${CONFIG_}$ARG is not set" $FN ; then
+			echo n
+		else
+			V="$(grep "^${CONFIG_}$ARG=" $FN)"
+			if [ $? != 0 ] ; then
+				echo undef
+			else
+				V="${V/#${CONFIG_}$ARG=/}"
+				V="${V/#\"/}"
+				V="${V/%\"/}"
+				V="${V//\\\"/\"}"
+				echo "${V}"
+			fi
+		fi
+		;;
+
+	--enable-after|-E)
+		set_var "${CONFIG_}$B" "${CONFIG_}$B=y" "${CONFIG_}$A"
+		;;
+
+	--disable-after|-D)
+		set_var "${CONFIG_}$B" "# ${CONFIG_}$B is not set" "${CONFIG_}$A"
+		;;
+
+	--module-after|-M)
+		set_var "${CONFIG_}$B" "${CONFIG_}$B=m" "${CONFIG_}$A"
+		;;
+
+	# undocumented because it ignores --file (fixme)
+	--refresh)
+		yes "" | make oldconfig
+		;;
+
+	*)
+		echo "bad command: $CMD" >&2
+		usage
+		;;
+	esac
+done
-- 
2.39.2



