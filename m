Delivery-date: Sun, 20 Feb 2022 13:49:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlex-004wvw-Kh
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:49:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLleu-0001Sv-R8
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:49:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kcXmTOpei+aN5NRNZg+ycjd5mtc+NMAAEhKtM4OpXqQ=; b=F4c3ihVIHT+mgu
	oNb14MDPvWuEVypEwS/Lo4dWCeEhZA69RzmQ6pd/IFIsafmOVbpeBmQIUil2A9TyOxoGe9PFOGfQr
	9nMgxqHV+6BzBsDa7m/9nFtEig4+6AK7JFO9B9FrfeA/EQ2Pk9qTMZdS4Aky8Im0DmyfB1b5JW4/a
	RfWgvs1PNm3iB2UZkUaR71ZKYlGRuMDo+hlKbTarRn63bb84FIkazjk2ydqcVpSjAHXzWznUQaXpq
	/aXKRqfZc65koPlYFGJel0IIcHvK68oIepkKzdR7H+yRiMiMaBPqcM0ukgJjkOcSVvdcQnr4dMKm0
	A4NxLV1THGyAWXg1ZsWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLldb-001IMa-5i; Sun, 20 Feb 2022 12:48:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld1-001I45-Jg
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:47:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zz-4D; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPZ-VY; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:18 +0100
Message-Id: <20220220124736.3052502-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044751_678661_5F21B9AF 
X-CRM114-Status: GOOD (  10.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 06/24] scripts: add tool to adjust bl33 load address in
 existing FIP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of rebuilding TF-A with a (newer) barebox, an existing image can
be repacked:

  fiptool update fip.bin --nt-fw images/barebox-dt-2nd.img \
    --hw-config build/arch/arm/dts/stm32mp157c-dk2.dtb

This may fail at runtime though, because the STM32MP default is to place
BL33 at the very start of RAM. The script introduced here offers
an alternative to rebuilding TF-A with adjust FW_CONFIG:

  ./scripts/fiptool_fwconfig -l 0xc0001000 mmcblk0p3

This will have barebox loaded 4096 bytes into the STM32MP SDRAM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/fiptool_fwconfig | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100755 scripts/fiptool_fwconfig

diff --git a/scripts/fiptool_fwconfig b/scripts/fiptool_fwconfig
new file mode 100755
index 000000000000..f76f450b0473
--- /dev/null
+++ b/scripts/fiptool_fwconfig
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+set -e
+
+# adjust bl33 load address in existing FIP
+
+FDTGET=${FDTGET:-fdtget}
+FDTPUT=${FDTPUT:-fdtput}
+
+if [ "$1" != "-l" ] || [ "$#" -ne 3 ]; then
+	echo "USAGE: $0 -l NT_LOAD_ADDR FIP" 1>&2
+	exit 1
+fi
+
+NEW_LOAD_ADDR=$(($2))
+FIP=$3
+FWCONFIG=".$FIP.fw-config.bin"
+
+fiptool unpack --fw-config "$FWCONFIG" --force "$FIP"
+
+MAX_SIZE="$($FDTGET -t u $FWCONFIG /dtb-registry/nt_fw max-size)"
+set $($FDTGET -t u $FWCONFIG /dtb-registry/nt_fw load-address)
+ENTRY=$1
+OLD_LOAD_ADDR=$2
+
+if [ $NEW_LOAD_ADDR -lt $OLD_LOAD_ADDR ] ||
+   [ $NEW_LOAD_ADDR -ge $((OLD_LOAD_ADDR + MAX_SIZE)) ]; then
+	printf "New load address 0x%08x out of bounds [0x%08x-0x%08x)\n" \
+		$NEW_LOAD_ADDR $OLD_LOAD_ADDR $((OLD_LOAD_ADDR + MAX_SIZE)) 1>&2
+	exit 1
+fi
+
+$FDTPUT -t u $FWCONFIG /dtb-registry/nt_fw load-address $ENTRY $NEW_LOAD_ADDR
+$FDTPUT -t u $FWCONFIG /dtb-registry/nt_fw max-size \
+	$((MAX_SIZE + OLD_LOAD_ADDR - NEW_LOAD_ADDR))
+
+fiptool update $FIP --fw-config $FWCONFIG
+
+rm $FWCONFIG
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

