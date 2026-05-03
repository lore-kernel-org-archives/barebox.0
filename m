Delivery-date: Sun, 03 May 2026 10:31:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEv-000TsL-1R
	for lore@lore.pengutronix.de;
	Sun, 03 May 2026 10:31:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJSEu-0002zh-5I
	for lore@pengutronix.de; Sun, 03 May 2026 10:31:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Z6cspS00RuTufvDCZgT5PTWnFp0BfcpO7YD1A/TuFA=; b=UPT7aIL2zlaKJIM4ZIyMB/fMTl
	y5uYh/q2QgWIH7t3nQFrq31YfOtvH9ORVp43XHJUFxHl6kgYwxi/C4C25XtwvZcaHLLbpY4CYxbyO
	pkXnDVOFco4AW5xANoKUKzS9u/Rn7g1dXPHfOmuVmrL3WOmBoZnZgCyBkIw9TS4gBn1zSCrA6c2ve
	TLtCbypBhiqt3qQ+m/xSAhnFDiXj5F6OKTSMKAzTwGsZma+qCc1LmLI5N1Tc66MtcGKJ7g547w8BF
	U0HKntEv8u5T0gCP39/r8TQ0lU4MfVFJeQuFk/ano38WDsGFVyWmObWc8KTKWYS2MTmUBIIvH6vA0
	BALfy2rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSEU-0000000AdKI-3yxJ;
	Sun, 03 May 2026 08:31:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJSES-0000000AdJI-46ZY
	for barebox@lists.infradead.org;
	Sun, 03 May 2026 08:31:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJSER-0002qu-E8; Sun, 03 May 2026 10:31:19 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sun,  3 May 2026 10:30:05 +0200
Message-ID: <20260503083115.2763213-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260503083115.2763213-1-a.fatoum@barebox.org>
References: <20260503083115.2763213-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_013121_013702_A13C2BBB 
X-CRM114-Status: GOOD (  11.52  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] netconsole: add support for binding to specific IP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If scripts/netconsole is already running when QEMU starts up, the host
forwarding rule may break QEMU startup:

  qemu-system-aarch64: -nic user,id=net0,hostfwd=udp:127.0.0.2:6666-:6666,\
  tftp=/src/build/barebox/imx8/testfs:

    Could not set up host forwarding rule 'udp:127.0.0.2:6666-:6666'

This can be worked around by having QEMU bind to a different loopback
address than what's netcat is going to use.

Add a -s option to control this.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 scripts/netconsole | 33 ++++++++++++++++++++++++---------
 1 file changed, 24 insertions(+), 9 deletions(-)

diff --git a/scripts/netconsole b/scripts/netconsole
index 7ab81a3a9191..1945de7f9381 100755
--- a/scripts/netconsole
+++ b/scripts/netconsole
@@ -2,9 +2,14 @@
 
 usage() {
 	(
-	echo "Usage: $0 <board IP> [board port]"
+	echo "Usage: $0 [-sh] <board IP> [board port]"
 	echo ""
 	echo "If port is not specified, '6666' will be used"
+	echo ""
+	echo "Options:"
+	echo "  -s SADDR   Bind to SADDR on host side"
+	echo "  -h         Show this help text and exit"
+
 	[ -z "$*" ] && exit 0
 	echo ""
 	echo "ERROR: $*"
@@ -13,16 +18,26 @@ usage() {
 	exit $?
 }
 
-while [ -n "$1" ] ; do
-	case $1 in
-		-h|--help) usage;;
-		--)        break;;
-		-*)        usage "Invalid option $1";;
-		*)         break;;
+if [ "$1" = "--help" ]; then
+	usage
+fi
+
+while getopts ":hs:" opt; do
+	case "$opt" in
+		h) usage ;;
+		s) saddr="$OPTARG" ;;
+		\?) usage "Invalid option -$OPTARG" ;;
+		:)  usage "Option -$OPTARG requires an argument" ;;
 	esac
-	shift
 done
 
+shift $((OPTIND - 1))
+
+# handle end-of-options marker
+if [ "$1" = "--" ]; then
+	shift
+fi
+
 ip=$1
 port=${2:-6666}
 
@@ -50,7 +65,7 @@ echo "NOTE: the interrupt signal (normally ^C) has been remapped to ^T"
 stty -icanon -echo intr ^T
 set -m
 (
-	while ${nc} -u -l -p ${port} < /dev/null ; do
+	while ${nc} ${saddr:+-s "$saddr"} -u -l -p ${port} < /dev/null ; do
 		:
 	done
 ) &
-- 
2.47.3



