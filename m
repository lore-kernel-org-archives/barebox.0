Delivery-date: Mon, 01 Dec 2025 10:57:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0en-006mDt-2H
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:57:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0en-0002y9-6n
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:57:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VaLrH3iEBNesEKrVEUCHb0GULwc96/LgJv6h7Epu8UU=; b=yJK2hXWMhwbbDp5d1beHom4781
	wPrw27aSLGOGD5OpJhqzBLV06eib5stejwEI5lZiEwTRXhibwBQBtN5IlzG3kaA6CSJIVLWOg3pmr
	1KdY5T159d/kmkt12kMSPDu2vK+ejMqau1pbmQ2tmt3oroxMK93OEdqsIugqrIop/WSrlJtBvE3E8
	99P6SevAtOx/3pSvf7I+Wdbs21elSt/OWZelIWJ92mjKQ6hqox3SczR+sLnoJnkjblmVlG+0zrsW1
	kQLEDxz2O8JiKdBdhgq2s4MxkJ34Ng4jRJNKqasIZf2FlrYlZZlj5vjAoVVVAxupwaOipOl0KuQzF
	JSknrweA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0eS-00000003FtR-17lB;
	Mon, 01 Dec 2025 09:57:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0eP-00000003FsL-3gUU
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:56:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-0002kZ-BX; Mon, 01 Dec 2025 10:56:48 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-003QDR-0U;
	Mon, 01 Dec 2025 10:56:48 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0eG-00000000dBI-0MPT;
	Mon, 01 Dec 2025 10:56:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128104258.1748758-1-a.fatoum@pengutronix.de>
References: <20251128104258.1748758-1-a.fatoum@pengutronix.de>
Message-Id: <176458300808.150585.12114505184577510660.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 10:56:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_015657_921231_C8F8AC60 
X-CRM114-Status: UNSURE (   7.48  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: setjmp: avoid conflict with noinline macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 11:42:57 +0100, Ahmad Fatoum wrote:
> We define noinline as a macro in <linux/compiler_types.h>, which we
> don't yet include here, but might in future with the Kbuild update.
> 
> Prepare for that by using the double underscore version instead, which
> won't conflict.
> 
> 
> [...]

Applied, thanks!

[1/1] sandbox: setjmp: avoid conflict with noinline macro
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a15cc630f36 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



