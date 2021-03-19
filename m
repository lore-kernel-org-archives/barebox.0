Delivery-date: Fri, 19 Mar 2021 14:12:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv4-0007QN-PW
	for lore@lore.pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNEv0-0006uY-EP
	for lore@pengutronix.de; Fri, 19 Mar 2021 14:12:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FYW7pg/sYl6tX6npG34F9AmR57UDrOAq+CvycKAxFv8=; b=N3y2VTaU4c5JbBCm1LaO4u2FoV
	7E1FP+T9psREvD6pXU/xcoPrz6Yf2xb8ox2dnZb6mK3vfzzHJrSewKU+WDA3gJUly3vdIzWXn5EwD
	rVzWHKvYPxtFHdH0CXF33MsiQC+4qOBYDyLn7xd6j5LLdsZaP18RviCX4pInzwD1kIrFcdTMbwL/A
	qBMleeFzArvdAts5i7rdN9J8dmnl+H3WJZi8C5MBK11GTzSyyLKmDxvsMv0p5WSI+vIE11GzXl3me
	kGlR9i8UAxhMFl2TVnqrce5ezMpBVYWrRbDJ1zQiUer0O4FDCRzmzQ8sX8rVgEXNOjIoLom4vGSSi
	/tRdENKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEtc-007SEh-5c; Fri, 19 Mar 2021 13:10:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNEtP-007SAi-4v
 for barebox@lists.infradead.org; Fri, 19 Mar 2021 13:10:22 +0000
Received: from [2a0a:edc0:0:c01:1d::a2]
 (helo=drehscheibe.grey.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtN-0006KE-09; Fri, 19 Mar 2021 14:10:17 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-0000yr-Bc; Fri, 19 Mar 2021 14:10:16 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1lNEtM-00AxXx-Ao; Fri, 19 Mar 2021 14:10:16 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Fri, 19 Mar 2021 14:10:09 +0100
Message-Id: <20210319131016.2612134-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_131019_276015_E67A1477 
X-CRM114-Status: UNSURE (   8.82  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] net: phy: dp83867: cleanup and link downshift support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

the dp83867 network phy supports link downshift, if a gigabit link cannot be
established. For example, this can happen if the cabling does not support
gigabit Ethernet.

This series enables the downshift by default (Linux also enables it by
default). Additionally, the link status is read from the dp83867-specific
register to take the possible downshift into account when reporting the link
speed.

Furthermore, the series contains a handful of cleanup patches.

Michael

Michael Tretter (3):
  net: phy: dp83867: convert driver to spdx
  net: phy: dp83867: fix checkpatch checks and warnings
  net: phy: dp83867: remove useless call to genphy_config_aneg

Thomas Haemmerle (4):
  net: phy: dp83867: simplify dp83867_config_init
  net: phy: dp83867: remove explicit setting of cfg2
  net: phy: dp83867: read status from PHY status register PHYSTS
  net: phy: dp83867: enable link downshift by default

 drivers/net/phy/dp83867.c | 169 ++++++++++++++++++++------------------
 1 file changed, 90 insertions(+), 79 deletions(-)

-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

