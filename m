Delivery-date: Tue, 11 Mar 2025 09:51:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvKt-00CbkM-1y
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:51:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trvKs-0004C7-FY
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:51:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ikFO227wwjerU0UK2zY1rpCgidMTw5smas4CvzM9dCY=; b=M7HCH768r6CzUS5j5g9GtGz4W+
	d1BmQgVOdNDyXG6B0lzs/y34PuQGOWqnB/Kn+zOXEYrBZOiYWZ/jNFXbtz6jKd1355BpkQokZTgyV
	DWg24amCcUiQ4dMV37Fjqqr/IzA6yGj+HBVMTTTb9KNMENhgIPkoVFLfkSk7TecKkg3kC+GKLQZLd
	h/zqF0k+uIqzKEMUO9TkRFvA7gZ0OTNg3qbGxoBLiKkpu5JArbCh9uz/FX6nHkaUU+s6T4/d5MCiY
	w9rgW7Z1jgrQkNxDlsP7UijTOhKvCvHqrAZO9sQt5m6/NtHiA8mrR9h0ZHAzFIPrgsq1Ia9QF49HY
	Xu2NVCOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trvKS-000000052MP-3a5V;
	Tue, 11 Mar 2025 08:51:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trvJt-000000052Kz-0y3D
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:50:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvJs-0003xI-2P; Tue, 11 Mar 2025 09:50:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvJr-0059L2-2O;
	Tue, 11 Mar 2025 09:50:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trvJr-00668Q-2B;
	Tue, 11 Mar 2025 09:50:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250228080214.1319495-1-s.hauer@pengutronix.de>
References: <20250228080214.1319495-1-s.hauer@pengutronix.de>
Message-Id: <174168303567.1453535.11863895677732790464.b4-ty@pengutronix.de>
Date: Tue, 11 Mar 2025 09:50:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_015037_273751_5B01FFAF 
X-CRM114-Status: UNSURE (   7.37  )
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
Subject: Re: [PATCH] barebox-environment: Use default mount path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Feb 2025 09:02:14 +0100, Sascha Hauer wrote:
> When using a file inside a partition for the barebox environment we
> mount the partition to a non standard path ("/boot") which can cause
> problems with autmounting. Mount the partition to the standard location
> and create a symlink from /boot to the mounted path.
> 
> 

Applied, thanks!

[1/1] barebox-environment: Use default mount path
      https://git.pengutronix.de/cgit/barebox/commit/?id=4042480fc709 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



