Delivery-date: Tue, 18 Jun 2024 08:14:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS78-007zee-1v
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:14:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS78-00084p-2m
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:14:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ndQQoCT51RPOR4LtOM1+Cw21XtOzRGFYWzto0cXKz+Q=; b=VRJyLXIAIiggDXIYboCJwgwQOI
	d+Qpjju66kMPyHZ+5fIHxzOkNRXV+gKs4tph3gFAOwkCeFhbYsuhh18WdNgqscN861gfgYs+IWQRw
	ulzchiCNxDJmCa97rEADbNQgkkNZU2Plo8Z8fJrrSPkzGgivr7pvCZ71aAFSVk4JBWHN5/8vWh72h
	KkGZlALEJ/nxLybsZ/MeiFI0WG7qyf2oCMCwNFwkM8SkAEWW1ta1NaMchMnDiqyPKFBMmRWzO8FoK
	sUrb5N0V72glt8+P5/R/2SH3ReTZ/34eUXcdzOsu/JcmRVlkhOJ9wAcR3lM0MSbd7z0wVaNkjvGvX
	AZM9bI8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6h-0000000Dl1H-3vB6;
	Tue, 18 Jun 2024 06:14:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS6e-0000000Dl0N-3RdZ
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:14:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6d-0007xG-33; Tue, 18 Jun 2024 08:14:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6c-0039ru-MO; Tue, 18 Jun 2024 08:14:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS6c-00G2Za-22;
	Tue, 18 Jun 2024 08:14:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: rhi@pengutronix.de, str@pengutronix.de
In-Reply-To: <20240617140906.2038133-1-a.fatoum@pengutronix.de>
References: <20240617140906.2038133-1-a.fatoum@pengutronix.de>
Message-Id: <171869125062.3823103.6900309617552287297.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:14:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_231412_985702_B08BA600 
X-CRM114-Status: UNSURE (   8.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] scripts: container.sh: map to UID/GUID 1000 in
 container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 16:09:06 +0200, Ahmad Fatoum wrote:
> The script was inadvertently assuming that the ID of the user executing
> it is 1000. This is not necessarily the case for the host system, but we
> know it's the case inside the container. Thus map the user account
> outside the container to 1000/1000 within the container.
> 
> 

Applied, thanks!

[1/1] scripts: container.sh: map to UID/GUID 1000 in container
      https://git.pengutronix.de/cgit/barebox/commit/?id=362ff57ea617 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



