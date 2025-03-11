Delivery-date: Tue, 11 Mar 2025 13:48:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2S-00CgBc-1R
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 13:48:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trz2R-0007dX-5o
	for lore@pengutronix.de; Tue, 11 Mar 2025 13:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IJlwJevJRW0cCgUnsCT5+xUCQMeVXcxihqYf9y0eQuw=; b=Z7WJvpf4/yNaH/vCaBngY9Yrzm
	S16ELZQ8QazIxY7PE1MCulf3Jjee9OSyImmWyNV1kDfwjA/kRCB+Bg3PmppxujNdtnDirF2ezJSjz
	b3fgyftOd94iefCUNjftgRhw9JSFbnWzkYGMrrdCRas+ZPLF1UT9nX2Xa+Fsta/VHEBzf0VcgiFrX
	qG3eg5/X3CyY2+wXhONkdVEqfqwSsFm1AFlof/C1GjvmLUHh3Z9ep4ONZCTOaAElzNozoK6jA29YR
	QrND79nTRUKP89DFNs1X+azeGMlnO9XmimnPrrF5RffmZmD4ku3KuPlKDHJz+iElMIfpad0JW7fO1
	N90YugcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trz21-00000005jOd-2zDw;
	Tue, 11 Mar 2025 12:48:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trynT-00000005f5Y-0MgB
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 12:33:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-0004hV-QN; Tue, 11 Mar 2025 13:33:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trynR-005B8A-21;
	Tue, 11 Mar 2025 13:33:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tryfb-000oVs-1J;
	Tue, 11 Mar 2025 13:25:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 11 Mar 2025 13:25:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250311-am625-secure-v2-13-3cbbfa092346@pengutronix.de>
References: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
In-Reply-To: <20250311-am625-secure-v2-0-3cbbfa092346@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741695915; l=3014;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jkxInCVBizbCmeM9OvIghcP9D1ptiLWMq+4EdhWf/TE=;
 b=c/p0jbIzIAFoZxL9thlE+Cg5rVUqGb5FFP4SBUadoB6AEkQ/EPeXNMt1gmXm14St15ket8kuY
 GzAdptDI+qIBOHVBpsG2EJDmUBroTf6HGFqVSBFxzeM1Mkgv16qEdkR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_053323_129770_8BEBB3CF 
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/14] scripts: add k3sign
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



