Delivery-date: Fri, 29 Nov 2024 13:03:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGziK-001qRW-1w
	for lore@lore.pengutronix.de;
	Fri, 29 Nov 2024 13:03:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGziJ-0002DY-H8
	for lore@pengutronix.de; Fri, 29 Nov 2024 13:03:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6bXrdLk/ujfUjbYpKZOXuk9Bcpcw9+dk9LblUSbPB8=; b=hHqWpnRvqPxCftFaNEnDvE/9/1
	xACz3YOfSEnpKVWmeXLvRMJEC8NF/s4PgNZ9TeAq/2Ozoq+9mGHuumi3uxRvE1rWLBCd9cYtWd7ep
	GoyxwvO3QAwoZM+aTYglw5YucQhFWNUqSHRnciVeHu3QEpXPeLrXX8cpdU+hq/mpbrz5ZbcJ9fdTQ
	IVy9qfRFI7Xc96YVi4DVU/Kst+OClhzD2e2Og3vV9fx6ClbHw6OiF1jjLjMJYOE9lGWQa4FwbhED3
	rFQJQVRGi3h5Q9tQW8gBpOUh8JktYyxqitAErudMW4R7vvUCHwaY5eneJAl1zrgutbEJoV8zUC1MO
	QG9X14Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhS-000000001Vr-0A8L;
	Fri, 29 Nov 2024 12:02:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhO-000000001Rc-3HFN
	for barebox@bombadil.infradead.org;
	Fri, 29 Nov 2024 12:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=l6bXrdLk/ujfUjbYpKZOXuk9Bcpcw9+dk9LblUSbPB8=; b=kTH000X/Pu5dfBf5dIk2iCtAo1
	iUUB84d2D/4Qj6EyPxj2ZxJjiyZ/X8RUAgTAAKLkI3YdxOgHYASIzE901El6WInicHITclJNjg9Q3
	538RgvJlMj6JUACtGMKpr61wWxi+A3560IYArpDjhx1AJ7wo7uw1dUqROfLkxWVg5m5WWqSfc6yUX
	rp2FlLuRde90ZC2+a/o2rXVanm6nMrEQ2NAO0QU9X8SuKIc3nyOGqNbcp52eNGDRW8sZ0XJNtkWfp
	/bLv+fJi55UTXve1oDYpuw07bqihbzTEBe8bKUmOMwZD+dwf4Be+fQLxd0Y9Hs7qNMdnYi49nW0xN
	QvsIl/bw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGzhK-00000001jXo-1spO
	for barebox@lists.infradead.org;
	Fri, 29 Nov 2024 12:02:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhJ-0001MS-AY; Fri, 29 Nov 2024 13:02:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzhI-000mLq-0W;
	Fri, 29 Nov 2024 13:02:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tGzQ9-000vyS-2O;
	Fri, 29 Nov 2024 12:44:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Nov 2024 12:44:32 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241129-k3-r5-v1-17-67c4bb42a5c7@pengutronix.de>
References: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
In-Reply-To: <20241129-k3-r5-v1-0-67c4bb42a5c7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1732880665; l=5702;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=p2STlQ6oZFcRlJ0qmIGr2oTPPHhG1PBMc853/FK6SNA=;
 b=u6I+CrshqjIHL9RtpWwrJDiIU4KwPUfP+hb6q1UAVz8bl38eDbxZJokoHaNjxRG0yJmIDdeuH
 ZUDSu/yND2/D7ObBEZBST72TtJkOv27/fXQT//zsdEHLKnajlFe+C/d
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_120210_682836_8305D4FE 
X-CRM114-Status: GOOD (  13.98  )
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
Subject: [PATCH 17/20] ARM: k3: Add k3img tool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The image format for the TI K3 SoCs is basically a x509 certificate
file. In U-Boot this image is generated with binman. This patch adds
a simple shell script using openssl directly. This is by far not so
sophisticated as the U-Boot variant, but is enough for now to get a
beagleplay up and running.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/ti-degenerate-key.pem |  10 +++
 images/Makefile.k3                     |   7 ++
 scripts/k3img                          | 160 +++++++++++++++++++++++++++++++++
 3 files changed, 177 insertions(+)

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
index f7acd78014..f2857791c8 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -11,3 +11,10 @@ $(obj)/k3-am625-beagleplay.fit: $(obj)/barebox-beagleplay.img
 FILE_barebox-beagleplay-fit.img = k3-am625-beagleplay.fit
 image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-fit.img
 
+quiet_cmd_k3_image = K3IMG   $@
+      cmd_k3_image = $(srctree)/scripts/k3img --sysfw $(SYSFW_$(@F)) \
+		--sysfwdata $(SYSFWDATA_$(@F)) --dmdata $(DMDATA_$(@F)) \
+		--key $(KEY_$(@F)) --sbl $< --out $@
+
+$(obj)/%.k3img: $(obj)/% scripts/k3img FORCE
+	$(call if_changed,k3_image)
diff --git a/scripts/k3img b/scripts/k3img
new file mode 100755
index 0000000000..5a94576275
--- /dev/null
+++ b/scripts/k3img
@@ -0,0 +1,160 @@
+#!/bin/bash
+
+TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:' -n 'k3img' -- "$@")
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
+	'--')
+		shift
+		break
+	;;
+	*)
+		echo 'Internal error!' >&2
+		echo $1 ficken
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
+total=$(($sblsize + sysfwsize + $sysfwdatasize + dmdatasize))
+
+certcfg=$(mktemp k3img.XXXXXXX)
+cert=$(mktemp k3img.XXXXXXX)
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
+numComp=INTEGER:4
+sbl=SEQUENCE:sbl
+sysfw=SEQUENCE:sysfw
+sysfw_data=SEQUENCE:sysfw_data
+
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
+
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
+cat $cert $sbl $sysfw $sysfwdata $dmdata > $out

-- 
2.39.5



