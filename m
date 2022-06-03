Delivery-date: Fri, 03 Jun 2022 09:26:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1h3-001YoT-J4
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 09:26:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1h2-000825-EE
	for lore@pengutronix.de; Fri, 03 Jun 2022 09:26:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14WeuoBpSdpHvhvHXYv3Bb/UoAE9zpRGVlQiPqWr+dU=; b=PsLe8gBvX9q3Ma
	xBRv7ZOJ5FbmwxR2lvhcN1y4+iNZpWmxV54go0/eJqTAekvEugLUv7U1jH5NzyNQF3I+pzk9M6hpc
	t+copM5rfOBCcAyna/Q+1Epxqv1lvtG4wa8S3gQP4VmCjRJ61a70c4b3hvWAzIL5jZTJ1mZN7TNJX
	riU74goN+f6SC/RU6BUiQ/k+eV8Hal4POAM6CBcIFii8oJF/TnEdHHW1IcuSUz8cYDJya5EeGtk9a
	KjaPec5r+Vk7a8jcFOdWVEbA3GNHj7MVNlaQTlTj5/o2juhuj2M51lrOmFRIQIw/cC9gbvO2M++JT
	MqH0ryghe5QFU0o19SFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1fs-006IGc-R2; Fri, 03 Jun 2022 07:24:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1fl-006IEI-Vh
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 07:24:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fk-0007oN-QO; Fri, 03 Jun 2022 09:24:40 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fl-006B79-Ev; Fri, 03 Jun 2022 09:24:40 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1fj-006d0S-De; Fri, 03 Jun 2022 09:24:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 Jun 2022 09:24:36 +0200
Message-Id: <20220603072436.1579545-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220603072436.1579545-1-a.fatoum@pengutronix.de>
References: <20220603072436.1579545-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_002442_057873_885E5238 
X-CRM114-Status: UNSURE (   9.62  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: cpuinfo: detect Cortex-A72
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Both the Raspberry Pi 4 as well as the already supported LS1046A feature
a Cortex-A72. Let the cpuinfo command correctly name these cores.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/cpuinfo.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
index 5dce34536efc..8a92432e904f 100644
--- a/arch/arm/cpu/cpuinfo.c
+++ b/arch/arm/cpu/cpuinfo.c
@@ -27,6 +27,7 @@
 #define ARM_CPU_PART_CORTEX_A15     0xC0F0
 #define ARM_CPU_PART_CORTEX_A53	    0xD030
 #define ARM_CPU_PART_CORTEX_A57	    0xD070
+#define ARM_CPU_PART_CORTEX_A72	    0xD080
 
 static void decode_cache(unsigned long size)
 {
@@ -216,6 +217,9 @@ static int do_cpuinfo(int argc, char *argv[])
 		case ARM_CPU_PART_CORTEX_A57:
 			part = "Cortex-A57";
 			break;
+		case ARM_CPU_PART_CORTEX_A72:
+			part = "Cortex-A72";
+			break;
 		default:
 			printf("core: unknown (0x%08lx) r%up%u\n",
 			       mainid, major, minor);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

