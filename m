Delivery-date: Fri, 10 Jan 2025 09:37:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAVu-000IdI-0E
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:37:06 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAVu-0003pd-AD
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:37:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMod69LYFtYUE1eWdsj4fULRTorgjefS0YTjB3PG2m8=; b=KpKcDlcy54bqrQ8STDpt3HfUTm
	bPcpgHI7YEFwK1KzVeiLVtywivac+IixJ+McGFKbKM7ELH5ZIR18TbH+Akjp7PhjAYo12vOKKixJD
	ZAKmpJntOcVxzA+rl67OA/4nI+i8WwH8/waGx/bmh6LBtX6EnkTPHIyd+GfOrVgPI9IiBmDphqf5p
	zsoPeHPZZ7ZunjkSSPyMgNLOlARZUFCy+qcwTOI0D+qdARD9yVhZn8QJzUkPl4iKL65VSUbtjzQcS
	x6/mnh7OirbM1UpFNYzCxWPZAGwFtgl8+6DhAQH6gMtcPthSEqsWlo1XFxUsW5i/m4DC2AvcHkcp/
	w35PBsEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAVX-0000000EYgK-067V;
	Fri, 10 Jan 2025 08:36:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAT1-0000000EY0i-41fG
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:34:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAT0-0003LL-G6; Fri, 10 Jan 2025 09:34:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWASz-0007xD-2R;
	Fri, 10 Jan 2025 09:34:05 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWASz-001VXm-2E;
	Fri, 10 Jan 2025 09:34:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>
In-Reply-To: <20250109112437.3174977-1-a.fatoum@pengutronix.de>
References: <20250109112437.3174977-1-a.fatoum@pengutronix.de>
Message-Id: <173649804568.359555.3130327546138543289.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:34:05 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_003408_002992_20E76A86 
X-CRM114-Status: UNSURE (   8.47  )
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
Subject: Re: [RFT PATCH master 1/2] partitions: dos: allocate NT signature
 param when recreating partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 09 Jan 2025 12:24:36 +0100, Ahmad Fatoum wrote:
> We used to only allocate the device parameter when parsing a MBR from
> disk, but not when creating the partition dynamically at runtime.
> 
> This didn't cause acute problems until we started freeing the parameter
> again and triggering a NULL pointer dereference when removing dynamically
> created partitions.
> 
> [...]

Applied, thanks!

[1/2] partitions: dos: allocate NT signature param when recreating partition
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7295a3df446 (link may not be stable)
[2/2] partitions: efi: allocate disk GUID param when recreating partition
      https://git.pengutronix.de/cgit/barebox/commit/?id=e11779a6a5af (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



