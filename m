Delivery-date: Mon, 01 Mar 2021 10:32:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGev0-0004OM-9v
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 10:32:46 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGeuw-0006KH-1k
	for lore@pengutronix.de; Mon, 01 Mar 2021 10:32:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F4cQgd41rbWczrBlBDD9Lr8amfEUdW1cCIgYrxfXpBg=; b=Soi8CN6a/ruyGQ3Guc03XIl3UN
	Lqe8c7i2WA/lCujfCpz0ZXzv0dvSZ67jsC1A9vgdzOAxj8m/qp//cVGRs/MJh5PJEAqiwV4iR7DQd
	bWvoV+CNP+b3YHPbGRuwQC87X74LiUudYXgmy+GY5OfoPdDDCCJJIkbprrh5ApHEaV8hVuFnI5qB0
	FcZ4qjWBkVZjBLE3USGk+qLfh5vyil6IfkhDuGk4+BwIS65mBAg4um2+C/9K5ioG+EZoiuoHrpB8k
	cIMtOQdKqXXegP4ERboIlhBnJl3cZ295E9nMGbNHMh12Gyz9C90wDqxhIrIDLTgxM0chDF3RV9RKV
	p6h6aG5w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGetU-0005N9-Uo; Mon, 01 Mar 2021 09:31:12 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGetQ-0005MQ-UJ
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 09:31:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 8A4A11A2F53
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 09:31:05 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQDTZDB;
 Mon, 01 Mar 2021 09:31:05 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 5F0341A2F4A;
 Mon,  1 Mar 2021 09:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 3589D27E0842;
 Mon,  1 Mar 2021 10:31:05 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id PizytShUX5KP; Mon,  1 Mar 2021 10:31:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id D6F8427E0840;
 Mon,  1 Mar 2021 10:31:04 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu D6F8427E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614591064;
 bh=ecCb0HYbU/YKKVaflyMbSRt6te8pVFXe3F29ZpXF0us=;
 h=From:To:Date:Message-Id;
 b=IqMYM+S+MhLBGucW4vWJNZPk+Ti1zUJ7S5wJT/MTuJp1bEC1Jwg2Ix1nuRRmx/cG2
 2Nqa/enBT8T6GClYKLqt7irIfsX+eaOlNhw8u/terKqp5ur8XdTnBCWSIQZxc5XdyY
 zbrIUEVH194i9o/METQHafIvioqOb4UDpC7iqt/U=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yWDxTN4zxJ3L; Mon,  1 Mar 2021 10:31:04 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id BA0F527E083D;
 Mon,  1 Mar 2021 10:31:04 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 10:30:39 +0100
Message-Id: <20210301093040.1721-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210215141843.27629-2-jmaselbas@kalray.eu>
References: <20210215141843.27629-2-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_043109_505183_8AC5DCAC 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] fixup! usb: gadget: dfu: Wrap fs operation in workqueue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When not in mode "safe", do_close was never called.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 82c9dc030..3234f25b3 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -359,7 +359,6 @@ static void dfu_do_copy(struct dfu_work *dw)
 	}
 
 	dfu->dfu_state = DFU_STATE_dfuIDLE;
-	dfu_do_close(dw);
 }
 
 static int
@@ -557,6 +556,11 @@ static int handle_manifest(struct usb_function *f, const struct usb_ctrlrequest
 		wq_queue_work(&dfu->wq, &dw->work);
 	}
 
+	dw = xzalloc(sizeof(*dw));
+	dw->dfu = dfu;
+	dw->task = dfu_do_close;
+	wq_queue_work(&dfu->wq, &dw->work);
+
 	return 0;
 }
 
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

