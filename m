Delivery-date: Fri, 12 Mar 2021 17:26:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcF-00055N-Du
	for lore@lore.pengutronix.de; Fri, 12 Mar 2021 17:26:19 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKkcE-0005wX-Ld
	for lore@pengutronix.de; Fri, 12 Mar 2021 17:26:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GrWFBheqMFgxfL4jV7k6s/RlgMcUPWbB6VNe/3XUbQc=; b=FIEFsD4R6nB4NF1pMexUqHkT9K
	sKe+beuEpqDBVq3tFfdHpOpfbj8DUQlwAggzT4Qk73Z1YX10WhARcjMpDU/Ec0qPej42VnV/VyXLW
	PW1KtsLR8m4KYsy3Kq3BWMNb9iiKS8wDmcsS5e9BFA0jkpm/atoSRX/x8IilLxiQX3IyywzJvIz5M
	qRoa6fqBlMKeGODcxmfwMy4LWbHUZgpghQ/a26rI3sLe3+X4Na9k/Ip6t5MFmhwfWe4my9MjN6Zln
	mn4ABiIDLH+ZpNE/pxPhd90rWYGbQgXqKYyuM2/xkuLmeUkF1IEoI+lCruZw3g1ohs6RfEDZ8H7xi
	/0KBRPig==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKkas-00BwZn-7M; Fri, 12 Mar 2021 16:24:54 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKkaj-00BwYp-Jf
 for barebox@lists.infradead.org; Fri, 12 Mar 2021 16:24:48 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 1136D1A3B47
 for <barebox@lists.infradead.org>; Fri, 12 Mar 2021 16:24:45 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KM6IGBKE;
 Fri, 12 Mar 2021 16:24:44 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id DF2591A0123;
 Fri, 12 Mar 2021 16:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B6FC327E0514;
 Fri, 12 Mar 2021 17:24:44 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id qFe0sPguBMdA; Fri, 12 Mar 2021 17:24:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 0AEEB27E0512;
 Fri, 12 Mar 2021 17:24:44 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 0AEEB27E0512
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1615566284;
 bh=GSJ30PbkMWda7g2tJstoan3/jtCXYAVMuXIkmXR5k10=;
 h=From:To:Date:Message-Id;
 b=Iacq8TlVgr3BXWb7fFv0HZPT4GBxXrMMtNpflwUn4VPtd2ItPylACDl7FEkKmiYL0
 cYSBItNUU0KV7vGuo3ggRfDAtKZ8VlaB6cVhAdFGex27DKGZvaeYA/wXvP0N54a8xB
 9Ifh6tQGN5io1bFLATbShhKryzt7FCFMdNihF6qw=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 1dBadoxgX42E; Fri, 12 Mar 2021 17:24:43 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id ED16427E02DD;
 Fri, 12 Mar 2021 17:24:43 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Fri, 12 Mar 2021 17:24:28 +0100
Message-Id: <20210312162432.9189-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210312_162447_182406_1CCEF277 
X-CRM114-Status: UNSURE (   8.16  )
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
Cc: Jules Maselbas <jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] usb: dwc2: Make dwc2_wait_bit_set wait all bits in mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The dwc2_wait_bit_set() wasn't waiting for all bits in the mask to be
set but was waiting for only one bit set a mask.
This is not the expected behavior as stated in the function's comment.

The function dwc2_wait_bit_set() is always called with a mask of only
one bit.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/core.h b/drivers/usb/dwc2/core.h
index 780efb262..fa9d6ae95 100644
--- a/drivers/usb/dwc2/core.h
+++ b/drivers/usb/dwc2/core.h
@@ -532,7 +532,7 @@ static inline int dwc2_wait_bit_set(struct dwc2 *dwc2, u32 offset, u32 mask,
 			    u32 timeout)
 {
 	return wait_on_timeout(timeout * USECOND,
-			dwc2_readl(dwc2, offset) & mask);
+			(dwc2_readl(dwc2, offset) & mask) == mask);
 }
 
 /**
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

