Delivery-date: Tue, 21 May 2024 13:07:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NLX-00C93u-1n
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 13:07:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NLX-0002sD-0X
	for lore@pengutronix.de; Tue, 21 May 2024 13:07:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e6tcFTuTI561NnFY+uFo3+3Lmn0jnHCOshcqeqIaA+I=; b=s+1lFk2Ik6M8qrCwS4wgCqx7GE
	8+6A5Byvdm5slmIf6x82XqS9gZUd9ZawQKT9YND/HsX9RAkoj9cMe2xmXs6kz5ioRyseYNfaq1OF9
	2G2BO6H0qkG3Eyq9z/Y4vh2o7nVZb6yBK6B4qocVX0c/nJ0i3AMXZPDFqdmmCY0y1wzbHG/tmTpTe
	YXRcwm6XLchMM+qMaomMsDmzq5buqJ9+2N18Rl1qJJ6QkR3+Hz2OBlRU/M9Hf/e1OQSzEmqhrBuzQ
	fbF2Qwll+WhhAzlvrQaBb34elAZa5I47W93ZKDQ3dLfYAy2NgIjy//Zy5MGcD19yE+1qhZvsNgOit
	s28UXTQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NL1-0000000HEhY-17OS;
	Tue, 21 May 2024 11:07:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NKx-0000000HEgK-0JZV
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 11:07:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKv-0002e3-Et; Tue, 21 May 2024 13:07:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKv-002NZM-2V; Tue, 21 May 2024 13:07:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKv-008dHx-04;
	Tue, 21 May 2024 13:07:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240521082944.7208-1-a.fatoum@pengutronix.de>
References: <20240521082944.7208-1-a.fatoum@pengutronix.de>
Message-Id: <171628963701.2057213.9730269394231307663.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 13:07:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_040719_362677_38090392 
X-CRM114-Status: UNSURE (   5.76  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] include: linux/types.h: define intptr_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 May 2024 10:29:44 +0200, Ahmad Fatoum wrote:
> We already define the unsigned uintptr_t, but lack its signed
> counterpart although we do define INTPTR_MAX. Add the definition
> for completeness.
> 
> 

Applied, thanks!

[1/1] include: linux/types.h: define intptr_t
      https://git.pengutronix.de/cgit/barebox/commit/?id=7176954ca289 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



