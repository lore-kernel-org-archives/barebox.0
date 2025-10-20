Delivery-date: Mon, 20 Oct 2025 15:31:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApyp-009uUa-1R
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 15:31:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApyn-0006c8-BO
	for lore@pengutronix.de; Mon, 20 Oct 2025 15:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLgnrvGO8fYYqymn4D2Hshv05Db/gySaIV/57IgsApM=; b=eLhdQSkQXDLI2Z7aIqAbDVmJCB
	MHyFhkhLCG+LBSuMHchA8UYhKBlnw65ZtOWTTxVnLrw1vfPJcfPOzuaxNYM+uQVPtnu6EaalKGmpX
	eEB6zJC0K5ZzJE6ty2mdTfLAZDZbtuGrvxOqiyLQXCBxgDdoj99IfaoahNhVVbqx1FibBiO1AnHFm
	jfI43m13OpnC80h4/cZYJAMZo5X/nDHIEOIUqqqX2CZwluprZpY5CNBF6OEpm4yCWOhapCSHABJKu
	26LJCQWFnMEF6RM116Mt9HNheNqUUo0jgrJLFfiysypDalYH5y3ZbbIkCbVOuc7zos/eUhCIj5DTO
	MAuHaXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApyK-0000000DnIW-1JUO;
	Mon, 20 Oct 2025 13:30:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApyH-0000000DnHh-3Eq5
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 13:30:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApyG-0006Xt-1h; Mon, 20 Oct 2025 15:30:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApyF-004Yaz-2j;
	Mon, 20 Oct 2025 15:30:43 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApyF-0000000ABYF-3F3Z;
	Mon, 20 Oct 2025 15:30:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: jre@pengutronix.de
In-Reply-To: <20251010054939.3067504-1-a.fatoum@barebox.org>
References: <20251010054939.3067504-1-a.fatoum@barebox.org>
Message-Id: <176096704376.2427672.12736056348766814563.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 15:30:43 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_063045_817837_A402FEA3 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] FIT: compare key name hint with streq_ptr for clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 10 Oct 2025 07:49:33 +0200, Ahmad Fatoum wrote:
> When given a key name hint, we first attempt verification using the key
> it describes and fall through to verifying with all other keys.
> 
> The code implementing this is not necessarily intuitive and strcmp()
> makes it harder to understand.
> 
> As we check for NULL pointer anyway, let's use streq_ptr, which returns
> true instead of 0 on equality.
> 
> [...]

Applied, thanks!

[1/1] FIT: compare key name hint with streq_ptr for clarity
      https://git.pengutronix.de/cgit/barebox/commit/?id=3138d4988d33 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



