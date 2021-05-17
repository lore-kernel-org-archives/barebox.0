Delivery-date: Mon, 17 May 2021 20:56:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPJ-0005Su-UP
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPI-0003zj-VX
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L9eHhPVZgpLV3VZN1NVyW4UZCtmgwYGkme4kC8XIo0I=; b=Lh4XH+37Qblt2CJ9DC5d/UpQf
	DaRToqWbmZxVcNM8Y3PhDcHWiHxwM63/IqDN5tKUiSyAsK4XnRjrhNye0RXxYPqZf9OexoRQvQ+sA
	ucpSrzhhwT8L9SQ4yzhXaO0v/KdjTSu0elwrO7p/KJduuB0QgHsqNLvsyVO+nJdhukv2v/rMg5G63
	qxstUm6hvrv23udSIUZe2nYPaeRFy9V9EqsVd0fZ5OkIuL07RUoBlecyKkMuS9Kz4ZDoBEueF+qn+
	1LF0NJEw5RCetuh0PYlxZeaViFzD4Cd9Pu888NmjI91z4QKoS/WbEpM2tHlu6mjb6iPZkE8Yu0OBP
	suDYMtbsw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOL-00Fta8-ID; Mon, 17 May 2021 18:55:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNu-00FtUm-LE
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=DoxStKlf352W3EvYiDmL9/rEXG1Oq9UV8Mv+do8dXac=; b=iOXIFMzZgpCove9nAi/kGvdsYr
 oDpLkOzuSFmMGybCaMca8TLviQqyMbCo6sVBO5aLs9tfD9I78AULt9yIqGGZA66ethofdJRSwCjqU
 6eDaASqnORTfv3fC/SV7cbb3n9sPjMONzXo23S1ga+HjqvtF6PM1Es08D0ByZATuwCdJCqAuH6ba8
 vrjXj7v/qFAaO1QOZJEzAloxE2haKb2zKBNYfNHoWqowtKp5LKr5YYj8Kbdxa3vHOsyJvKUoNRdEe
 eTMTNN6WcGM4HqAL1Q5b+r437lfHWY+Nf15eF/GMqVrhnspFzLw++1RVK0Fn617/My7zxCssDns5E
 PlhBwPXQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNq-00E4SY-3t
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:33 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PJ-Hf; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yT-FM; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:22 +0200
Message-Id: <20210517185424.32145-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115430_315133_00D2EE4E 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 13/15] aiodev: lm75: Handle unknown lm75 types
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

lm75 type unknown is not handled in the switch/case handling all types.
Handle it to avoid compiler warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/aiodev/lm75.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/aiodev/lm75.c b/drivers/aiodev/lm75.c
index 8e5948f468..1900636555 100644
--- a/drivers/aiodev/lm75.c
+++ b/drivers/aiodev/lm75.c
@@ -182,6 +182,8 @@ static int lm75_probe(struct device_d *dev)
 		clr_mask |= 1 << 5;		/* not one-shot mode */
 		data->resolution = 12;
 		break;
+	default:
+		return -EINVAL;
 	}
 
 	/* configure as specified */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

