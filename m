Delivery-date: Mon, 14 Oct 2024 15:32:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LB7-004H77-0w
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:32:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LB6-0003oo-O0
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:32:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zUWBKDHzZ075lyqLms2mg1QSmOQXBAp6bNiWUvU0cs=; b=Np2UI4NzK4SFSX8nDB5EqH5fSr
	RQPH9oGM2iJICN5/Zsn3IHgI/FsNdtdScQY/jOZMSx5+kMsDuxEor2tT/GEczoJ0z350H4OJkv3fV
	PGwW/d5C7XkoaHc6RLMbHQwhJDvYqM0mbBI0BvKYgGa4BDldEVB6x15j11v6tXrGSlPEiandVmcKq
	qWdWQ75xe57PZAasUsw+34cPuOR7zE0mGgkmWkEyfUvGyrLYUsrdyuHV7gmdZz8wCstdzkHcuByTQ
	AhQzwfi4UlYUIcHQLkg5z3/vhCDsNudgJLyxJpokAvucvBw4gqPskiovYhNi9jXQhOzFX8o5N/JG6
	t88/yShg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LAc-00000005IRs-35OE;
	Mon, 14 Oct 2024 13:31:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jcr-00000004zdN-0gAj
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:52:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6zUWBKDHzZ075lyqLms2mg1QSmOQXBAp6bNiWUvU0cs=; b=WqDTNZmo+R2SL9rdvJcOtpKGkk
	OkWH7qcKIv24TwRZyeVf8RfcO5TjJS9zXAGFt7zUz862YhGXVFkHvmFl51QRMHXFwvjVgm3n+b0sq
	F5HqrcB+w90rrOK9N7diZ960MIvhK8kDRZWwB1j5DmYvQn9cuNUjxF2RvtpqP9coe/VsTrx9HrlxW
	nmq6VNH+cXjsGJ3K2a5GSSOKd1wr5qC+sRzBRNl2mBY4taigXgQ1Abrb7OuTc0yQhGhBmXZ2gO+Iu
	idqEAkfdbYhDgSgH+cBpTpjaZ+NLNAQJi6HjDPkJxb6LyauM8LVzHIlygHeuDHzp3SKm+AC7YCCdf
	TqfWGIlQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jco-00000006Kp1-0T9j
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:52:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-0001Ih-K6; Mon, 14 Oct 2024 13:52:33 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-001mVg-7n; Mon, 14 Oct 2024 13:52:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jcn-00BwRg-0U;
	Mon, 14 Oct 2024 13:52:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:52:32 +0200
Message-Id: <20241014115232.2846257-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115232.2846257-1-a.fatoum@pengutronix.de>
References: <20241014115232.2846257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125234_359315_6867CBA1 
X-CRM114-Status: GOOD (  10.75  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usb: gadget: fix static analysis false positive
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 32-bit systems, the 32-bit-wide buf can never exceed 0xffffffff,
so this resulted in a warning. Fix this by using upper_32_bits()
instead, which is also easier to read.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/udc/fsl_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
index e1d0d0b48272..30f4da0c41e7 100644
--- a/drivers/usb/gadget/udc/fsl_udc.c
+++ b/drivers/usb/gadget/udc/fsl_udc.c
@@ -780,7 +780,7 @@ static struct ep_td_struct *fsl_build_dtd(struct fsl_req *req,
 
 	/* Init all of buffer page pointers */
 	buf = (unsigned long)req->req.buf;
-	if (buf > 0xffffffff) {
+	if (upper_32_bits(buf)) {
 		pr_err("Only 32bit supported\n");
 		return NULL;
 	}
-- 
2.39.5



