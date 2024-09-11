Delivery-date: Wed, 11 Sep 2024 10:36:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq6-003QP7-1L
	for lore@lore.pengutronix.de;
	Wed, 11 Sep 2024 10:36:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1soIq5-0006ds-7j
	for lore@pengutronix.de; Wed, 11 Sep 2024 10:36:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6s30osZW/BDge7ha1W5Hcr3VYUHhQyjK7MkQxsizLyM=; b=ZNbFYSjEAZgksH/AMNTKIgUEhS
	a80btPsazYsNccFIvVftSHAk0zPijjvXAAhwoufXcECrv10M6/yqqg3seTt/r4ODPIJsX+qHK2h1o
	frXphtD0IXcDKhjxY32F/QkzveFqYAk6TI/L+65wox9pkVSD8af199+cD9itEaajYjBqSvi50298a
	g3d6jrZgY65To35GVynjb9tmlgn+kbxvNCfsKnkLbhQV2KRlNEHkMICWFQ34Rpqdp1uu/n3c7/w5Y
	rUK9yxpcoLuYenMUyVpyL3ZF6/fCVANkFP2lzzuvv+PMnoqxgCof4QbSzR810Fu4oUgYWXMTZylPU
	lfQtlznA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIpc-00000008g1W-2lbh;
	Wed, 11 Sep 2024 08:36:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soIiB-00000008eLl-1lxh
	for barebox@lists.infradead.org;
	Wed, 11 Sep 2024 08:28:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-00034Y-Qi; Wed, 11 Sep 2024 10:28:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-0075pa-7W; Wed, 11 Sep 2024 10:28:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1soIi8-001fVC-0X;
	Wed, 11 Sep 2024 10:28:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Florian Otte <fotte@uni-osnabrueck.de>
In-Reply-To: <9f97-66d58780-19-542e2c00@140924414>
References: <9f97-66d58780-19-542e2c00@140924414>
Message-Id: <172604330416.397851.15341961911163376221.b4-ty@pengutronix.de>
Date: Wed, 11 Sep 2024 10:28:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_012827_489481_13AB711B 
X-CRM114-Status: UNSURE (   6.33  )
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
Subject: Re: Bufferoverflow on eMMC partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Sep 2024 11:37:56 +0200, Florian Otte wrote:
> Memory for up to 6 partitions is reserved, however there can be up to 7
> partitions on an mci storage (e.g. emmc). A user partition two boot partitions
> and up to four general pupose partitions.
> 
> 

Applied, thanks!

[1/1] Bufferoverflow on eMMC partition handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=631f2de801e4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



