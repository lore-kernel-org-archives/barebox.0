Delivery-date: Mon, 16 Jan 2023 14:47:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpx-00DbwN-Ty
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 14:47:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHPpv-0000Li-Hw
	for lore@pengutronix.de; Mon, 16 Jan 2023 14:47:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=57nSGcGQ3nM9JV+hZinQNUbsytMSyvZGV3VIoWGD7M0=; b=N7f+nD5jZeS9+jpIfeQ8xSA0id
	B2qR04kJL/0aFkBTNf0YabcBosuek6ZwVT3f/rQU8DtH/oYWlyoVIRuBO4PB8aD0yTyvhwR0Vu5Cm
	vMbMClA4eY8vpbeyk6v/XWTg1y88nYpkPEJWg9Pfm0q+2EsXYeLid5WhPMFJJX/sef61R2WMghNaG
	Vqx2Id6qXAcR2OxxiONdOxZfgSpnTHAR/wdCE6owVT47+yJNARV3vMNJ/tqhmSAeXCIZiOmOAn0Ua
	SHVyfKXeV1KbS7AzQiUfFZUpbLrDtTBNvQkQ3IkkwFTRCkGVo5TQP05F+eggsK3ipXXVX71g+0hrr
	Tuhbkg4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPod-00AYeN-Pa; Mon, 16 Jan 2023 13:46:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPnZ-00AY8B-7L
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 13:45:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-0007zK-Ml; Mon, 16 Jan 2023 14:45:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnP-006SKC-0X; Mon, 16 Jan 2023 14:45:07 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pHPnN-008PyN-Qy; Mon, 16 Jan 2023 14:45:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Jan 2023 14:44:58 +0100
Message-Id: <20230116134501.2006391-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
References: <20230116134501.2006391-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_054517_436819_2B892648 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/9] net: dsa: always call port_pre_enable before port_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox DSA support differentiates between a port_pre_enable, that's
called before connecting the PHY to drive a clock if nedeed and the
actual port_enable. For user ports, port_enable of the CPU port is
called, but not port_pre_enable. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/dsa.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index c1430a93615b..793bbbb4f18f 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -122,6 +122,16 @@ static int dsa_port_start(struct eth_device *edev)
 	if (!ds->cpu_port_users) {
 		struct dsa_port *dpc = ds->dp[ds->cpu_port];
 
+		if (ops->port_pre_enable) {
+			/* In case of RMII interface we need to enable RMII clock
+			 * before talking to the PHY.
+			 */
+			ret = ops->port_pre_enable(dpc, ds->cpu_port,
+						   ds->cpu_port_fixed_phy->interface);
+			if (ret)
+				return ret;
+		}
+
 		if (ops->port_enable) {
 			ret = ops->port_enable(dpc, ds->cpu_port,
 					       ds->cpu_port_fixed_phy);
-- 
2.30.2



