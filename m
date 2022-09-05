Delivery-date: Mon, 05 Sep 2022 17:40:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVECq-007exN-Ry
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:40:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVECq-00037W-M3
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:40:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LR5aRs1gK4Od5VOsy7vjN/d9sGKiYl7ckhZ/T8b4GoM=; b=wuSp8pZDe8SguCj7b3HxEzJixx
	zC5/iWt4hJhGNaOunr0frEZ1kbUbVn1SchyO6lFmdHDkM2a/FIJ3b5kW1SlVKxxBW1YPI8dDbrhfN
	hsilsxkoBJ8Kdi0kJdiqqw9mrHkuZnCz7wcNGKbmLfoJ1m6kghCJ9AY8Yf7X2oDtvcit1n1qNIm8m
	RxmHBSBjOeK+Dp1gbiocWbtW/3Tu3UPkckXQIct2paClb3CQ0WWbNMDvfiLvax1z3c3TqX7RJW5mv
	E6s1hN4Qns3DQzU8ZFLaT32C6tC5i99JGg2pUtqhCe0Ba21HxsY9esYJaiGKHDRRIo4mttzn4KWKR
	DfAQRGTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVEAy-0065F1-CI; Mon, 05 Sep 2022 15:38:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q9-00H4KI-OI
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LR5aRs1gK4Od5VOsy7vjN/d9sGKiYl7ckhZ/T8b4GoM=; b=eQjTkwvHZdoA6/lx4kGf78izZp
	gznfVK/4C5gna+9RABjVIrWh9lPrAfeeCIr5YVWzsNEf1ybayhWRPVyKUZd70tbEGmLgknnGLc+ba
	h3Vz6PG+5fMhQHIlMhomf+KmEh6nIFgfaNj8QLH1/7mFfHsVfAnfqiyrIXGBGVQ8dqipBHnVC9GVF
	HjTcsNwiyZzucGuKoACus9SNac6jp/kIj6ZfmHMbLQ/Ki0vU0i/WQsmG4HScgAjsVcdqcwJzDe7xW
	8dEH1O0uJyADHoRE8kjUXpQiX0Uz35W1YME979HQ2SIv/mJOqkXpD/g553Cv5S8J0B+m6qmczcpyD
	QNXndZlA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjA-KI
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0008FG-Qx; Mon, 05 Sep 2022 11:56:05 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pn-0042G1-3J; Mon, 05 Sep 2022 11:56:04 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pl-002We3-Vw; Mon, 05 Sep 2022 11:56:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:34 +0200
Message-Id: <20220905095557.596891-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105617_016576_ECC0E88D 
X-CRM114-Status: UNSURE (   8.35  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/32] usb: dwc2: gracefully handle unknown hs_phy_type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Static analysis shows that, we may not enter the switch and thus write
an uninitialized value. Warn if we indeed reach this case and handle it
as if the register read GHWCFG2_HS_PHY_TYPE_NOT_SUPPORTED for now.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/dwc2/core.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
index 8be5c91f98a1..459ebc65372c 100644
--- a/drivers/usb/dwc2/core.c
+++ b/drivers/usb/dwc2/core.c
@@ -61,6 +61,9 @@ static void dwc2_set_param_phy_type(struct dwc2 *dwc2)
 	case GHWCFG2_HS_PHY_TYPE_ULPI:
 		val = DWC2_PHY_TYPE_PARAM_ULPI;
 		break;
+	default:
+		dwc2_warn(dwc2, "Unhandled HS PHY type\n");
+		fallthrough;
 	case GHWCFG2_HS_PHY_TYPE_NOT_SUPPORTED:
 		val = DWC2_PHY_TYPE_PARAM_FS;
 		break;
-- 
2.30.2



