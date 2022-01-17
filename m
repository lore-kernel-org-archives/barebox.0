Delivery-date: Mon, 17 Jan 2022 13:07:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmx-004Y4p-Oe
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 13:07:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmt-0003zo-4x
	for lore@pengutronix.de; Mon, 17 Jan 2022 13:07:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3aPWWgxaywa3v4EGPD224CxYhzkqmA2GJ6zCxwnSQ8=; b=wSd4HKnp3QSyXG
	zjDc9Hco+G1lYycPwEGQPQoF34PR28pDU3sHnycyQUa+akuV/RJpueboewLKZ46ZEcyeFYFi6w2Th
	Iu38LWaHAAFwcT0pHqecxNDa2weNOrr9jbHEntd2p/1mrhFmdIxCmNNS+UV6+fXWQBZYzO+97aFLM
	hWlgvQrxf8/15OTZyOrvE/JkSGkBAF8qvht1l308VlQYC57nCAJyFJkjSuMLoKhtezzBju3HMEl9D
	9mmHAZMdcB16mdGtfKNqIjj3c7s/EEbgxBn9Zcc2ze4bH8MpC8vKF0FJVamI1tkHOf5noqocWPTXR
	FiKbinUN1ICMxNXZLl6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QlB-00ElQ1-VI; Mon, 17 Jan 2022 12:05:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Ql0-00ElKn-Hu
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 12:05:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-0003X7-Jm; Mon, 17 Jan 2022 13:05:02 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-00EvHH-4Q; Mon, 17 Jan 2022 13:05:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Jan 2022 13:05:00 +0100
Message-Id: <20220117120500.3556703-4-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220117120500.3556703-1-o.rempel@pengutronix.de>
References: <20220117120500.3556703-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_040506_637858_199F2F34 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 4/4] ARM: rpi: set host name based on DT compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The "rpi" host name is not practical if you need to work with different
variants of RPi at same time. Usually, removing barebox_set_hostname()
would let barebox generate it automatically. But in this case, the name
would look less informative. For example "2-model-b".

So, make board code generate something usable, for example
"rpi-2-model-b"

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index b6673ca474..9d8a253c41 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -389,6 +389,8 @@ static int rpi_devices_probe(struct device_d *dev)
 {
 	struct regulator *reg;
 	struct rpi_priv *priv;
+	const char *name, *ptr;
+	char *hostname;
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
@@ -405,7 +407,12 @@ static int rpi_devices_probe(struct device_d *dev)
 	if (ret)
 		goto free_priv;
 
-	barebox_set_hostname("rpi");
+	/* construct short recognizable host name */
+	name = of_device_get_match_compatible(priv->dev);
+	ptr = strchr(name, ',');
+	hostname = basprintf("rpi-%s", ptr ? ptr + 1 : name);
+	barebox_set_hostname(hostname);
+	free(hostname);
 
 	rpi_add_led();
 	bcm2835_register_fb();
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

