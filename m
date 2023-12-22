Delivery-date: Fri, 22 Dec 2023 03:09:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyU-009O1a-1h
	for lore@lore.pengutronix.de;
	Fri, 22 Dec 2023 03:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGUyT-00078G-HX
	for lore@pengutronix.de; Fri, 22 Dec 2023 03:09:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ahA1zHKlAJDRA86ZwwwiMA5Sey4P9IgBv2NjNkBua7E=; b=4br+Qn83so2a4pA1OHK1W19TGx
	ok72q5x9FZqagw8jIb9YSJe2eKTzL5BWJjY6AjE84cDMcDWc1n9VaLscXAd9IqkHbyv68BJWKifoX
	SCU6OiJ5mGcbfCc3nHULSi5zY4cmE46qRD8opnZX6D2xCCvC2AcuAkErIIAwmLQk7GHsQXQi1405d
	vGRetq8/gwgqrubV5oKTFAweUjoDshTtEIlmS308eKZanntL58tyY35r799cVodXtAs0FV9E1lJOn
	T9Bf+WU40qalnTsSQax8TbQeQGZ2sYAjr45YGiDHfPBtOqqBxJOl4ITJ6dydQOAOTM+jOnvtWN8PZ
	e3fPRKnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUx3-004eZ3-1b;
	Fri, 22 Dec 2023 02:07:49 +0000
Received: from out-172.mta0.migadu.com ([91.218.175.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGUwz-004eXE-1d
	for barebox@lists.infradead.org;
	Fri, 22 Dec 2023 02:07:47 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqrs.dk; s=key1;
	t=1703210857;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ahA1zHKlAJDRA86ZwwwiMA5Sey4P9IgBv2NjNkBua7E=;
	b=DWdnUku+NxMqO+GvQ4G7Ss3Cf8/q2F3+g1/OXBTiGAI/1BDhuwUMwAufCkIZlABOqcMtnT
	JBSoh9KbE/5S/B90SxHs8chxsV0BuzNF/bfjRp28S5fwtqZOJ3vmb4I033x/YoTE2m09/i
	7T6p0TWeWhYs1Bc//8MEriY02Uuqi+8syPbOeqG6iafjBPP6AQZL6i5R8zrix0xrTUCCfW
	rgjajCE6SES6M/ql0HVGO5raaU2Djt647YD90n7tW2X3/oZCGASEZp9u3ObA7A1KOqYmNz
	WNH0KJhdcKb5NMEQ1R02qUSPbyDqaRMvYM/w+nao6yZRwQpvBOLfOqutD+29mg==
From: =?utf-8?q?Alvin_=C5=A0ipraga?= <alvin@pqrs.dk>
Date: Fri, 22 Dec 2023 03:07:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231222-realtek-mdio-fix-v1-4-6bbf80d6a756@bang-olufsen.dk>
References: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
In-Reply-To: <20231222-realtek-mdio-fix-v1-0-6bbf80d6a756@bang-olufsen.dk>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Vladimir Oltean <olteanv@gmail.com>, 
 Luiz Angelo Daros de Luca <luizluca@gmail.com>, 
 =?utf-8?q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>, 
 "realtek-smi 30be0000.ethernet"@30be0000
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_180745_702632_6FD6FEE5 
X-CRM114-Status: GOOD (  21.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/4] net: mdio_bus: associate OF nodes with their devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alvin Šipraga <alsi@bang-olufsen.dk>

barebox deep-probe will walk the device tree to ensure dependent devices
have been probed. In so doing, it uses the device_node::dev pointer to
check whether a given node has a device; if not, a device is created on
demand. The behaviour is recursive, so parent nodes without an
associated device will also have devices created on their behalf. The
recursion stops when a parent with a device is found.

Weird behaviour can ensure if, when devices with a device_node are
registered, the device_node::dev field is not populated. This patch
addresses a niche, benign, but also noisy error observed as a result of
this behaviour.

One mostly harmless consequence is that spurious devices can get created
when a suitable one already exists. In my case, I have an MDIO-connected
Ethernet switch with an internal MDIO bus and some internal PHYs. With
deep-probe, but without these changes, the devinfo output looks as
follows:

  `-- 30be0000.ethernet@30be0000.of
     `-- eth0
     `-- miibus0
        `-- mdio0-dev1d
           `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio0-phy1d
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:ports:port@6.of
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:ports:port@0.of
              `-- eth1
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:ports:port@1.of
              `-- eth2
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:ports:port@2.of
              `-- eth3
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:ports:port@3.of
              `-- eth4
           `-- miibus1
              `-- mdio1-phy00
                 `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio1-phy00
              `-- mdio1-phy01
                 `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio1-phy01
              `-- mdio1-phy02
                 `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio1-phy02
              `-- mdio1-phy03
                 `-- 0x00000000-0x0000003f (  64 Bytes): /dev/mdio1-phy03
     `-- 30be0000.ethernet@30be0000:mdio.of
        `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of
           `-- 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:mdio.of

Notice the last three devices with generic names; they are spurious
creations of the deep-probe algorithm. In fact, the devices have already
been created:

  real dev        spurious dev
  --------        ------------
  miibus0         30be0000.ethernet@30be0000:mdio.of
  mdio0-devid1d   30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of
  miibus1         30be0000.ethernet@30be0000:mdio:ethernet-switch@1d:mdio.of

The only reason there aren't even more spurious devices created is that
deep-probe stopped at 30be0000.ethernet@30be0000.of, a platform device
whose device_node had its dev field populated correctly. But these
so-called real devices are all created by mdio_bus, which only links one
way, i.e. sets device::of_node, but not device_node::dev.

This issue probably goes unnoticed on most boards because, while the
call to of_device_ensure_probed() returns -ENODEV on the bottom listed
node, the code in phy.c doesn't check the return code, and the real
devices have already been probed, so no harm is done.

I observed much more surprising behaviour on my board because the switch
I am using, an RTL8365MB, has multiple possible management interfaces,
for which barebox has two drivers: realtek-smi and realtek-mdio (for
SMI- and MDIO-connected switches, respectively). The compatible strings
are the same, "realtek,rtl8365mb", but the bus types are different: the
former is a platform driver, the latter a phy (read: mdio) driver. In my
bootloader I have both drivers built in, because some of my boards use
SMI while others use MDIO.

When I would run the command 'boot bnet', bringing up my network
interface, DSA would call phy_device_connect() to connect my edev with
its corresponding phy, and a deep-probe would kick off because the phy's
parent's device_node::dev field was not populated. And during the
creation of the spurious device for my (already probed) Ethernet switch,
the platform code would find a compatible string match with realtek-smi
and try to probe the device with that driver:

  Booting entry 'bnet'
  ERROR: gpiolib: _gpio_request: gpio-233 (30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of-reset) status -16
  ERROR: realtek-smi 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of: error Device or resource busy: failed to get RESET GPIO
  ERROR: realtek-smi 30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of: probe failed: Device or resource busy

As stated above, my switch is connected over MDIO, not SMI, so I really
should not be seeing any "realtek-smi" in my log. Nevertheless, because
phy.c doesn't check for errors, the errors are benign and my network
boot runs just fine.

Dumping the stack around the above error print in the realtek-smi driver
reveals exactly why things are going wrong:

  ERROR: gpiolib: _gpio_request: gpio-233 (30be0000.ethernet@30be0000:mdio:ethernet-switch@1d.of-reset) status -16
  Call trace:
  [<7dd8f400>] (unwind_backtrace+0x0/0x90)
  [<7dd8f4a0>] (dump_stack+0x10/0x18)
  [<7dd2d4d4>] (realtek_smi_probe+0x16c/0x2f4)
  [<7dd1da28>] (platform_probe+0x48/0x4c)
  [<7dd1cf24>] (device_probe+0x80/0x13c)
  [<7dd1d028>] (match+0x48/0x58)
  [<7dd1d3c8>] (register_device+0x178/0x184)
  [<7dd1da80>] (platform_device_register+0x18/0x20)
  [<7dd5501c>] (of_platform_device_create+0x2b8/0x2e0)
  [<7dd55170>] (of_device_create_on_demand+0x84/0xc0)
  [<7dd5513c>] (of_device_create_on_demand+0x50/0xc0)
  [<7dd552e0>] (of_device_ensure_probed+0x40/0x6c)
  [<7dd21398>] (phy_device_connect+0x174/0x230)
  [<7dd1fd74>] (dsa_port_start+0x60/0x1f0)
  [<7dd7a0e4>] (eth_open+0x24/0x44)
  [<7dd7d7e4>] (ifup_edev+0x9c/0x2ec)
  [<7dd7dbe4>] (ifup_all+0x110/0x204)
  [<7dd7dd2c>] (do_ifup+0x54/0xd4)
  [<7dd09e78>] (execute_command+0x44/0x8c)
  ...

The whole mess is rectified if the proper linking is done by mdio_bus,
since it is responsible for creating all of the devices to begin with.
So, make sure that the device_node::dev field is populated in all cases
there.

Note that while I also make this change in of_mdiobus_register_phy(), I
did not actually observe any unwanted behaviour by not doing so - the
problem above is specifically because it's not done in
of_mdiobus_register() or of_mdiobus_register_device(). But this is only
because of the way phys are looked up to begin with, so it seemed
reasonable to do it for them as well.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 drivers/net/phy/mdio_bus.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index 332db6c05b11..94123ef6141c 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -119,6 +119,7 @@ static int of_mdiobus_register_phy(struct mii_bus *mdio, struct device_node *chi
 	 * Associate the OF node with the device structure so it
 	 * can be looked up later
 	 */
+	child->dev = &phy->dev;
 	phy->dev.of_node = child;
 
 	/*
@@ -145,6 +146,7 @@ static int of_mdiobus_register_device(struct mii_bus *mdio,
 	if (IS_ERR(mdiodev))
 		return PTR_ERR(mdiodev);
 
+	child->dev = &mdiodev->dev;
 	mdiodev->dev.of_node = child;
 
 	ret = mdio_register_device(mdiodev);
@@ -315,6 +317,8 @@ int mdiobus_register(struct mii_bus *bus)
 	pr_info("%s: probed\n", dev_name(&bus->dev));
 
 	if (bus->dev.of_node) {
+		bus->dev.of_node->dev = &bus->dev;
+
 		/* Register PHY's as child node to mdio node */
 		of_mdiobus_register(bus, bus->dev.of_node);
 	}

-- 
2.43.0



