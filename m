Delivery-date: Fri, 12 Mar 2021 09:24:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKd5Y-0004EK-RW
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 09:24:04 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKd5T-0004tl-Fh
	for lore@pengutronix.de; Fri, 12 Mar 2021 09:24:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dvNtb/a+oMxFuETGGAjWZAgOXOAUPax1W2P9c+bQlTs=; b=luqiapf9xnqQ4XckBlL5rtMXlV
	I+MIf+foa3k+F7krKJGYwEb+uYNdZpVzl8DstuHaiOlFkhMyEhQJdpIMBqe+wmtRfxz/Imcm4JFRG
	Geo5PYyNgY+bl9nC0InRs8br2kCC4JE+6wtTfPXUlPtRh6jm3msYbPOqDPTPZsVfJZ564MTSmYv0a
	ffE3WpWJtK34b2irha4jOwYnnh6NXWSbv7tDJuJut6rpsQ/USgicIUVF9dUHmhJj7rrGQcYYbLX7C
	2OZzt/jgEV/bKkBT/y5oBO+TTBN/d8CaIRSg7O9H2PzKRVik0yzE+n0mxvBdh5EUK9yi4lQZRvZsr
	EKGkYIPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKd43-00AsP7-ME; Fri, 12 Mar 2021 08:22:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKd3v-00AsOb-J8
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 08:22:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKd3u-0004pM-R9; Fri, 12 Mar 2021 09:22:22 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lKd3u-0004S8-ID; Fri, 12 Mar 2021 09:22:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Mar 2021 09:22:18 +0100
Message-Id: <20210312082218.17058-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_082223_989727_1DFF40D0 
X-CRM114-Status: GOOD (  12.86  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] of: base: probe simple-pm-bus children as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream is migrating device trees like those of the am33xx to use
simple-pm-bus, where applicable. These are buses that reference a clock
or a power domain that needs to be enabled in order to use devices on it.

As we didn't yet support this binding, this broke the Beaglebone
and all other am33xx board since v2021.02.0.

Fix this by adding simple-pm-bus to the of_default_bus_match_table.
Note that this is only an adequate solution for when the power domain
and clocks referenced are already enabled prior to barebox startup.

For all other cases, driver support must be available for the clock
and power domains in questions and this driver must be extended to
make use of them. For the am33xx, the relevant buses are powered
and clocked on boot up, so we leave general support to another day..

Fixes: 6ea3de1b8ce7 ("dts: update to v5.11-rc1")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8759099d7480..6fe02649ee53 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2272,6 +2272,8 @@ const char *of_get_model(void)
 const struct of_device_id of_default_bus_match_table[] = {
 	{
 		.compatible = "simple-bus",
+	}, {
+		.compatible = "simple-pm-bus",
 	}, {
 		.compatible = "simple-mfd",
 	}, {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

