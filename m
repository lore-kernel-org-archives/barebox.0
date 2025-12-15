Delivery-date: Mon, 15 Dec 2025 08:15:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2nz-00Bemj-0v
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:15:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV2ny-0000wj-Kv
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:15:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JG2VGuaqc7sCETqQ0MByRm9xIc1adYBdHRrkoK0krWU=; b=FCQ3sGUjcXIcKMw5Rinhw17xu1
	6Pkn/tIKbI5Qmft2CCdyMkxAzdAR8Xcm8WBDL7098bDSrd0IlnlbRDHd1SD4volBGDLx2V7f2/qKY
	ZocLXkcRap5FKTNj1+pLSezTqO+YSm2JkboaJJ9BLyxv55nrzutCoML8AtTxHwe7UQboHy5DWQJKP
	BthJ1Q2selXkwE+P2HHXzvUoHQyB0x0+5NB1VT9ar9IdQqhJS7+ORLBS+4zq8IznI4NbhjWMzFxwE
	Z+CbCDETUT1Sng8q54AceggillSeb7uytchGZNo2BStkw8njbyT5mnBWnqg9QZrFHFax9WFEkhtBI
	wUx3RlNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2nL-00000003Bcn-3ITY;
	Mon, 15 Dec 2025 07:14:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV2nJ-00000003BcQ-2UQT
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:14:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2nH-0000qs-Vm; Mon, 15 Dec 2025 08:14:55 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2nH-005k0w-2a;
	Mon, 15 Dec 2025 08:14:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV2nH-000000010vh-375D;
	Mon, 15 Dec 2025 08:14:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211204217.2586463-1-a.fatoum@pengutronix.de>
References: <20251211204217.2586463-1-a.fatoum@pengutronix.de>
Message-Id: <176578289573.241886.3534907443526385544.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:14:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_231457_660993_C5A726A2 
X-CRM114-Status: UNSURE (   6.98  )
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
Subject: Re: [PATCH] memory: fix dangling if in for_each_reserved_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:42:16 +0100, Ahmad Fatoum wrote:
> This macro will cause issues if followed by an if else statement.
> Invert the condition to fix this.
> 
> 

Applied, thanks!

[1/1] memory: fix dangling if in for_each_reserved_region
      https://git.pengutronix.de/cgit/barebox/commit/?id=53cb008d16e6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



