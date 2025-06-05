Delivery-date: Thu, 05 Jun 2025 14:45:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yb-0040yA-2e
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yZ-0005pB-NV
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HX2Xtu2Yj96zhorGAcmdsAU9iB0sn6cDgww8J7mFIWg=; b=B0kHW6q5Q0a8tkUwXpui6P26Rn
	9CzyVgAtF8N+U3hCauQyAz43eyriNL8jBkriRf5PbsGQY5McQz22Oj+YV01rAgiI8mXOasstBtt5q
	sp264qfa2wXuLleoWLl0PRHtIO7RAfG+ala+Z/xaB4SvbRyFaQjPgKDzSSHaj8fjMrsiuIW000iS0
	tjwZBv4qYYhwErvCt3hZOpSfvv1J6av32GjNaWu17p77TQa4B0H/ViSiJCcEUlAi/OiRgcfqxPsfE
	C2Lta1whX9XrqwMAoQj/tlEuvpzDFlgz6TM7TD4uPryMRCf6Lk3zVHmg/iWnr739g8on90X4WIa44
	2sqA1WIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9y2-0000000FVPM-2erW;
	Thu, 05 Jun 2025 12:45:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vc-0000000FV6Q-0cHk
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vT-0003My-0A; Thu, 05 Jun 2025 14:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgN-1s;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1Q;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-1-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=7471;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YXaFv4lGB+H5nK4IrGqYiakO5Q0ixYNiSl71SGKoa/k=;
 b=hwOkcICJvTvRXKZbVD+/U8c2bdbhUHE7IT6TlaK/a76jLBO5skPqYbxUrIoSdyOnpPjE3QZAy
 sZWraqzVohrAuQmzZQ/xWy/MsgwLP9jvTULxvRC/d6gPKI5dcwScBTw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054240_347968_3376CC1B 
X-CRM114-Status: GOOD (  13.99  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/33] scripts/k3img: make more flexible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We had a template for the certificate in which each component has a
certain name and the file to use for each component was specified using
different options (--sysfw, --sysfwdata, --dmdata, --sbl and
--innerdata). All components have the same format and the name doesn't
matter. Instead of supporting different options just take a list of
components as input of the tool. Each component can be specified like:

filename:compType:bootCore:compOpts:destAddr

This not only makes the tool easier to follow, but also lets us specify
the compType, bootCore and compOpts options which need different values
for different SoCs.

While at it add support for the --help option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 |  12 ++--
 scripts/k3img      | 182 ++++++++++++++++++++---------------------------------
 2 files changed, 77 insertions(+), 117 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index d9b0af8d67b49569283d35ce0ec1792897654c57..c03ce7acc3152bacfcd7c3c8bf953c2214aaa42a 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -63,12 +63,16 @@ endif
 quiet_cmd_k3_image = K3IMG   $@
       cmd_k3_image = \
 		if [ -n "$(INNERDATA_$(@F))" ]; then				\
-			inner="--innerdata $(INNERDATA_$(@F))";			\
+			inner="$(INNERDATA_$(@F)):3:0:0:00000000";		\
 		fi;								\
 										\
-		$(srctree)/scripts/k3img --sysfw $(SYSFW_$(@F))			\
-		--sysfwdata $(SYSFWDATA_$(@F)) --dmdata $(DMDATA_$(@F))		\
-		--key $(KEY_$(@F)) $$inner --sbl $< --out $@
+		$(srctree)/scripts/k3img					\
+			$<:1:16:0:43c00000					\
+			$(SYSFW_$(@F)):2:0:0:00040000				\
+			$(SYSFWDATA_$(@F)):18:0:0:00067000			\
+			$$inner							\
+			$(DMDATA_$(@F)):17:16:0:43c3a800			\
+			--key $(KEY_$(@F)) --out $@
 
 $(obj)/%.k3img: $(obj)/% scripts/k3img FORCE
 	$(call if_changed,k3_image)
diff --git a/scripts/k3img b/scripts/k3img
index a514852fcdf6369c33b1e291b59c121badc6f4bd..1f2a34e1c4842171488f2d02a4c5722e4e3f94c2 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -2,7 +2,9 @@
 
 set -e
 
-TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:' -n 'k3img' -- "$@")
+bootcore_opts=0
+
+TEMP=$(getopt -o '' --long 'out:,key:,help' -n 'k3img' -- "$@")
 
 if [ $? -ne 0 ]; then
 	echo 'Terminating...' >&2
@@ -13,47 +15,38 @@ fi
 eval set -- "$TEMP"
 unset TEMP
 
+usage() {
+cat <<EndOfHereDocument
+Generate certificate images suitable for booting TI K3 SoCs.
+
+usage: $0 [OPTION]... [COMPONENT]...
+  --out <FILE>		write output image to <FILE>
+  --key <KEYFILE>	signing key
+  --help		this help
+
+Components have the form:
+
+filename:compType:bootCore:compOpts:destAddr
+
+For the meaning of compType, bootCore and compOpts see the Reference Manual
+EndOfHereDocument
+}
+
 while true; do
         case "$1" in
-        '--sysfw')
-		sysfw="$2"
-		shift 2
-		continue
-	;;
-        '--sysfwdata')
-		sysfwdata="$2"
-		shift 2
-		continue
-	;;
-        '--sysfw')
-		sysfw="$2"
-		shift 2
-		continue
-	;;
-        '--dmdata')
-		dmdata="$2"
-		shift 2
-		continue
-	;;
 	'--out')
 		out="$2"
 		shift 2
 		continue
 	;;
-	'--sbl')
-		sbl="$2"
-		shift 2
-		continue
-	;;
 	'--key')
 		key="$2"
 		shift 2
 		continue
 	;;
-	'--innerdata')
-		innerdata="$2"
-		shift 2
-		continue
+	'--help')
+		usage
+		exit 0
 	;;
 	'--')
 		shift
@@ -66,46 +59,57 @@ while true; do
 	esac
 done
 
-shasbl=$(sha512sum $sbl | sed 's/ .*//')
-shasysfw=$(sha512sum $sysfw | sed 's/ .*//')
-shasysfwdata=$(sha512sum $sysfwdata | sed 's/ .*//')
-shadmdata=$(sha512sum $dmdata | sed 's/ .*//')
+total=0
+num_comp=0
 
-sblsize=$(stat -c%s $sbl)
-sysfwsize=$(stat -c%s $sysfw)
-sysfwdatasize=$(stat -c%s $sysfwdata)
-dmdatasize=$(stat -c%s $dmdata)
-
-total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
-
-TMPDIR="$(mktemp -d)"
 trap 'rm -rf -- "$TMPDIR"' EXIT
+TMPDIR="$(mktemp -d)"
 
-certcfg=${TMPDIR}/certcfg
-cert=${TMPDIR}/cert
+components=${TMPDIR}/components
+ext_boot_info=${TMPDIR}/ext_boot_info
+data=${TMPDIR}/data
+
+for i in $*; do
+	filename=$(echo "$i" | cut -d ":" -f 1)
+	compType=$(echo "$i" | cut -d ":" -f 2)
+	bootCore=$(echo "$i" | cut -d ":" -f 3)
+	compOpts=$(echo "$i" | cut -d ":" -f 4)
+	destAddr=$(echo "$i" | cut -d ":" -f 5)
 
-num_comp=4
+	sha=$(sha512sum $filename | sed 's/ .*//')
+	size=$(stat -c%s $filename)
 
-if [ -n "${innerdata}" ]; then
-	shainnerdata=$(sha512sum $innerdata | sed 's/ .*//')
-	innerdatasize=$(stat -c%s $innerdata)
+	total=$((total + size))
+	num_comp=$((num_comp + 1))
 
-	innercert=$(cat <<EOF
-[sysfw_inner_cert]
-compType = INTEGER:3
-bootCore = INTEGER:0
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:00000000
-compSize = INTEGER:$innerdatasize
+	cat >> $components <<EndOfHereDocument
+[comp$num_comp]
+compType = INTEGER:$compType
+bootCore = INTEGER:$bootCore
+compOpts = INTEGER:$compOpts
+destAddr = FORMAT:HEX,OCT:$destAddr
+compSize = INTEGER:$size
 shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shainnerdata
-EOF
-)
+shaValue = FORMAT:HEX,OCT:$sha
 
-	num_comp=$((num_comp + 1))
-	total=$((total + innerdatasize))
-	sysfw_inner_cert="sysfw_inner_cert=SEQUENCE:sysfw_inner_cert"
-fi
+EndOfHereDocument
+
+	echo "comp$num_comp = SEQUENCE:comp$num_comp" >> $ext_boot_info
+	cat $filename >> $data
+done
+
+echo >> $ext_boot_info
+
+cat >> $components <<EndOfHereDocument
+[ debug ]
+debugUID = FORMAT:HEX,OCT:0000000000000000000000000000000000000000000000000000000000000000
+debugType = INTEGER:4
+coreDbgEn = INTEGER:0
+coreDbgSecEn = INTEGER:0
+EndOfHereDocument
+
+certcfg=${TMPDIR}/certcfg
+cert=${TMPDIR}/cert
 
 cat > $certcfg <<EndOfHereDocument
 [ req ]
@@ -135,58 +139,10 @@ swrv=INTEGER:1
 [ext_boot_info]
 extImgSize=INTEGER:$total
 numComp=INTEGER:$num_comp
-sbl=SEQUENCE:sbl
-sysfw=SEQUENCE:sysfw
-sysfw_data=SEQUENCE:sysfw_data
-$sysfw_inner_cert
-dm_data=SEQUENCE:dm_data
-
-[sbl]
-compType = INTEGER:1
-bootCore = INTEGER:16
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:43c00000
-compSize = INTEGER:$sblsize
-shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shasbl
-
-[sysfw]
-compType = INTEGER:2
-bootCore = INTEGER:0
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:00040000
-compSize = INTEGER:$sysfwsize
-shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shasysfw
-
-[sysfw_data]
-compType = INTEGER:18
-bootCore = INTEGER:0
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:00067000
-compSize = INTEGER:$sysfwdatasize
-shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shasysfwdata
-
-[ debug ]
-debugUID = FORMAT:HEX,OCT:0000000000000000000000000000000000000000000000000000000000000000
-debugType = INTEGER:4
-coreDbgEn = INTEGER:0
-coreDbgSecEn = INTEGER:0
-
-$innercert
-
-[dm_data]
-compType = INTEGER:17
-bootCore = INTEGER:16
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:43c3a800
-compSize = INTEGER:$dmdatasize
-shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shadmdata
-
 EndOfHereDocument
 
+cat $ext_boot_info $components >> $certcfg
+
 openssl req -new -x509 -key $key -nodes -outform DER -out $cert -config $certcfg -sha512
 
-cat $cert $sbl $sysfw $sysfwdata $innerdata $dmdata > $out
+cat $cert $data > $out

-- 
2.39.5



