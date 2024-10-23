Delivery-date: Wed, 23 Oct 2024 14:47:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3alY-007slg-0P
	for lore@lore.pengutronix.de;
	Wed, 23 Oct 2024 14:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3alX-00015K-Eg
	for lore@pengutronix.de; Wed, 23 Oct 2024 14:47:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gB0mh7+CLSazO4GwNzqvwyiDZK6FF7/aNcDGjWu/vOA=; b=DLD+dW1SXtP4oRKD/SIyuz34P/
	hGpqrT6lZ5KV4jPsd6trwST9T4s+GW6Vljxtdxg/7Q8QTZ1B8vgGTNVQdoP/wzPcjHbR1l2MoafIR
	g9xHThZRwh8OE0LzIYr0EYKTqIVhKNXjqL+76ddzx5ju+WTAlvnWvGUcNuaWgehsHVm7hR2mEXzhp
	juK/M7q7q5nX9E2F1LkzYVyhmv+hEgGMtVZKjNqSTEA1cTHTsjghGpeBQE9NjQBUK/y05nBdAvRes
	xkOIZDlyLEOHrBxNCL5aLr5kG+UjuZXoQzyqUOCXm75LCmG96s5iRYvdbEKOR/afbw0g7e5nokdwM
	P25cuJ6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3al0-0000000ENYE-24OM;
	Wed, 23 Oct 2024 12:46:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3akx-0000000ENWn-02jZ
	for barebox@lists.infradead.org;
	Wed, 23 Oct 2024 12:46:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akv-0000xW-TB; Wed, 23 Oct 2024 14:46:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akv-0002IA-2I;
	Wed, 23 Oct 2024 14:46:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t3akv-00GIKC-27;
	Wed, 23 Oct 2024 14:46:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Julian Vetter <jvetter@kalrayinc.com>
Cc: Yann Sionneau <ysionneau@kalrayinc.com>, 
 Louis Morhet <lmorhet@kalrayinc.com>
In-Reply-To: <20241023090052.1596583-1-jvetter@kalrayinc.com>
References: <20241023090052.1596583-1-jvetter@kalrayinc.com>
Message-Id: <172968758965.3883661.14402643031575090083.b4-ty@pengutronix.de>
Date: Wed, 23 Oct 2024 14:46:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_054631_093994_BCD61E02 
X-CRM114-Status: UNSURE (   5.86  )
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
Subject: Re: [PATCH v1] kvx: socinfo: Fix mppa ID read from fuses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 23 Oct 2024 11:00:52 +0200, Julian Vetter wrote:
> On kv3-2 the traceability registers order has been fixed. So, the
> reversing of 64 Bit register reads can be skipped on kv3-2.
> 
> 

Applied, thanks!

[1/1] kvx: socinfo: Fix mppa ID read from fuses
      https://git.pengutronix.de/cgit/barebox/commit/?id=b7ddd2fd7903 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



