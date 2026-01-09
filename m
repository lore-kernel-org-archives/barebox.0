Delivery-date: Fri, 09 Jan 2026 14:29:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veCYk-0030EE-30
	for lore@lore.pengutronix.de;
	Fri, 09 Jan 2026 14:29:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1veCYk-0008Bn-9l
	for lore@pengutronix.de; Fri, 09 Jan 2026 14:29:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MqyzWbKpadXlNR6L7out5RgyQi2uA67P4RePPRBwL8I=; b=CVxd3HfVlOSeN4yn7UZ+E7ORvA
	Wt28YPijjHmoExebcGbYfmyhTx/E0tqJf2v6z0hEZIt5Ztr90ShXyktXePJs0mJs0TVRDf1+OR27s
	9NgGfTnS+s8j69npfetcmK7NGDLoDDDPmLT5LnBTnyBypXMO+jO7OVyBO3UEwcCIcGu4zFHmWhN2i
	Fe3TKPwDy3ZdDvx0imtVVQZn9GLnfaP9z/F9ZKW6QcIS2LDuDgFrs1hrxacYbhgPkoR7xw6YzQ9Sm
	xmG2y9TSbZJ42bHNhZhOFgMPA3b120KSn6lidreAt9dVLHLdiPAglijz2v2yJHMy9DfYNWqvfD+xj
	laaRrwXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCY8-00000002Lxh-0zFR;
	Fri, 09 Jan 2026 13:29:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veCY6-00000002Lx6-1FwV
	for barebox@lists.infradead.org;
	Fri, 09 Jan 2026 13:29:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCY4-00083E-OA; Fri, 09 Jan 2026 14:29:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCY4-009qwG-1o;
	Fri, 09 Jan 2026 14:29:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1veCY4-00000003E5C-1okw;
	Fri, 09 Jan 2026 14:29:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  9 Jan 2026 14:29:03 +0100
Message-ID: <20260109132903.769111-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_052906_341048_9C7DCC1C 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] scripts/k3img: Add workaround for erratum i2474
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM62Lx 1.0 is affected by erratum i2474:

| Boot: Certain second stage binaries fail for block based boot modes
|
| ROM fails to boot on SD, eMMC, USB-DFU, Serial NAND, GPMC NAND, and UART
| if certificate size is aligned to 128 Bytes.
| Certificate size must not be aligned to 128 bytes, however, individual
| components must be aligned to 128 bytes.

This adds a partial workaround for this issue. We align the components
to 128 bytes, but we do not make sure the certificate is not aligned to
128 bytes. We currently do not seem to hit this issue in barebox.
However, we add a alignment check just to make sure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 37 ++++++++++++++++++++++++++++++++++---
 1 file changed, 34 insertions(+), 3 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index bd86a43789..b00aa54e50 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -68,6 +68,11 @@ TMPDIR="$(mktemp -d)"
 components=${TMPDIR}/components
 ext_boot_info=${TMPDIR}/ext_boot_info
 data=${TMPDIR}/data
+component=${TMPDIR}/component
+
+align128() {
+	echo $(( ($1 + 0x7f) & ~0x7f ))
+}
 
 for i in $*; do
 	filename=$(echo "$i" | cut -d ":" -f 1)
@@ -76,8 +81,13 @@ for i in $*; do
 	compOpts=$(echo "$i" | cut -d ":" -f 4)
 	destAddr=$(echo "$i" | cut -d ":" -f 5)
 
-	sha=$(sha512sum $filename | sed 's/ .*//')
-	size=$(stat -L -c%s $filename)
+	cp $filename $component
+
+	size=$(stat -L -c%s $component)
+	size=$(align128 $size)
+	truncate --size=$size $component
+
+	sha=$(sha512sum $component | sed 's/ .*//')
 
 	total=$((total + size))
 	num_comp=$((num_comp + 1))
@@ -95,7 +105,8 @@ shaValue = FORMAT:HEX,OCT:$sha
 EndOfHereDocument
 
 	echo "comp$num_comp = SEQUENCE:comp$num_comp" >> $ext_boot_info
-	cat $filename >> $data
+
+	cat $component >> $data
 done
 
 echo >> $ext_boot_info
@@ -149,4 +160,24 @@ esac
 
 openssl req ${PKCS11OPTS} -new -x509 -key "${key}" -nodes -outform DER -out "${cert}" -config "${certcfg}" -sha512
 
+certsize=$(stat -L -c%s ${cert})
+
+#
+# AM62l erratum i2474:
+#
+#   Boot: Certain second stage binaries fail for block based boot modes
+#   ROM fails to boot on SD, eMMC, USB-DFU, Serial NAND, GPMC NAND, and
+#   UART if certificate size is aligned to 128 Bytes.
+#
+#   Certificate size must not be aligned to 128 bytes, however, individual
+#   components must be aligned to 128 bytes.
+#
+# The 128 byte alignment of the components is assured by this script. If you
+# hit the check below you have to add/remove a few bytes to/from $certcfg above.
+#
+if [ $certsize = $(align128 $certsize) ]; then
+	echo "$0: Certificate is 128 byte aligned, this is not allowed"
+	exit 1
+fi
+
 cat $cert $data > $out
-- 
2.47.3



