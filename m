Delivery-date: Mon, 19 Feb 2024 18:30:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sq-00Exta-3A
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 18:30:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc7Sq-0000u6-8X
	for lore@pengutronix.de; Mon, 19 Feb 2024 18:30:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=usCRkhw2LXoYyJ0XiHMQ8Mx/jYz28SaBHQ0vH1nZqPw=; b=yVBdTgSXqEA1aXBsd8KNvB82gx
	ZNWWJEAGMzqPtmr6fcu+M5OQWp79R2n7ZxWlDwW9QE+iGuMDkCaif88Cj/7+1Rsn4jXd8zA5lPtvs
	5Q8nE4LuXBoAvnxFWUN3+PQD3MKjQLBrTD7hgvlqVEFHNWoWK9PK5pxM3fl4KEeaGFXHoEYaMspj/
	D97TDGUsUb6UIzS4wuDz5ehSTTwYOc91VED9MOI4/x3wDu7jlvbaW81i28rCAWkmqn+GOQj/8QsXl
	WRJvrbH2jVBHzbYkjI4WmzP20Dy/Ju9Wu1YF9fIdFJM9RAKUcSW0Ch1gZFe7aOc6uFLN88KW53gw9
	a3tRTu6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SQ-0000000BWMG-01oX;
	Mon, 19 Feb 2024 17:29:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc7SK-0000000BWIw-0tLs
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 17:29:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SJ-0000Ix-1R; Mon, 19 Feb 2024 18:29:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-001h0u-LA; Mon, 19 Feb 2024 18:29:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc7SI-00Fw3A-1p;
	Mon, 19 Feb 2024 18:29:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 18:29:24 +0100
Message-Id: <20240219172925.3798024-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
References: <20240219172925.3798024-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_092928_329956_66D27CC2 
X-CRM114-Status: GOOD (  17.03  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 4/5] deep-probe: return -EPROBE_DEFER when ensuring probe fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

-ENODEV is a bad choice for an error code for of_device_ensure_probed.

The function is either called from board code or from driver frameworks,
which usually just propagate the error code with unintended
consequences:

  - A board driver probe function returning -ENODEV is silently skipped

  - A driver framework function returning -ENODEV is often interpreted
    to mean that an optional resource is not specified (e.g. in DT).

In both cases, the user isn't provided an error message and wrong
behavior can crop up later. In my case, the XHCI driver would time out,
because phy_get propagated of_device_ensure_probed's -ENODEV, which was
understood to mean that no PHY is needed and not that the PHY is
specified in the DT, but no driver was bound to it.

Instead of -ENODEV, let's thus return -EPROBE_DEFER. This can be
propagated up to the driver core, which on a deep probe system (the only
ones where of_device_ensure_probed is not a no-op) will print a fat red
error message. We could achieve the same with some other error code, but
-EPROBE_DEFER is what a non-deep-probe system would return when probes
are deferred indefinitely, so symmetry in the deep probe case fits well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - adapt function kerneldoc documentation (Marco)
  - replace all -ENODEV return values with -EPROBE_DEFER
---
 drivers/of/platform.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 0d1dea2db377..ec1482b27797 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -468,7 +468,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 	else
 		dev = of_platform_device_create(np, parent_dev);
 
-	return dev ? : ERR_PTR(-ENODEV);
+	return dev ? : ERR_PTR(-EPROBE_DEFER);
 }
 
 /**
@@ -480,7 +480,7 @@ static struct device *of_device_create_on_demand(struct device_node *np)
  * it.
  *
  * Return: %0 on success
- *	   %-ENODEV if either the device can't be populated, the driver is
+ *	   %-EPROBE_DEFER if either the device can't be populated, the driver is
  *	     missing or the driver probe returns an error.
  */
 int of_device_ensure_probed(struct device_node *np)
@@ -492,7 +492,7 @@ int of_device_ensure_probed(struct device_node *np)
 
 	dev = of_device_create_on_demand(np);
 	if (IS_ERR_OR_NULL(dev))
-		return -ENODEV;
+		return -EPROBE_DEFER;
 
 	/*
 	 * The deep-probe mechanism relies on the fact that all necessary
@@ -502,7 +502,7 @@ int of_device_ensure_probed(struct device_node *np)
 	 * requirements are fulfilled if 'dev->driver' is not NULL.
 	 */
 	if (!dev->driver)
-		return -ENODEV;
+		return -EPROBE_DEFER;
 
 	return 0;
 }
@@ -517,7 +517,7 @@ EXPORT_SYMBOL_GPL(of_device_ensure_probed);
  * populated and probed if found.
  *
  * Return: %0 on success
- *	   %-ENODEV if either the device can't be populated, the driver is
+ *	   %-EPROBE_DEFER if either the device can't be populated, the driver is
  *	     missing or the driver probe returns an error
  *	   %-EINVAL if alias can't be found
  */
@@ -545,7 +545,7 @@ EXPORT_SYMBOL_GPL(of_device_ensure_probed_by_alias);
  * probes devices which match @ids.
  *
  * Return: %0 on success
- *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	   %-EPROBE_DEFER if either the device wasn't found, can't be populated,
  *	     the driver is missing or the driver probe returns an error
  */
 int of_devices_ensure_probed_by_dev_id(const struct of_device_id *ids)
@@ -578,7 +578,7 @@ EXPORT_SYMBOL_GPL(of_devices_ensure_probed_by_dev_id);
  * devices which matches @property_name.
  *
  * Return: %0 on success
- *	   %-ENODEV if either the device wasn't found, can't be populated,
+ *	   %-EPROBE_DEFER if either the device wasn't found, can't be populated,
  *	     the driver is missing or the driver probe returns an error
  */
 int of_devices_ensure_probed_by_property(const char *property_name)
-- 
2.39.2



