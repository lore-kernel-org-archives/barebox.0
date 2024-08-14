Delivery-date: Wed, 14 Aug 2024 10:05:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se90G-009T2j-1R
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 10:05:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1se90F-0007Ch-SA
	for lore@pengutronix.de; Wed, 14 Aug 2024 10:05:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WdLAq6xHZ9Tk4/8AEKTXeMFFNuH4e3/iSVm9zLILZ58=; b=h7jMKB+9sV47AYrdJXbOKEmqCD
	e/BqYvDbyPJcKIHIJeZ3cmCFGiB+juBnjgV6wFi+oUVw9+MGRvhSClWkv3qu5ejdHn/rkCOplej6b
	M1tXhC9v+mvJZ7GIOzHYsDrzrcDfwHtaa1Wzcizjie3dytHfWlWm5iaMRPDSl4ZVst6eutkCUY8nM
	b6oNZUjUX+ZxJeUTmNXXLslSVNjJu2jn6YHtPyh6BxiwH/wsLGYpnfeSi2ZUWmP/UbcNl8dzr7Eny
	RZ4qmyc4wwv7CJVmyWjNZlqby9srMIRUVB6HiMNrt+WmTafbTjxDpI54CBv6WgKv5Ad2hNhZCseLA
	FlKesWxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8zl-00000006A37-0qoI;
	Wed, 14 Aug 2024 08:04:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se8zh-00000006A2h-3yTb
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:04:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8zg-00075l-AK; Wed, 14 Aug 2024 10:04:32 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8zf-000JYn-TY; Wed, 14 Aug 2024 10:04:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se8zf-005NYA-2m;
	Wed, 14 Aug 2024 10:04:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809142444.316021-1-a.fatoum@pengutronix.de>
References: <20240809142444.316021-1-a.fatoum@pengutronix.de>
Message-Id: <172362267185.1282140.6866925249269585047.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 10:04:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_010434_016374_1205E16E 
X-CRM114-Status: UNSURE (   8.35  )
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
Subject: Re: [PATCH 1/3] Documentation: devel: background-execution: update
 section on I2C slices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Aug 2024 16:24:42 +0200, Ahmad Fatoum wrote:
> When the documentation was written, there were no I2C slices yet.
> The example is still useful to explain why slices need to be used, so
> we'll leave it in, but update the documentation to reflect that slices
> are indeed used now in I2C code.
> 
> 

Applied, thanks!

[1/3] Documentation: devel: background-execution: update section on I2C slices
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5e2fb6658a0 (link may not be stable)
[2/3] Documentation: user: intro: add more info about mailing list
      https://git.pengutronix.de/cgit/barebox/commit/?id=3449c1ee700c (link may not be stable)
[3/3] README: bring it up to date
      https://git.pengutronix.de/cgit/barebox/commit/?id=e851f9baa8a3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



