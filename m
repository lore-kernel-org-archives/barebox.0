Delivery-date: Thu, 03 Nov 2022 14:15:48 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4S-00DeeS-K4
	for lore@lore.pengutronix.de; Thu, 03 Nov 2022 14:15:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oqa4R-0004LG-FO
	for lore@pengutronix.de; Thu, 03 Nov 2022 14:15:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WrEI+IZk/oTsP4qKWZ1DgBeYqkeRbVspv28QmQT39QA=; b=tAuGa+vj/EWxWfRhgyhnJu6QAo
	psnL892Y5ZG6HiCZtZk/vifoZdnfQHHEl9yqAdpCXyspz4IkAGmKyR0/LRh1TNxcFlng9POAMpEZI
	j4BseLbqEfvHc585wD/xz8UDsd9fU4OT5cRGw6GHYZ2fVl9R/VfcxcdDG90zKotXArYgBtdDL9vfl
	fT9vyMs0d5S/oZYl3V1kwnwPmOz9Kj+/4GtYNZrvmWe8q47n2acq6JQ4+C9GV/CceEFUacGV0cmo+
	RVESDUMTgHdGA/z7Akx3u5vRGFmAqK+OasP0v48aR9Yk9ltmSdL9KCPsskXAfhN5QhjlXfAurhNkd
	wYdanS0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2s-00HScu-VS; Thu, 03 Nov 2022 13:14:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqa2i-00HSYW-3S
	for barebox@lists.infradead.org; Thu, 03 Nov 2022 13:14:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2d-0003oh-8a; Thu, 03 Nov 2022 14:13:55 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2d-00250o-Hg; Thu, 03 Nov 2022 14:13:54 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1oqa2b-008dph-AY; Thu, 03 Nov 2022 14:13:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Nov 2022 14:13:47 +0100
Message-Id: <20221103131351.2059683-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221103131351.2059683-1-o.rempel@pengutronix.de>
References: <20221103131351.2059683-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_061400_216131_992BDCF3 
X-CRM114-Status: GOOD (  11.39  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/6] net: dsa: enable promiscuous mode for switch master edev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Typical use case for DSA framework on barebox a port multiplexer. This
means, we mostly have different MAC addresses on each port. To make this
work, we need to enable promiscuous mode on the master Ethernet
controller.

With this patch, promiscuous mode will be enabled automatically, as soon
as at least one switch port is enabled and this mode will be disabled
after all switch ports are disabled as well.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/net/dsa.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/dsa.c b/drivers/net/dsa.c
index 040ba897e2..14ef8f4c4f 100644
--- a/drivers/net/dsa.c
+++ b/drivers/net/dsa.c
@@ -129,6 +129,7 @@ static int dsa_port_start(struct eth_device *edev)
 				return ret;
 		}
 
+		eth_set_promiscuous_mode(ds->edev_master, true);
 		eth_open(ds->edev_master);
 	}
 
@@ -160,6 +161,7 @@ static void dsa_port_stop(struct eth_device *edev)
 			ops->port_disable(dpc, ds->cpu_port,
 					ds->cpu_port_fixed_phy);
 
+		eth_set_promiscuous_mode(ds->edev_master, false);
 		eth_close(ds->edev_master);
 	}
 }
-- 
2.30.2



