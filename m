Delivery-date: Tue, 28 Jan 2025 11:09:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciX1-005Tcf-0u
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:09:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tciX1-0001h3-DL
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:09:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fpynnfCZYeuds5tPvXRaxeu9DfvTXKvi0G4TgxrIlNI=; b=IO1CaHW84PQHZr2eQu1rs2DcmY
	e0rXBGbwGfTDFVxgELs1Fq8DcKWdRbwsHK684olaw4vvqdbJM9vV9g49sDwbQlRoDbMEa8hBgGCQ6
	bDr0jDleQBpVQf4Hpu4xj/r0qHy4hhmNYUJZYWUepmZLiwdIB+IJOUzLeVNj3VfMs8FkJUNwOrbyE
	Tvp8jdJqR5eOgWHJLneIRB2234qDdPdp6WXada2z9HhzdUUp54yNAvXvwqWqaJkSkfP2/hBRVAEsc
	tBAStmx1VvYCgRGCBt5RgQpqcRDfXjgXVCJtLx2fmkiacS1gzC6jvNBoEK6j/RfRAYLzdhOreqjzH
	JsbI8v0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciWb-00000004cOZ-3h1y;
	Tue, 28 Jan 2025 10:08:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciWZ-00000004cOH-0FzQ
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:08:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciWX-0001Zi-IP; Tue, 28 Jan 2025 11:08:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciWX-002HH7-1C;
	Tue, 28 Jan 2025 11:08:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciWX-0028Es-0y;
	Tue, 28 Jan 2025 11:08:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250127110252.735402-1-a.fatoum@pengutronix.de>
References: <20250127110252.735402-1-a.fatoum@pengutronix.de>
Message-Id: <173805892929.508315.13104291335537036898.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:08:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_020851_103527_B173796D 
X-CRM114-Status: UNSURE (   8.58  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: boards: colibri-imx6: make BBU setting
 independent of DT alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 27 Jan 2025 12:02:52 +0100, Ahmad Fatoum wrote:
> Different baseboards may shuffle around the eMMC/SD aliases differently
> and thus the barebox update handler registration may not be correct
> across all of them.
> 
> Instead of hardcoding the eMMC device and SD device, let's derive the
> correct index dynamically at runtime using the mapping that the barebox
> bootsource code is already using.
> 
> [...]

Applied, thanks!

[1/1] ARM: boards: colibri-imx6: make BBU setting independent of DT alias
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b5c984e0fb2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



