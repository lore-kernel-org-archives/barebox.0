Delivery-date: Mon, 15 Dec 2025 09:16:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3l6-00BftC-0R
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:16:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV3l5-0007eb-JX
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:16:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wGHJZvNs7BdNMDXuN/Zij2ldZvns2awzXKtVlWcb2Kk=; b=zSZUprpLw/39VOSV3gyhTuzdfS
	WMowBNFv5rLaiz/efUtTDhTC7H6+G44jZVWUNIcgD7M432BTUwOt+o9zQ2ew29jL8N6/33zODlNLB
	jGgj4HyfEgeNgPZL2KWj7J53XxRRYozWBceYfr1Hk/5Y3eRFCwEl5vKTRTNw83bQXIlc5q47LToLK
	ijyqmdy/7a3Rgh45y0Wtg44/Wb1ZQjjYstHEdogJl805Zp5p6S8M/kUgZhDXYnoOPj9t4PNfLjlOT
	vLHPFOpmQ4VxuOUQsbZ0uay9fcjIl66KhgC86iLDtOsds30hT1TKMut0MyteOg5J2aAWTSkK0YD36
	eApUa/HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3kU-00000003FgK-22UC;
	Mon, 15 Dec 2025 08:16:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV3kH-00000003Ffr-1nFs
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:16:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3kE-0007Yw-VL; Mon, 15 Dec 2025 09:15:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3kE-005kTH-2W;
	Mon, 15 Dec 2025 09:15:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV3kE-000000014FD-30AD;
	Mon, 15 Dec 2025 09:15:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
References: <20251212161424.1627626-1-a.fatoum@pengutronix.de>
Message-Id: <176578655071.254534.751049701690578750.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 09:15:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_001553_667612_22BC2C81 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/5] cdev-alias: support referencing diskuuid
 without child partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Dec 2025 17:12:49 +0100, Ahmad Fatoum wrote:
> This is already the case with other cdev aliases, so support this for
> symmetry.
> 
> 

Applied, thanks!

[1/5] cdev-alias: support referencing diskuuid without child partition
      https://git.pengutronix.de/cgit/barebox/commit/?id=b28aceb6fae3 (link may not be stable)
[2/5] cdev-alias: fix memory leak in diskuuid handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=83de9a01b3d6 (link may not be stable)
[3/5] cdev-alias: add support for storage{.removable,.builtin}
      https://git.pengutronix.de/cgit/barebox/commit/?id=87435167bbbb (link may not be stable)
[4/5] boot: try builtin and removable media before net for boot.default
      https://git.pengutronix.de/cgit/barebox/commit/?id=8fdf60abc9a5 (link may not be stable)
[5/5] boot: assign names to bootentry providers
      https://git.pengutronix.de/cgit/barebox/commit/?id=c91ccf730129 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



