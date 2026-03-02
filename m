Delivery-date: Mon, 02 Mar 2026 17:38:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Hs-007LRY-19
	for lore@lore.pengutronix.de;
	Mon, 02 Mar 2026 17:38:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vx6Hs-0007KF-Mg
	for lore@pengutronix.de; Mon, 02 Mar 2026 17:38:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e0lVuX11xcoKnYNWPuOHJGxMo/1ynlNdYsTguTm3B3I=; b=QR0EoQoB84x9Wv5FQAGGRDZf+j
	0HFVpTuVwF57sZlBCImTGKRpi5bN5QWeZXJGfZeK9M4D7pdn4F2U1+FTPw8ELIQe5DMhQ8dpN0hy2
	sZhM8txHu7ImmMsnSs9vVE4kRchr5+D575E1plz6LBiki8KwwdMO6brXSxGnhM9daDEdoVI3lB4ks
	4wLnmj74WILYhupM7wJqzB8FQUlIrBzL+Bdv0e47lN5grK9v8AKbzVy3L+X1t6v351ZXVa0Cy16Yi
	OLuDTKQ4L/gOKINHnHIRsnvsxxfiGKYjak9RIBRBi8gEu3pyK3m06lm/m7cPp/pbWTRFlJz4t/QfQ
	oQFzRvzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HJ-0000000DVXf-49sK;
	Mon, 02 Mar 2026 16:37:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vx6HH-0000000DVWN-2P1V
	for barebox@lists.infradead.org;
	Mon, 02 Mar 2026 16:37:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00075l-Sd; Mon, 02 Mar 2026 17:37:49 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HE-003PY2-11;
	Mon, 02 Mar 2026 17:37:49 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vx6HF-00000002QFi-2NV1;
	Mon, 02 Mar 2026 17:37:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Mar 2026 17:37:42 +0100
Message-ID: <20260302163748.577552-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260302163748.577552-1-a.fatoum@pengutronix.de>
References: <20260302163748.577552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_083751_629137_D2EDD097 
X-CRM114-Status: UNSURE (   9.19  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] mci: detect SD card v3
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We define the constant and the erase group determination code queries
the version, but we didn't actually set it anywhere.

The code determining the SD version was taken from U-Boot, so sync it to
add v3.0 support[1].

[1]: https://github.com/u-boot/u-boot/blob/v2026.04-rc3/drivers/mmc/mmc.c#L1430

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 517e4de1c6b0..ef5c4c5d6a5d 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -977,6 +977,8 @@ static int sd_change_freq(struct mci *mci)
 		break;
 	case 2:
 		mci->version = SD_VERSION_2;
+		if ((mci->scr[0] >> 15) & 0x1)
+			mci->version = SD_VERSION_3;
 		break;
 	default:
 		mci->version = SD_VERSION_1_0;
-- 
2.47.3



