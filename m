Delivery-date: Mon, 15 Dec 2025 09:34:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV427-00Bg7d-0p
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 09:34:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV426-0000sL-NM
	for lore@pengutronix.de; Mon, 15 Dec 2025 09:34:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jABsIfqT0p5XxhM5db19WWc9Jal6N+A01J9Hfo2L8dc=; b=bwoDjW0iBptTFE6/t9hnJvaQng
	FXVAwUNWdOkBmpa/19z2EMQrjKHbn8jLjB8bkGe2pdd2syQeQt4eb5NnlVESHJB0P98Qaq80akJqd
	d2cJpFvLAHy/zPJAsewxdS933C85DOtviJcFWv0f6MosuqM9egS9ok/WAL3d8dFcgiN5ZFLLwWsB6
	Qse5ZJjAAsxDkeW/q7LWjnEBFS2DJnXoH21OkfqG/ezGBXt1KJUnSYhSW5+wB9or3CS4Wq+cDSNEP
	MJe0+AIVAyJrtAzmm0itvi5U/1iahSPAuN3WNvlqU0IJPMoZiBVSe+YFDXoHaBzkbUvaJYkvoiWxl
	STeT1qTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV41i-00000003H8Q-1PHs;
	Mon, 15 Dec 2025 08:33:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV41f-00000003H81-1Nx8
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 08:33:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV41d-0000mr-G8; Mon, 15 Dec 2025 09:33:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV41d-005kVi-10;
	Mon, 15 Dec 2025 09:33:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV41d-0000000156u-14Uc;
	Mon, 15 Dec 2025 09:33:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251212162222.1937214-1-a.fatoum@pengutronix.de>
References: <20251212162222.1937214-1-a.fatoum@pengutronix.de>
Message-Id: <176578762925.257857.15830948150283489448.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 09:33:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_003351_374225_85C7A89A 
X-CRM114-Status: UNSURE (   7.98  )
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
Subject: Re: [PATCH v3 0/3] environment: allow board code to suppress
 external env loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Dec 2025 17:22:06 +0100, Ahmad Fatoum wrote:
> It can be useful for board code to deny loading an environment without
> disabling it altogether, e.g. to disable load of the environment when
> entering a recovery mode. Add a function for that.
> 
> Ahmad Fatoum (3):
>   globalvar: suppress nvvar_save when no external environment was loaded
>   startup: bump down log message about lack of persistent environment
>   environment: allow board code to suppress external env loading
> 
> [...]

Applied, thanks!

[1/3] globalvar: suppress nvvar_save when no external environment was loaded
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a70c74c9072 (link may not be stable)
[2/3] startup: bump down log message about lack of persistent environment
      https://git.pengutronix.de/cgit/barebox/commit/?id=a44a846a6684 (link may not be stable)
[3/3] environment: allow board code to suppress external env loading
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbaad9fa1bfc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



