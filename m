Delivery-date: Wed, 13 Aug 2025 08:02:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4Ys-00057Z-0C
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 08:02:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um4Yq-00015A-TY
	for lore@pengutronix.de; Wed, 13 Aug 2025 08:02:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VT4xhi7h7xVeiRwY4eJZgEYRp3O7sS1TK9rdC6qOkZ0=; b=3kNobNgcbpDiKja2gv7Qrid8KD
	h50FGkzA6ZcCIglBm+cJufDR4puGU2PFEIE3ubx9uaUY8/r0rx/MMjVELNzXKmR/2955qEhSZ3OT3
	54yArD8x0/E331pScxg/vEgmwlBvsP59hpbRxsHYBXywxcEoh2nuaBZOLxzhlNranPlrKEylUnQ8p
	keZqxk/yaOGjGuON51unORKKRz4T5u+ELT86Q1aUwxxk5c/FKfYj/aAK45GBVDzCRAizWoN9lleBc
	2faSfRpPtSUoO5DP1W/v4F9hLCtdjVAmhkVnC/kfiaQjor6hTnhYQaLzJLYn1MagjR8/pCjNIzQ8u
	hCilxYbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4YO-0000000CiwD-4364;
	Wed, 13 Aug 2025 06:01:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um4Mm-0000000Ch5J-0MkP
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 05:49:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4Mk-0007eh-Oz; Wed, 13 Aug 2025 07:49:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4Mk-0002dh-1s;
	Wed, 13 Aug 2025 07:49:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1um4Mk-00GXO1-1e;
	Wed, 13 Aug 2025 07:49:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250806131612.2823451-1-a.fatoum@barebox.org>
References: <20250806131612.2823451-1-a.fatoum@barebox.org>
Message-Id: <175506417850.3941191.18327760520215897053.b4-ty@pengutronix.de>
Date: Wed, 13 Aug 2025 07:49:38 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_224940_141892_84E510CB 
X-CRM114-Status: UNSURE (   5.06  )
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
Subject: Re: [PATCH] hush: implement PROMPT_COMMAND
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Aug 2025 15:16:12 +0200, Ahmad Fatoum wrote:
> This allows dynamically updating the prompt to reflect new contextual or
> global information (e.g. which security mode barebox is in).
> 
> 

Applied, thanks!

[1/1] hush: implement PROMPT_COMMAND
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1f280b84d22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



