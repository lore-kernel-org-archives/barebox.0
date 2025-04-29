Delivery-date: Tue, 29 Apr 2025 17:25:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpl-000XCg-39
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 17:25:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9mpl-0003A2-EW
	for lore@pengutronix.de; Tue, 29 Apr 2025 17:25:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xn5MJVjps8tFr1/qV8cW0ajqyQlg+suyKNA6X5iOZqw=; b=slGH4d9GKhbJFE69k9/GFE0fBp
	9S2nUOYxActmcX9EWdchEOHA0WqzXa02H2G1RIEHxUYBJpytsMPkM9C4i2s7Dn29vTTH2ubdXdtU1
	n+WkL32qj7J1v1PjsSDY3DSu+tjhC9SUxbhMa+rDLsE6VfiIiowncIlPEvbg42OWOMQFjP1ee+CxE
	EbZaZbCkmRPn6ZdMQx1f49vTtVlc2UlbEIu9Ggwf8f1y6v5iW0bhjzeDwskwKllLW0uJVPtyWDenJ
	USbwCL6jKY2QnIx5I6hCnirCRM2kP/HkDfaXsC66sX7FgqU3D1+lU0gLetmfyO0A1ABgOa33BVQzb
	nFc5pAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mpL-0000000A76V-1Wp5;
	Tue, 29 Apr 2025 15:24:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mT2-0000000A346-0IfV
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 15:01:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=xn5MJVjps8tFr1/qV8cW0ajqyQlg+suyKNA6X5iOZqw=; b=XfKWizaVSq+AUxKsdf/3UOGzpA
	B2Jm9ht8Ya3eeVbUKMlefEOVZHkRx/X1Gn5eRw63KOYhImkGLPL5EFM3skLC7/O04KWhnk+Lz+Non
	rIzWeboqT+b3y3Z4OEHZIFUN6Dbt6ek37tsuw0EvfsutcMNOtXLDhe5pyKGIwnaaLn6RYyfnT4Eyy
	Ovr6Rlnq1XsPifWOV8zxzyOXf4NTtHZz75LSXbN9iSG+vBz8pjUyE8oZZKjMVerHXW1MTFucICcgZ
	VxDxJ6/l5mwrYjq2PWc3HW21X5JWa2of5yUGwADyp7ItQXwi+JnBaVxunU2kdJwetMkLFPEDhmx20
	IW2CaAmQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9mSy-0000000DQId-1khQ
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 15:01:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mSx-0004xF-Q0; Tue, 29 Apr 2025 17:01:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mSx-000HZF-20;
	Tue, 29 Apr 2025 17:01:47 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9mSx-00D4m9-1n;
	Tue, 29 Apr 2025 17:01:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250425054839.2059381-1-a.fatoum@pengutronix.de>
References: <20250425054839.2059381-1-a.fatoum@pengutronix.de>
Message-Id: <174593890755.3116544.2576916618898786894.b4-ty@pengutronix.de>
Date: Tue, 29 Apr 2025 17:01:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_160148_594471_9972789F 
X-CRM114-Status: UNSURE (   6.40  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! commands: devlookup: add support for cdev
 aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 25 Apr 2025 07:48:39 +0200, Ahmad Fatoum wrote:
> commands: devlookup: fix memory leak in error case
> 
> There's a string_list_free after out:, which we are skipping when we
> directly return.
> 
> 

Applied, thanks!

[1/1] fixup! commands: devlookup: add support for cdev aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=d6e0dfb84eaf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



