Delivery-date: Fri, 08 Nov 2024 10:52:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Lfm-006H66-1t
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 10:52:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Lfn-0000q5-9e
	for lore@pengutronix.de; Fri, 08 Nov 2024 10:52:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nAovIRKmpO2rT9JAWP4AcWb2RKBqUdiw+qKNRCgeD4=; b=Q6SZSNTBN1nFvsxB1g9hzhVK2f
	fpws4BFmze3wS9LWcFgFhrAPLGAfbUH+Vx/l6lBexsJaSsIovEcbRUjk7yGVXDvTc/OP1IXmVQNr6
	ooxvs/WQHOH3Qo47ZU6VMydy8ZWxIp6sDsPxgD6/S9Bu7hPJgha43/t5SlUM/C/s+twM73cNzsLll
	cKxWr7kkt5glk6LOMz5zXYzG4lfxnE/1j9lSGe6yZ087n33vbOhTEOWKXBw8bLYzfaMh9fliQSxdU
	kU+6BD1fq/IX72YGcoH3Almegz7KNriQPZ3sL1hTu+TZjL/Zj/J/bYeDdsafFMOv1NVss/9Wf0/jM
	/5ViiuVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9LfM-0000000A13Z-3ogk;
	Fri, 08 Nov 2024 09:52:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9LfJ-0000000A131-3uzt
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 09:52:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LfI-0000gA-Pk; Fri, 08 Nov 2024 10:52:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LfI-002bCT-1w;
	Fri, 08 Nov 2024 10:52:28 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9LfI-009d6e-1l;
	Fri, 08 Nov 2024 10:52:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241107072451.1687301-1-s.hauer@pengutronix.de>
References: <20241107072451.1687301-1-s.hauer@pengutronix.de>
Message-Id: <173105954854.2295247.15804100163828557281.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 10:52:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_015230_004479_B7683DC6 
X-CRM114-Status: UNSURE (   6.03  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: Layerscape: ls1046ardb: add missing machine
 protection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 Nov 2024 08:24:51 +0100, Sascha Hauer wrote:
> rdb_late_init() should only run on the appropriate machine. Check the
> machine before continuing.
> 
> 

Applied, thanks!

[1/1] ARM: Layerscape: ls1046ardb: add missing machine protection
      https://git.pengutronix.de/cgit/barebox/commit/?id=13ff551d154c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



