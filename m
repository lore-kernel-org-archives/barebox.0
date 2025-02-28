Delivery-date: Fri, 28 Feb 2025 08:33:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnush-007y55-1l
	for lore@lore.pengutronix.de;
	Fri, 28 Feb 2025 08:33:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tnusg-00064F-AO
	for lore@pengutronix.de; Fri, 28 Feb 2025 08:33:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IJlwJevJRW0cCgUnsCT5+xUCQMeVXcxihqYf9y0eQuw=; b=rCLiXD/IZNObGW5VIpSwHIJU1O
	2sgKO5rACbnzjnP2OhIZ0B93ASR7U7FY1tYoXtwTRp4JxT6kLRARoYAWDA+yCEc7tjlNOQykzAMWH
	F2/b7zQBT3vTeVG/Nkm6I/EE+o4ObM+UYWnw9t7JVa6X7kSXtYOWJG6hv1kSOJmLh4JXvH+3sO55r
	WotQEjCLqQJiL3wxapZEAskKWNZFYclT84HEesY9G2EqnciGxF9qIP108itdiUFoeJ7BTXyQtanPN
	s96tkf2PhnoTLv8IBovT1Fj8StaxkO1P2cTbdANpg1MJOABhkYDQ2RYhh7NpWQZW+X6+sHqhre8JO
	Jw3pWj1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnusE-0000000A0Vr-0GZi;
	Fri, 28 Feb 2025 07:33:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnuqw-0000000A0H1-1qMB
	for barebox@lists.infradead.org;
	Fri, 28 Feb 2025 07:32:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-0005iE-9F; Fri, 28 Feb 2025 08:32:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuqv-003FvL-0G;
	Fri, 28 Feb 2025 08:32:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tnuc6-005CL4-0T;
	Fri, 28 Feb 2025 08:16:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Feb 2025 08:17:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250228-am625-secure-v1-13-4002488ff5ed@pengutronix.de>
References: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
In-Reply-To: <20250228-am625-secure-v1-0-4002488ff5ed@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1740727010; l=3014;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jkxInCVBizbCmeM9OvIghcP9D1ptiLWMq+4EdhWf/TE=;
 b=0/aNswCVWnrBFqkilBQqC3eCvGqS15Tcrwb+QldwTc7g//IEyYOZR3XivRUkmZkyZDibf87ON
 WAchQfycddECdx5d7Zyv8fK3ra/sxJJ7SplTYz1VgP6RNnGiUptN3CE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_233210_504726_67A0EC00 
X-CRM114-Status: GOOD (  11.48  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 13/13] scripts: add k3sign
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds k3sign which is a small example script to generate a
certificate from an input file suitable for verification against the K3
ROM API.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3sign | 126 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/scripts/k3sign b/scripts/k3sign
new file mode 100755
index 0000000000..df66501eee
--- /dev/null
+++ b/scripts/k3sign
@@ -0,0 +1,126 @@
+#!/bin/bash
+
+set -e
+
+myname=${0##*/}
+
+usage() {
+	cat >&2 << EOL
+
+Sign an image suitable for authenticating with the K3 ROM API
+Usage:
+$myname options <INFILE>
+options:
+	--key <KEYFILE>	The key to sign the image with
+	--out <OUTFILE>	Write output to OUTFILE
+	--help		This help
+EOL
+	exit 1
+}
+
+TEMP=$(getopt -o '' --long 'out:,key:,help' -n 'k3img' -- "$@")
+
+if [ $? -ne 0 ]; then
+	echo 'Terminating...' >&2
+	exit 1
+fi
+
+# Note the quotes around "$TEMP": they are essential!
+eval set -- "$TEMP"
+unset TEMP
+
+while true; do
+        case "$1" in
+	'--out')
+		out="$2"
+		shift 2
+		continue
+	;;
+	'--key')
+		key="$2"
+		shift 2
+		continue
+	;;
+	'--help')
+		usage
+		continue
+	;;
+	'--')
+		shift
+		break
+	;;
+	*)
+		echo 'Internal error!' >&2
+		exit 1
+	;;
+	esac
+done
+
+if [ $# = 0 ]; then
+	echo "No input file given"
+	usage
+fi
+
+in=$1
+
+if [ -z "$out" ]; then
+	out=$in.cert
+fi
+
+if [ -z "$key" ]; then
+	echo "No key given (--key)"
+	exit 1
+fi
+
+filesha=$(sha512sum $in | sed 's/ .*//')
+filesize=$(stat -c%s $in)
+
+TMPDIR="$(mktemp -d)"
+trap 'rm -rf -- "$TMPDIR"' EXIT
+
+certcfg=${TMPDIR}/certcfg
+cert=${TMPDIR}/cert
+
+cat > $certcfg <<EndOfHereDocument
+[ req ]
+distinguished_name     = req_distinguished_name
+x509_extensions        = v3_ca
+prompt                 = no
+dirstring_type         = nobmp
+
+[ req_distinguished_name ]
+C                      = US
+ST                     = TX
+L                      = Dallas
+O                      = Texas Instruments Incorporated
+OU                     = Processors
+CN                     = TI Support
+emailAddress           = support@ti.com
+
+[ v3_ca ]
+basicConstraints       = CA:true
+1.3.6.1.4.1.294.1.3    = ASN1:SEQUENCE:swrv
+1.3.6.1.4.1.294.1.34   = ASN1:SEQUENCE:sysfw_image_integrity
+1.3.6.1.4.1.294.1.35   = ASN1:SEQUENCE:sysfw_image_load
+1.3.6.1.4.1.294.1.37   = ASN1:SEQUENCE:firewall
+
+[ swrv ]
+swrv = INTEGER:1
+
+[ sysfw_image_integrity ]
+shaType                = OID:2.16.840.1.101.3.4.2.3
+shaValue               = FORMAT:HEX,OCT:$filesha
+imageSize              = INTEGER:$filesize
+
+[ sysfw_image_load ]
+destAddr = FORMAT:HEX,OCT:00000000
+authInPlace = INTEGER:0x2
+
+[ firewall ]
+numFirewallRegions = INTEGER:0
+
+EndOfHereDocument
+
+openssl req -new -x509 -key $key -nodes -outform DER -out $cert -config $certcfg -sha512
+
+cat $cert $in > $out

-- 
2.39.5



