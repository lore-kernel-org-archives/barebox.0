Delivery-date: Mon, 08 Mar 2021 16:22:20 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJHi8-000772-Fw
	for lore@lore.pengutronix.de; Mon, 08 Mar 2021 16:22:20 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJHhx-0008V5-Lf
	for lore@pengutronix.de; Mon, 08 Mar 2021 16:22:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rCtTv2kR7nqRiLicGtp/ZH42c/TufUJJ/2lbUw8VCaI=; b=Xi4kLgYDfq90PP3gNDxjvHE66+
	+cPFcRRvx8q8MjEa/IandBhbPvFV3E8bIwP7WpYcYilwJvi9ey3hQCT7OP3qS2ZlMzdFqRY+VfWXG
	IDJxc8J+Q8Q9no+1MEQ/BNu1cr0VUZf026ZziY3RjIVaBpgv5cb4nFX43MjpgHWAvnOBSHMi+y2Pp
	wmw4LRFfcz7fhAuRODcGrkxPmVAmmLyg1M5Av6SvCbwEP1mgLu8jazav3Bi/3hEgvFEEUeLTQ9Yz+
	osbrCRVaSpRIgZjyvnAh+1ffAItNC46BF4VXKUxXrhcbRMO9Q50uKBlrWidV3EIt/LMk24ylaJV2H
	C9qIIP1Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJHgV-000VLN-IW; Mon, 08 Mar 2021 15:20:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJHf4-000Ukt-Os
 for barebox@lists.infradead.org; Mon, 08 Mar 2021 15:19:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJHf3-0007lk-B1; Mon, 08 Mar 2021 16:19:09 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJHf3-00041v-2e; Mon, 08 Mar 2021 16:19:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Mar 2021 16:19:08 +0100
Message-Id: <20210308151908.15416-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_151910_915484_64886FDF 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] resource: include region name in conflict's debug output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The iomem command does print names, but it won't list dynamically
allocated and deallocated regions, like those requested during bootm.

Include region name in conflict debug output to make them easier
to debug.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/resource.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/resource.c b/common/resource.c
index 92fe96252fdc..ff4318a0d77f 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -61,12 +61,14 @@ struct resource *__request_region(struct resource *parent,
 			goto ok;
 		if (start > r->end)
 			continue;
-		debug("%s: 0x%08llx:0x%08llx conflicts with 0x%08llx:0x%08llx\n",
+		debug("%s: 0x%08llx:0x%08llx (%s) conflicts with 0x%08llx:0x%08llx (%s)\n",
 				__func__,
 				(unsigned long long)start,
 				(unsigned long long)end,
+				name,
 				(unsigned long long)r->start,
-				(unsigned long long)r->end);
+				(unsigned long long)r->end,
+				r->name);
 		return ERR_PTR(-EBUSY);
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

