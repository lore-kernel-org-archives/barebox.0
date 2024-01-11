Delivery-date: Thu, 11 Jan 2024 15:15:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvpw-00D3as-2B
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 15:15:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNvpw-0008Ua-5M
	for lore@pengutronix.de; Thu, 11 Jan 2024 15:15:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YXV+jlUhM5mkjmgDQiFAn12UilTgl7dAGEU0CPMo+2Y=; b=S/EfufuTXBXj+coUwCXzpvY59v
	BuUK3EqpLMkAEkAemm+x7jIAY6Jl7uWCk1wES+vR7ymAZs22elkQ0vz4aA7PVbrDAUDZG7aLBU+NY
	xdfzL/AKVk6cZcR9wAPvFVfvmqG/5aFEn2JkF8SqdFWx2vtoWPpYWq00BKJfwksLZEtwayb6bDp8P
	kxp/4P8GGsgSU0OkaMgyU9EtVlJ3b8u2v7yh4WYa47Onc1LGkIaovf2h0+5Bjd6ADPkJ3AkqrWQQ6
	PlZRlcS950qot847av7aoAyI8TYe1qmQtzblSNNbXcSNRD4ZPyB49LufJkUT2Q+Fm1DntT2LeLVoR
	OVfyo9wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvoz-000GBw-39;
	Thu, 11 Jan 2024 14:14:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNvox-000G9v-2B
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 14:14:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvow-00088A-CR; Thu, 11 Jan 2024 15:14:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvov-001wpA-Vs; Thu, 11 Jan 2024 15:14:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNvov-00DtTH-30;
	Thu, 11 Jan 2024 15:14:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240110142014.3197930-1-s.hauer@pengutronix.de>
References: <20240110142014.3197930-1-s.hauer@pengutronix.de>
Message-Id: <170498244992.3311457.14310837175246088498.b4-ty@pengutronix.de>
Date: Thu, 11 Jan 2024 15:14:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_061411_745515_350CF75C 
X-CRM114-Status: UNSURE (   5.58  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] scripts/get_maintainer.pl: Drop wrong line from output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jan 2024 15:20:14 +0100, Sascha Hauer wrote:
> scripts/get_maintainer.pl prints "Maintained" on an otherwise empty
> line. Drop this wrong line as it triggers "b4 send" to try take this as
> an EMail address.
> 
> 

Applied, thanks!

[1/1] scripts/get_maintainer.pl: Drop wrong line from output
      commit: 36b1cdae22acf0c3a798b4dd6ff3c9d7bd91eb3f

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



