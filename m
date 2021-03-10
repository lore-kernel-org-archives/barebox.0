Delivery-date: Wed, 10 Mar 2021 14:30:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvP-0001VL-4R
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:55 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyvN-0004ip-VA
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jHMjo2yUMraa17cNXhT9vys5acEYj0NJcoXUUD//RQE=; b=SE8zzFuqnjNMhBa9Jirg2Tuhz
	K+zdLw2fzpOaZdmtRioFz1g5rqdFN+PcYnMaJNC5FGBeorlLNtNe8g3LKWcoSshhS7t72djmEiuvK
	F2w5T8wI9kFTAM64ZRcNntcGTYXxcW4NZFHV+1YCz0bxnosHDPrU7COyZnGIyk0jau/AFK4WSxAMY
	4tRQWTzZhn6qL+p/ddtSDSR8iwEFYSKsNM9U2rKU3km8etUGNXWPdNfR4HpTk8KY6KMMVEdPzcAZc
	lFRlDI7rs6SHqqeuq2odwtSCMHqDXGhBY2lULNh19Fvolpkowb/vsRobV2rQjSuA1Nmb+idqmR5LQ
	sbuY2wUBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJyuC-006vLy-N9; Wed, 10 Mar 2021 13:29:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJytG-006usP-Il
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fw-Vb; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006cU-Ne; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:27 +0100
Message-Id: <20210310132829.7662-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132842_752931_14083817 
X-CRM114-Status: GOOD (  14.09  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 15/17] doc: devicetree: Refer to internal device tree also as
 live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/devicetree.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/devicetree.rst b/Documentation/user/devicetree.rst
index 679cae7f00..4be6a1e703 100644
--- a/Documentation/user/devicetree.rst
+++ b/Documentation/user/devicetree.rst
@@ -21,7 +21,7 @@ The internal devicetree
 -----------------------
 
 The devicetree consulted by barebox plays a special role. It is referred to
-as the "internal devicetree." The barebox devicetree commands work on this
+as the "internal devicetree" or "live tree". The barebox devicetree commands work on this
 devicetree. The devicetree source (DTS) files are kept in sync with the kernel DTS
 files. As the FDT files are meant to be backward compatible, it should always be possible
 to start a kernel with the barebox internal devicetree. However, since the barebox
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

