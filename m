Delivery-date: Mon, 17 Nov 2025 09:37:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKujP-001uuT-0f
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:37:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKujO-00026C-Ma
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:37:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ltSUwOJ8ZujufI9N69DnbgadtnXxjdY9zVFWCEFa7as=; b=IvJ3S+oi1RpzLrL427KZcax1kD
	otRxFNmtjCKup4IUpbrJQVT+urtlwCLWid9/tRvm5sl+fy7xsRXW19vaO4FP98MIRLGWf5rmmQudE
	hlsc7ThK6bXLwLAV3IEMar6p5munK1Fz7x9B9O8vF8Q9QFJVXa5P7ZKrdC2hD4Cea6LFyf6BWCpel
	2/0vUti2X+dRJYlubdnIut2AogjCvezYCo+gP/Vj+5AxbJ8NDh9xa0BOydQZuOL1YQdM694gVegbj
	pImQcreOxe6KhuQzrv1joxxhBOyGBPVXvtDjpUn0JosaGjkqIXh+wJgDt+QaDhrB44lvqVvX4DbXY
	TQNIlocw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuj1-0000000FhNw-45fY;
	Mon, 17 Nov 2025 08:36:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuiz-0000000FhMv-2HQZ
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:36:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuiy-0001vy-1n; Mon, 17 Nov 2025 09:36:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuix-000sgb-2W;
	Mon, 17 Nov 2025 09:36:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKuiy-00000005QgM-0h36;
	Mon, 17 Nov 2025 09:36:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251113110831.2262580-1-s.hauer@pengutronix.de>
References: <20251113110831.2262580-1-s.hauer@pengutronix.de>
Message-Id: <176336859571.1294149.3897509325693404624.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 09:36:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003637_586015_E574C302 
X-CRM114-Status: UNSURE (   7.44  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] device: use free_const to free device/bobject
 name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Nov 2025 12:08:31 +0100, Sascha Hauer wrote:
> A device name (and thus a bobject name) may be statically allocated. Use
> free_const() to handle this gracefully.
> 
> bobject_set_name() called from dev_set_name() also assumes that
> dev->name is allocated and frees the existing name. Use free_const()
> here as well.
> 
> [...]

Applied, thanks!

[1/1] device: use free_const to free device/bobject name
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c6f7301c4f3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



