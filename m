Delivery-date: Wed, 28 May 2025 14:04:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWU-001B4z-1M
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWP-00074M-0C
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B8LNfAMPEWKlognF/ouMh7hzqCOM1rt2UaE71L8KctE=; b=txKwKuD/JZ93P1WKZM8iv5EAfn
	akdcPp6El8rhcZ2DxX8xzVWinztkaMmH+5y/MKPWY4Bos+AUjMLGw7C+9PsIMcLm0Rx6TX1hGu6mq
	Gbwu+8ICkJQORJqBxPU2paIxWkute5guEpPt5VWqqN00qoJwMsmwdeSj1XSBXJ/GYisAZLu116ZE4
	QFQoUTvURFhSYGGFsr2DrcllJxVkUYwjZXJKqMgXD1owCOD6LZGiDSSYKszIdCmnf2KUwW5wK+XMv
	+L8tXc/+SyeQIKGqQTq3kq+6hDJIWtQOms0d5AT2f0Zzse60L/Ba29HUC6E7JA7goerrbA+c37PLo
	iVmur2og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVd-0000000D2wA-3NXl;
	Wed, 28 May 2025 12:03:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU5-0000000D2bq-3aWv
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=B8LNfAMPEWKlognF/ouMh7hzqCOM1rt2UaE71L8KctE=; b=d8EF3hngN6nP2RLkFiyqdDuRRo
	NUJjacFNPitiwnETi3jfVrHX3dl3VqmlmB0fVx7rxN6PDZuFzeBqM71AfyH3PaZWTf1N2awMLaQtD
	cuHk3bqqGvIsdDAwoWtmUi2LIZxyFknFQq1Hq1AR/KjG4lllfWHFlVqE3AcCpjsDiA0+FpANKsEP6
	GT0UWvsnOqXN780outAuwzdc1Y2bnGPDJTrqcjXn3M29TCG1Ja0G8d9ovjebyC+KqMl1heIZI1nEy
	6C3/70HYawq0OKFoByZms+OGnw2N9yLEM0aKHYkXQa9V2tTXI3IFNtu6WKh8z0rSdrPWABjxW1+Ga
	OQ8S+/bw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU2-0000000Dass-0Zsl
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTq-0004T3-1A; Wed, 28 May 2025 14:01:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9s-2f;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1y;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-30-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=1167;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=IYSCGjPrJTY0DaeaA2TaWQqj3k31qsuRTCQmwzEtizM=;
 b=pAjw+C8jky33NyGCtDlQB3YRU0Xl3n4Q5q7JQdszuNgp4LD1ajYPbx/HKseV+MPh94VrEpyUa
 x3NAsHKoBDiBaXJJ8RwAgiAQfflsla/CNldMX/b6K4DJttE9DM+7o65
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130210_319717_95D053B5 
X-CRM114-Status: UNSURE (   7.65  )
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
Subject: [PATCH 30/31] scripts: k3img: handle bootcore_opts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootcore_opts needs another setting for AM62L. Make it configurable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/k3img | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/scripts/k3img b/scripts/k3img
index 2cb2a6b33bbdf6bcf2dedcd067dcc2ffd2d17d04..93bcfaea7688d038b2b95189fac764884dec4a72 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -2,7 +2,9 @@
 
 set -e
 
-TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:' -n 'k3img' -- "$@")
+bootcore_opts=0
+
+TEMP=$(getopt -o '' --long 'sysfw:,sysfwdata:,dmdata:,out:,sbl:,key:,innerdata:,bootcore_opts:' -n 'k3img' -- "$@")
 
 if [ $? -ne 0 ]; then
 	echo 'Terminating...' >&2
@@ -54,6 +56,11 @@ while true; do
 		shift 2
 		continue
 	;;
+	'--bootcore_opts')
+		bootcore_opts="$2"
+		shift 2
+		continue
+	;;
 	'--')
 		shift
 		break
@@ -161,7 +168,7 @@ $dm_data
 [sbl]
 compType = INTEGER:1
 bootCore = INTEGER:16
-compOpts = INTEGER:0
+compOpts = INTEGER:$bootcore_opts
 destAddr = FORMAT:HEX,OCT:$sbl_addr
 compSize = INTEGER:$sblsize
 shaType  = OID:2.16.840.1.101.3.4.2.3

-- 
2.39.5



