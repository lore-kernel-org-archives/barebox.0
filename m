Delivery-date: Fri, 14 Nov 2025 14:15:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJte5-000uzx-1L
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:15:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJte4-0002Fz-ST
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:15:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=41bv3dHwtjAlwKUk9MQOqnl0/g6Py03kq0dsBOjAO0o=; b=rB/zg1iI4mA9hzn1VEzGxY2CrS
	/Pj+afUQH7MdURlj0XbYFJgWdlhoMhANo4SAvHR6JP4hDro8fb1+rMWxTIrc0uEzfK/KeeCRKgtDV
	4uhCOoMKOSyqwo4vmBFXQp6gJ3ocZRkLiYssg9MrpaBAWMx7gg3pZaVwSfvT40rAMtqgg9/NAUB05
	6xlTu6ObSGW4NYKngIPkKFlCmPvsB7b6KzYEXps+9eP18yyKQ/OYw5a8neLXMvMSHhcRZ3L60GU9d
	sUmmnsB+tOb3L5Xiwy1YsmtqdHgHH2zUTkqB4Eow8G/Wbl+ylKyw4cL18ithr053FQOwX0a3gLK1Z
	tz2MGGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtdW-0000000CEhB-1oUh;
	Fri, 14 Nov 2025 13:14:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtdR-0000000CEgO-34Xi
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:14:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdQ-00026R-5C; Fri, 14 Nov 2025 14:14:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdP-000Qi7-35;
	Fri, 14 Nov 2025 14:14:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtdQ-00000001uRH-1LcC;
	Fri, 14 Nov 2025 14:14:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Michael Grzeschik <m.grzeschik@pengutronix.de>
In-Reply-To: <20251111-imx-ldb-v1-1-30820fc5649b@pengutronix.de>
References: <20251111-imx-ldb-v1-1-30820fc5649b@pengutronix.de>
Message-Id: <176312607987.454725.11536486630580662085.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 14:14:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_051441_777132_4FF2C3DC 
X-CRM114-Status: UNSURE (   8.61  )
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
Subject: Re: [PATCH] video: fsl-ldb: add ported driver from linux kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 11 Nov 2025 10:12:21 +0100, Michael Grzeschik wrote:
> Import the driver from Linux and change the interface from drm to vpl.
> 
> This has been tested on the IMX93.
> 
> 

Applied, thanks!

[1/1] video: fsl-ldb: add ported driver from linux kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=142c910f16dc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



