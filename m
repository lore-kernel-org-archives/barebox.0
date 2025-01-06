Delivery-date: Mon, 06 Jan 2025 15:05:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjs-00HVyb-0V
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 15:05:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUnjp-0000pn-Od
	for lore@pengutronix.de; Mon, 06 Jan 2025 15:05:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XwqJ9Tl0PmlSxZls0peLkLi8j+Wxm6WTlfLoBlAKi+A=; b=AcqCqNKXHURCueJDAgcxVQTy0j
	I2dfG0BKEPkYonoGMb8/GmVwTMIQX2rmPZxFxdhEfvwDDEvhuuYXPA8z1JJQ3U7fYUR6vls7mxklr
	kkiI36+Dq5O6mRUI2KxeKObgUu9yjkLOQhm89/B2mM1qrY8R/quT4fk1OH5V1zTFCmfOVQn+Knm+C
	TgjgJuY/v/euuJD9NvEWjQCBBd9kVYKRoJyEfnoO/OweeyEv2j1UnnfPuVbQ5LrOBlhuw/7+wbFc/
	fTUjDmerHiWxwvt/aWWQ8FWJ4dAS+byGSxU3gC7oNP6JMtQGcfQ0r037bpva5D5PfFKM9OSTQhv6J
	uECMsDIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUnjB-00000001V4D-3qrE;
	Mon, 06 Jan 2025 14:05:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUngV-00000001UYE-33HB
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 14:02:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngU-00089c-KA; Mon, 06 Jan 2025 15:02:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUngT-007B6M-29;
	Mon, 06 Jan 2025 15:02:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tUnRd-00CsVv-1x;
	Mon, 06 Jan 2025 14:47:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 06 Jan 2025 14:47:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250106-k3-r5-v2-17-9de6270089ef@pengutronix.de>
References: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
In-Reply-To: <20250106-k3-r5-v2-0-9de6270089ef@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736171221; l=10084;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rHT7lTo2G9ZkCVo/5qd07EgB8sgZv3sMknEi5TNVVfw=;
 b=B9B5Ty8G1/h6x/3+kSsxnCFF7gbyRBl27qHmYMNSXp82FvKFqeEpxWoeM7snWsRa6ULGQ2jdC
 O1uvLeWpBE4BIwexDFWlqDKJR8o5oMNnhmcBL6cCNCJobSF1FJnxQWv
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_060223_959321_FD90F5AD 
X-CRM114-Status: GOOD (  14.44  )
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
Subject: [PATCH v2 17/22] ARM: k3: Add k3img tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The image format for the TI K3 SoCs is basically a x509 certificate
file. In U-Boot this image is generated with binman. This patch adds
a simple shell script using openssl directly. This is by far not so
sophisticated as the U-Boot variant, but is enough for now to get a
beagleplay up and running.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/custMpk.pem           |  51 +++++++++
 arch/arm/mach-k3/ti-degenerate-key.pem |  10 ++
 images/Makefile.k3                     |  10 ++
 scripts/k3img                          | 187 +++++++++++++++++++++++++++++++++
 4 files changed, 258 insertions(+)

diff --git a/arch/arm/mach-k3/custMpk.pem b/arch/arm/mach-k3/custMpk.pem
new file mode 100644
index 0000000000..adba378c80
--- /dev/null
+++ b/arch/arm/mach-k3/custMpk.pem
@@ -0,0 +1,51 @@
+-----BEGIN RSA PRIVATE KEY-----
+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
+-----END RSA PRIVATE KEY-----
diff --git a/arch/arm/mach-k3/ti-degenerate-key.pem b/arch/arm/mach-k3/ti-degenerate-key.pem
new file mode 100644
index 0000000000..bd7d3745ad
--- /dev/null
+++ b/arch/arm/mach-k3/ti-degenerate-key.pem
@@ -0,0 +1,10 @@
+-----BEGIN RSA PRIVATE KEY-----
+MIIBWwIBAAKBgQDRfrnXQaP0k6vRK/gZ+bDflSU6y1JagGeQ/b+QYuiDz14japog
+8fRSu5WBsAxaSaySAUwS3L9Ppw+hGMecmyIJ494aMfZTtk1g49gU58joduiRnu7e
+QSZHMnehhuNlfD7A2tAAKnxIYuabs8zHYM/SS9Ne7t3kIQMbKfUSzNy6qQIBAQIB
+AQJBAOelUA376o6w3HkShXfN+shaOZYqFuTJ9exLMwsLp7DZKXB5F9I4JJ+Vkvho
+k6QWs7vkhleLSYUZknXHYm26ZE0CQQDnhTtd4PTBoZPjPXOeYMJFtEdMNy0XP6ey
+bcce389ugoY7BEkvASrd8PHgJQHziepgWOG4DGp33c64Hfq4zI3NAgEBAgEBAkA0
+RbK4uqoLciQluesTPU6lBy7Se3Dw0F9xBqlF5SR4KI6q+zQrHpBKyFOofMHZgizR
+iCrL55cxEM146zMw3AnF
+-----END RSA PRIVATE KEY-----
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index f7acd78014..315ec47bb2 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -11,3 +11,13 @@ $(obj)/k3-am625-beagleplay.fit: $(obj)/barebox-beagleplay.img
 FILE_barebox-beagleplay-fit.img = k3-am625-beagleplay.fit
 image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-fit.img
 
+quiet_cmd_k3_image = K3IMG   $@
+      cmd_k3_image = if [ -n "$(INNERDATA_$(@F))" ]; then \
+		inner="--innerdata $(INNERDATA_$(@F))"; \
+		fi; \
+		$(srctree)/scripts/k3img --sysfw $(SYSFW_$(@F)) \
+		--sysfwdata $(SYSFWDATA_$(@F)) --dmdata $(DMDATA_$(@F)) \
+		--key $(KEY_$(@F)) $$inner --sbl $< --out $@
+
+$(obj)/%.k3img: $(obj)/% scripts/k3img FORCE
+	$(call if_changed,k3_image)
diff --git a/scripts/k3img b/scripts/k3img
new file mode 100755
index 0000000000..048da82b92
--- /dev/null
+++ b/scripts/k3img
@@ -0,0 +1,187 @@
+#!/bin/bash
+
+TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:' -n 'k3img' -- "$@")
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
+        '--sysfw')
+		sysfw="$2"
+		shift 2
+		continue
+	;;
+        '--sysfwdata')
+		sysfwdata="$2"
+		shift 2
+		continue
+	;;
+        '--sysfw')
+		sysfw="$2"
+		shift 2
+		continue
+	;;
+        '--dmdata')
+		dmdata="$2"
+		shift 2
+		continue
+	;;
+	'--out')
+		out="$2"
+		shift 2
+		continue
+	;;
+	'--sbl')
+		sbl="$2"
+		shift 2
+		continue
+	;;
+	'--key')
+		key="$2"
+		shift 2
+		continue
+	;;
+	'--innerdata')
+		innerdata="$2"
+		shift 2
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
+shasbl=$(sha512sum $sbl | sed 's/ .*//')
+shasysfw=$(sha512sum $sysfw | sed 's/ .*//')
+shasysfwdata=$(sha512sum $sysfwdata | sed 's/ .*//')
+shadmdata=$(sha512sum $dmdata | sed 's/ .*//')
+
+sblsize=$(stat -c%s $sbl)
+sysfwsize=$(stat -c%s $sysfw)
+sysfwdatasize=$(stat -c%s $sysfwdata)
+dmdatasize=$(stat -c%s $dmdata)
+
+total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
+
+certcfg=$(mktemp k3img.XXXXXXX)
+cert=$(mktemp k3img.XXXXXXX)
+
+num_comp=4
+
+if [ -n "${innerdata}" ]; then
+	shainnerdata=$(sha512sum $innerdata | sed 's/ .*//')
+	innerdatasize=$(stat -c%s $innerdata)
+
+	innercert=$(cat <<EOF
+[sysfw_inner_cert]
+compType = INTEGER:3
+bootCore = INTEGER:0
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:00000000
+compSize = INTEGER:$innerdatasize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shainnerdata
+EOF
+)
+
+	num_comp=$((num_comp + 1))
+	total=$((total + innerdatasize))
+	sysfw_inner_cert="sysfw_inner_cert=SEQUENCE:sysfw_inner_cert"
+fi
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
+basicConstraints = CA:true
+1.3.6.1.4.1.294.1.3=ASN1:SEQUENCE:swrv
+1.3.6.1.4.1.294.1.9=ASN1:SEQUENCE:ext_boot_info
+1.3.6.1.4.1.294.1.8=ASN1:SEQUENCE:debug
+
+[swrv]
+swrv=INTEGER:1
+
+[ext_boot_info]
+extImgSize=INTEGER:$total
+numComp=INTEGER:$num_comp
+sbl=SEQUENCE:sbl
+sysfw=SEQUENCE:sysfw
+sysfw_data=SEQUENCE:sysfw_data
+$sysfw_inner_cert
+dm_data=SEQUENCE:dm_data
+
+[sbl]
+compType = INTEGER:1
+bootCore = INTEGER:16
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:43c00000
+compSize = INTEGER:$sblsize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shasbl
+
+[sysfw]
+compType = INTEGER:2
+bootCore = INTEGER:0
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:00040000
+compSize = INTEGER:$sysfwsize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shasysfw
+
+[sysfw_data]
+compType = INTEGER:18
+bootCore = INTEGER:0
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:00067000
+compSize = INTEGER:$sysfwdatasize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shasysfwdata
+
+[ debug ]
+debugUID = FORMAT:HEX,OCT:0000000000000000000000000000000000000000000000000000000000000000
+debugType = INTEGER:4
+coreDbgEn = INTEGER:0
+coreDbgSecEn = INTEGER:0
+
+$innercert
+
+[dm_data]
+compType = INTEGER:17
+bootCore = INTEGER:16
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:43c3a800
+compSize = INTEGER:$dmdatasize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shadmdata
+
+EndOfHereDocument
+
+openssl req -new -x509 -key $key -nodes -outform DER -out $cert -config $certcfg -sha512
+
+cat $cert $sbl $sysfw $sysfwdata $innerdata $dmdata > $out

-- 
2.39.5



