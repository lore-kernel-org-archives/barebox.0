Delivery-date: Tue, 09 Aug 2022 08:31:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm0-00H0Bj-Vg
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 08:31:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLIm1-0007nY-At
	for lore@pengutronix.de; Tue, 09 Aug 2022 08:31:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZM0btRDk9km3iJt6IMxrDosdvqauqKXv8XMROq2ASpM=; b=w7Jr1HGkFVsxfJVIvPkiNT1GUj
	PNFj8nD2zGB/D7252D0Ghs52zhEg/lYFNVLBgQ72uoQidJgdj7np4VFNoXOjhrBsznh769CS56dkg
	dxcOGcoNsROXJCf5RNcdfHr7THXWHZtiSgeaZ2w3EAjbqkCWORh8edH7ndkzu92VRwkWwjnC7lh5G
	6t2YJqqslTYdF0ec4idoQXqoMQln8udUurYVbIs9a6PCUR0Ilcq/hVQ4wjbi6wtqXFBmNFsmDkWkl
	5VHwj0rg4PBWMmvF+nqC1b5r2m83VFMpqhg4Nmiq6XLQfBic1N5IhltDYvp7yhzJoDOGAIzkfIvfK
	CxW8OXww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIke-001xCd-DS; Tue, 09 Aug 2022 06:30:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLIkK-001x4v-5x
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 06:29:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkI-0007ER-P2; Tue, 09 Aug 2022 08:29:42 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkF-002eZg-PC; Tue, 09 Aug 2022 08:29:42 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oLIkH-007LNM-0o; Tue, 09 Aug 2022 08:29:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  9 Aug 2022 08:29:36 +0200
Message-Id: <20220809062938.1750369-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
References: <20220809062938.1750369-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_232944_341357_065D87CD 
X-CRM114-Status: GOOD (  12.06  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] power: reset: reboot-mode: parse barebox,mode-* properties
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The same syscon may be used both to communicate with the bootrom and
with barebox. In this case, it may be required that not all boot modes
are enabled for the OS as Linux just makes them available in turn
to userspace. Teach barebox to handle the barebox,mode- prefix the
same way it handles mode-. As Linux doesn't parse this new property,
this means that it is unproblematic to fix it up into the Linux
device tree.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/power/reset/reboot-mode.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index ab23c32a4370..9a99b4056ff1 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -114,6 +114,8 @@ static const char *get_mode_name(const struct property *prop)
 	unsigned prefix_len;
 
 	prefix_len = str_has_prefix(prop->name, "mode-");
+	if (!prefix_len)
+		prefix_len = str_has_prefix(prop->name, "barebox,mode-");
 	if (!prefix_len)
 		return NULL;
 
-- 
2.30.2



