Delivery-date: Tue, 21 Jan 2025 09:10:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9LQ-002Zcx-0d
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:10:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9LQ-0005xo-9W
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:10:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=blcVleakyUq7I3zgPoiubgHT3JJgprDR5d0NlVelbDI=; b=Jchid2ncs93ZEllx0Ak6mz+g9F
	dfPhvsTecH58YRk7e/qi8SOcwxhnoR7Ep2uGYDU7ohWEbatKc3JCAvAwBN635KyQVk6tDrVH2bJs3
	u4KPreLCyyG+D2Ntc2yZrU5+M3Z7bpk37mT/72GbBMSrWwKzpkCzo6M+X6NqlRXLtr2wEX+ZGAjFP
	1YY+ieYS6ldSZa+Tn6tYbyOin4zcmBt8stfsBqXsa8WjGTOeO22c2eizwRiF4DoR19Rz/06iXbg8Y
	6MR2oIH8ix8oOtBVoGh37n8j/NqtJ85OGvm0EpnYtYUJ89wg//EYf/jycu71cLrxdk5Fdou/GqINT
	12ofs/wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9L0-00000007DaO-2gPv;
	Tue, 21 Jan 2025 08:10:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9Kx-00000007Da4-3nSb
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:10:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Kw-0005rr-Gp; Tue, 21 Jan 2025 09:10:14 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Kw-0014jg-14;
	Tue, 21 Jan 2025 09:10:14 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9Kw-0012kK-0s;
	Tue, 21 Jan 2025 09:10:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250116141057.299989-1-a.fatoum@pengutronix.de>
References: <20250116141057.299989-1-a.fatoum@pengutronix.de>
Message-Id: <173744701426.248783.10565802356153407946.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:10:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_001015_951574_3C0ADBE4 
X-CRM114-Status: UNSURE (   6.92  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: readlink: print to stdout if variable is
 missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 15:10:57 +0100, Ahmad Fatoum wrote:
> For easier interactive use during debugging or when the shell is
> exercised by Labgrid, teach the readlink command to directly output to
> stdout instead of an environment variable if none was specified.
> 
> 

Applied, thanks!

[1/1] commands: readlink: print to stdout if variable is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=5e08a007ccb4 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



