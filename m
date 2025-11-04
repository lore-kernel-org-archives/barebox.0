Delivery-date: Tue, 04 Nov 2025 09:34:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGCV0-00F9oG-2L
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 09:34:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGCV0-0006UV-7A
	for lore@pengutronix.de; Tue, 04 Nov 2025 09:34:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XqNUdK3MCheFVPyutBrgP76xFEgfYPYpAb8ShIF+S9A=; b=YgqYvtDYSFiIA5HGpin3u22O11
	6eBIyDrEb2IyNYBAKXrM4P1eAQ05j3Fg89Gah8w7lg0OofjNIrypKjWgaQum3IUZHT0JGi9Q3ndvq
	w8GpQT5vF5FSkIGpc9eu6iq8SwGhbUCgKvr5SmT3e5/+WvSfGtMbqLxQvClrb8/1wNAJIvIrth0Th
	54KgOesYiXuwyDCe05eO76XytX/PFXQXEHNWqFagitey7KNcAkV1ajfB5emw+gJqQlrWa4TMZm6zZ
	EXRf+01F7x5kyAXw9lpssOco4wGA+51b/d8aDinqh/RFEPwi2csPm92ULhn5CdFCGqcAMYbBG7s2t
	Wx+kmsNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCUZ-0000000BQyt-2wgz;
	Tue, 04 Nov 2025 08:34:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGCUY-0000000BQyP-035A
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 08:34:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCUW-0006Iy-DX; Tue, 04 Nov 2025 09:34:12 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCUW-006ztL-0i;
	Tue, 04 Nov 2025 09:34:12 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vGCUW-00000009GzC-2YKp;
	Tue, 04 Nov 2025 09:34:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
In-Reply-To: <20251103111624.1848136-1-a.fatoum@pengutronix.de>
References: <20251103111624.1848136-1-a.fatoum@pengutronix.de>
Message-Id: <176224525216.2210227.12703093461803019037.b4-ty@pengutronix.de>
Date: Tue, 04 Nov 2025 09:34:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_003414_052695_DAA51BB4 
X-CRM114-Status: GOOD (  11.46  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] state: guard against empty variable set in DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 03 Nov 2025 12:16:23 +0100, Ahmad Fatoum wrote:
> We always initialize state->variables, but there are two places in the
> code that assume there is at least one entry already.
> 
> Change them to use list_first_entry_or_null/list_last_entry_or_null as
> appropriate to catch this issue gracefully.
> 
> This should have only affected state nodes without children, which is
> not a useful device tree description, but nevertheless we should handle
> that somehow instead of reading uninitialized values that may trigger
> a panic or other misbehavior.
> 
> [...]

Applied, thanks!

[1/1] state: guard against empty variable set in DT
      https://git.pengutronix.de/cgit/barebox/commit/?id=f1b549a97e50 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



