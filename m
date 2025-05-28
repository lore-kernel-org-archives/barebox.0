Delivery-date: Wed, 28 May 2025 14:04:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWY-001B6w-3D
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWT-0007C7-Tg
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ddsBuxXGFpmdsJP+kX7rEXQbwyKraDweq8mgL36ILEE=; b=wJ8mcxLAFBMgW4TcB0V4VZINqM
	Opxd9jAF/FRBt3CeUL1QB1R9ycbr9dNzqOBMZ1zNqnYxhOhGdU79SKaQyjxVSEAZK/28+AVUPbPvT
	GmBrK9q9U/RbqVbEBavur8tNEAsZ3N/POqqvfrDAf4v9PTrMzZ/+WBaVb4vxwvk7RfFjqk1oJ8UuF
	BI3F6PPwKFwq0SSVgx6uM94JTzgFSH/g2lCK5SM7q/+HKcS9Hjdvc6/A5xhdh97JHFn5mE07bkjUi
	G1GY3sm/JZjVal/blS/97WYG3VUE7c/iODiYvl0vMxK0A+8W2gJ8wIbHmdS/lbPLRjD4YEYQz1Ru0
	VP2CiF1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVi-0000000D32y-0JM6;
	Wed, 28 May 2025 12:03:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUF-0000000D2cW-220y
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ddsBuxXGFpmdsJP+kX7rEXQbwyKraDweq8mgL36ILEE=; b=up0LkEPSYq/GqHIzvCM2zZjr47
	eBhcBRCNgD7XXL9kW8X92MVudFMcdlmVQrb1kqepmYdegESBU5VUalh3foAN2TzsZHtD9VfRgtYzv
	gWnhn2PFF0rrx8M6mYUFY6phS6QsKj1qRrXLwMJ1c2T/+PsLQCCuAn5ySIymftt++EIOAFt7fqDaz
	ONOQw/u04q/og4zxhTq7D0v+RNkVNmc+jP3lvW00pVqJ9ZNk8ApgHvfEaOpHOBy9RR1xN8SGrozPA
	aacj270IxYiF5DZ9MaxXJ7ZOWtiwdpt66M1LrBOHJb42yhOUdiglkYq1NRU9UcxLJ9wy5DA+i9+EN
	UGBpGRJw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFUB-0000000Dauw-2ifg
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004Tc-7x; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-000aA7-01;
	Wed, 28 May 2025 14:01:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1x;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-29-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=2585;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=79ybFJjUKnVyK3jLTdw/Ai1v/RLq7IMvc013+O4Q39g=;
 b=zksvjZTy8qx0z6O/QyZruWmdnXByc1emy48AaWjtNe5ulsEoqVa4kOy/bbtm2l0S1K5X4+1zJ
 J5QZAgfL/yaCcy0ED05PrsQhVmdYwPO/JjJZO5C4KujVV/XGdQu/Cv8
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130219_730620_9E5AD9AD 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 29/31] scripts: k3img: make dmdata optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dmdata will not be needed for AM62L support, so make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 39 +++++++++++++++++++++++++--------------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index a9f7e513723b251c3605e81a97093e23850a8f4d..2cb2a6b33bbdf6bcf2dedcd067dcc2ffd2d17d04 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -68,14 +68,12 @@ done
 shasbl=$(sha512sum $sbl | sed 's/ .*//')
 shasysfw=$(sha512sum $sysfw | sed 's/ .*//')
 shasysfwdata=$(sha512sum $sysfwdata | sed 's/ .*//')
-shadmdata=$(sha512sum $dmdata | sed 's/ .*//')
 
 sblsize=$(stat -c%s $sbl)
 sysfwsize=$(stat -c%s $sysfw)
 sysfwdatasize=$(stat -c%s $sysfwdata)
-dmdatasize=$(stat -c%s $dmdata)
 
-total=$(($sblsize + $sysfwsize + $sysfwdatasize + $dmdatasize))
+total=$(($sblsize + $sysfwsize + $sysfwdatasize))
 
 TMPDIR="$(mktemp -d)"
 trap 'rm -rf -- "$TMPDIR"' EXIT
@@ -83,7 +81,7 @@ trap 'rm -rf -- "$TMPDIR"' EXIT
 certcfg=${TMPDIR}/certcfg
 cert=${TMPDIR}/cert
 
-num_comp=4
+num_comp=3
 
 if [ -n "${innerdata}" ]; then
 	shainnerdata=$(sha512sum $innerdata | sed 's/ .*//')
@@ -100,12 +98,32 @@ shaType  = OID:2.16.840.1.101.3.4.2.3
 shaValue = FORMAT:HEX,OCT:$shainnerdata
 EOF
 )
-
 	num_comp=$((num_comp + 1))
 	total=$((total + innerdatasize))
 	sysfw_inner_cert="sysfw_inner_cert=SEQUENCE:sysfw_inner_cert"
 fi
 
+if [ -n "${dmdata}" ]; then
+	shadmdata=$(sha512sum $dmdata | sed 's/ .*//')
+	dmdatasize=$(stat -c%s $dmdata)
+
+	dmdata_sect=$(cat <<EOF
+[dm_data]
+compType = INTEGER:17
+bootCore = INTEGER:16
+compOpts = INTEGER:0
+destAddr = FORMAT:HEX,OCT:$dmdata_addr
+compSize = INTEGER:$dmdatasize
+shaType  = OID:2.16.840.1.101.3.4.2.3
+shaValue = FORMAT:HEX,OCT:$shadmdata
+EOF
+)
+
+	num_comp=$((num_comp + 1))
+	total=$((total + dmdatasize))
+	dm_data="dm_data=SEQUENCE:dm_data"
+fi
+
 cat > $certcfg <<EndOfHereDocument
 [ req ]
 distinguished_name     = req_distinguished_name
@@ -138,7 +156,7 @@ sbl=SEQUENCE:sbl
 sysfw=SEQUENCE:sysfw
 sysfw_data=SEQUENCE:sysfw_data
 $sysfw_inner_cert
-dm_data=SEQUENCE:dm_data
+$dm_data
 
 [sbl]
 compType = INTEGER:1
@@ -175,14 +193,7 @@ coreDbgSecEn = INTEGER:0
 
 $innercert
 
-[dm_data]
-compType = INTEGER:17
-bootCore = INTEGER:16
-compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:$dmdata_addr
-compSize = INTEGER:$dmdatasize
-shaType  = OID:2.16.840.1.101.3.4.2.3
-shaValue = FORMAT:HEX,OCT:$shadmdata
+$dmdata_sect
 
 EndOfHereDocument
 

-- 
2.39.5



