Delivery-date: Mon, 15 Dec 2025 10:04:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4V0-00BgZ8-0J
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:04:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4Uz-0005no-J6
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:04:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0I7RoKvgcbMhgcsD2miuRYWGxie4M/t+2CKVyjJlAhM=; b=Jey3amzjqqGkD5N9sx+ojXhs3E
	fMgfLSbwZcdfbp5bbYtNR2+h2S7KAiq8wu0feyRZ1fbUoeIDDkyQE9688trBoHGp0A1u28Fhds0s1
	1SxlnwRWdK9IMO64fWXg7YWYOJbZFf+ulKwxTAhg+n+vRMEEtwCv5GmEzSKOTYZQk6L1oCqElh12s
	ArDGGtx1ffciXlKXxouqWx+l2tV3ojLMHNxZzK1cdnOnBvDZPICaO0gGqFkHbRoHu/HPYpdo+BPt1
	ECeFWOQFouoCitLq8lzwSMGjjaRhQZeF+fB7603YS8AUhHtyRz6MTrxQJ7ty2cUneBYvDjQfUZ750
	ZmOJosfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4UX-00000003KT2-2NrT;
	Mon, 15 Dec 2025 09:03:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4UU-00000003KRe-1VZP
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:03:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-0005d9-JB; Mon, 15 Dec 2025 10:03:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-005kdb-1F;
	Mon, 15 Dec 2025 10:03:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-000000017Cd-1MJm;
	Mon, 15 Dec 2025 10:03:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251213104210.3157504-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
 <20251213104210.3157504-1-a.fatoum@pengutronix.de>
Message-Id: <176578941632.265962.14923173664584637629.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:03:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_010338_479367_66C661A0 
X-CRM114-Status: UNSURE (   4.87  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH] fixup! efi: payload: restructure Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 13 Dec 2025 11:42:09 +0100, Ahmad Fatoum wrote:
> efi: payload: reinstate lost EFI_STUB option
> 
> This one was lost while moving stuff across files.
> 
> 

Applied, thanks!

[1/1] fixup! efi: payload: restructure Kconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=04420713a696 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



