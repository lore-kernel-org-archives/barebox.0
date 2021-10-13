Delivery-date: Wed, 13 Oct 2021 11:43:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maane-0008Iw-M7
	for lore@lore.pengutronix.de; Wed, 13 Oct 2021 11:43:50 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maanc-0004Ll-U7
	for lore@pengutronix.de; Wed, 13 Oct 2021 11:43:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NBPxMFJqHo9hv+Zc5o7ApPpetz/b3eBTjfPifm96UAc=; b=FbGdBVtpNhKuAW
	0GUlgZQfPCjgXEfVlFd6EPAVi8JNZad+mfxdoqz3Wbqktq77REMKyzCHnCfJMWDppNirCX9pZW3Tp
	LIzI5hBmHrpnDQx6+4HKhQU3iE3adCbDCtuF7FG+X2LFZJ7pSIGJJTyVEKDAm4CbQBj7Q5H2eKIEJ
	+6AcdwPFN0YMHejDTL/FQDUQN+TIVAI1aQIiZOrtz/nLOahCsBURBiOiv9a1WbdkPAsFg0R3SUvfx
	itRIWa/rK8gmZg8MpqgMiwoB+f4VtYThj1Hvy42L14EGc8gUe7LD6sxi8xxN4iqpR4QmOgt1SkhcT
	b8cW8rsWOAFRggTkaJKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maalj-00Fnpx-To; Wed, 13 Oct 2021 09:41:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maZ4r-00FT0J-ST
 for barebox@lists.infradead.org; Wed, 13 Oct 2021 07:53:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maZ4q-0007vN-F1; Wed, 13 Oct 2021 09:53:28 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1maZ4q-0007M2-6W; Wed, 13 Oct 2021 09:53:28 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 13 Oct 2021 09:53:26 +0200
Message-Id: <20211013075327.28225-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211013_005329_968366_112D52F5 
X-CRM114-Status: GOOD (  11.59  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] include/phy: add driver_data to resume more of kernel
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add driver_data pointer to be able to port more of kernel code for
micrel phy.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 include/linux/phy.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/phy.h b/include/linux/phy.h
index a4cda3e28d..202eeb4d44 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -212,6 +212,7 @@ struct phy_device {
  * phy_id_mask: Defines the important bits of the phy_id
  * features: A list of features (speed, duplex, etc) supported
  *   by this PHY
+ * @driver_data: Static driver data
  *
  * The drivers must implement config_aneg and read_status.  All
  * other functions are optional. Note that none of these
@@ -225,6 +226,7 @@ struct phy_driver {
 	u32 phy_id;
 	unsigned int phy_id_mask;
 	u32 features;
+	const void *driver_data;
 
 	/*
 	 * Called to initialize the PHY,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

