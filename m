Delivery-date: Fri, 10 Jan 2025 09:28:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWANr-000IWr-2B
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:28:48 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWANq-0002LU-OM
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:28:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IYru9UbX/eIB7HU90d8GrasqIzGoS/KZke3BEy15imA=; b=UftgYbWiLZF+ftiBTnNGyloKpE
	i651IwMfaZRFHAC4mLTqXjgGmrjET3zSjNu98MYmKKWUBCwoR4+d5ilDWipei8tuozIZxnTKWkDbt
	r6MJEXcOd9OOJYFsMcfw3z7/wejBPGLHmji2HqJxHrgdhTXwIL3pyLQwW0Ir1IB2biiJvEbvhfdLc
	Kx8kFbva6R9Ib5/gP2+92Hz39oiMRBLMY0VjxLAlDFuKjOsdtz0FtitGdi8T1oVmcoC3b6u2mmRKQ
	uYqVhBGCmzgKmZS4Nr3WRDHthnoQBxwzKro/lKnIWYVCqXFDIwfI0+hNOHiIgAA+/xT5QGy/DNHls
	djCm6k3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWANV-0000000EWUu-1CYa;
	Fri, 10 Jan 2025 08:28:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWANS-0000000EWTo-1mP8
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:28:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWANR-0002Es-8e; Fri, 10 Jan 2025 09:28:21 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWANR-0007w0-0D;
	Fri, 10 Jan 2025 09:28:21 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWANQ-001TIq-3C;
	Fri, 10 Jan 2025 09:28:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250108153216.484573-1-s.hauer@pengutronix.de>
References: <20250108153216.484573-1-s.hauer@pengutronix.de>
Message-Id: <173649770099.350881.14139470937396073444.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:28:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_002822_462307_26F993EB 
X-CRM114-Status: UNSURE (   8.31  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: add am62 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 16:32:16 +0100, Sascha Hauer wrote:
> This adds the glue code necessary for the DWC3 controller on TI AM62x
> SoCs. The code is based on the corresponding Linux driver as of
> Linux-6.13-rc1.
> 
> 

Applied, thanks!

[1/1] usb: dwc3: add am62 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=a3cff6704f83 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



