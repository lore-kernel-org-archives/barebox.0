Delivery-date: Tue, 28 Jan 2025 11:30:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcirQ-005U1M-1L
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 11:30:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcirQ-0004pv-FY
	for lore@pengutronix.de; Tue, 28 Jan 2025 11:30:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=33NtkXO6Kc4lTeMYrUttSrf/RaINiP8o9rkKpr3jrE4=; b=boWDAcmbVIGR1k1SWlp8Qv0PYR
	oabi/06AQJSdF/GmqrgDXJe8Xx5Z41c7JMFCK2G8AKsA/+7DRq9zQFufERhVeoPgriSqDRkpWBfrV
	o06i4/coJnKcxNK6OXi79gkBoDsw6J6NbUs5KGYHKe7M3IZR5lsmX8MwT8+Xyoc7EAYtKyImfmC80
	7TfNCyKNwjB8TvUiT41RAZ5KFZPs/8qadafymd8rURTdQcbDxiflvNhkM7I0yPxZEiQxi8dRV4f/q
	yQTsyhVQjUz2sNECMwJAeEE624d5dUeMPijxrirhFA/rBSnmggc0cLvcZRCc9+eruJcM4TUigRjZi
	HAUXsT5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tciqz-00000004eCS-1gMm;
	Tue, 28 Jan 2025 10:29:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tciqw-00000004eBZ-1TAk
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 10:29:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciqu-0004i1-Tl; Tue, 28 Jan 2025 11:29:52 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciqu-002HK2-2L;
	Tue, 28 Jan 2025 11:29:52 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tciqu-0029g5-28;
	Tue, 28 Jan 2025 11:29:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250123161849.1933987-1-a.fatoum@pengutronix.de>
References: <20250123161849.1933987-1-a.fatoum@pengutronix.de>
Message-Id: <173806019265.513840.5407204028992472056.b4-ty@pengutronix.de>
Date: Tue, 28 Jan 2025 11:29:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_022954_390203_C6739934 
X-CRM114-Status: UNSURE (   7.73  )
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
Subject: Re: [PATCH master] environment: autoprobe environment only when
 CONFIG_INSECURE=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Jan 2025 17:18:49 +0100, Ahmad Fatoum wrote:
> As things are, secure booting systems are expected to disable
> CONFIG_ENV_HANDLING to avoid their behavior changing due to a barebox
> environment loaded at runtime.
> 
> Still, some users may want to keep CONFIG_ENV_HANDLING enabled, but
> activated only selectively. For those users, barebox autoprobing block
> devices for a GPT partition with the matching UUID is undesirable.
> 
> [...]

Applied, thanks!

[1/1] environment: autoprobe environment only when CONFIG_INSECURE=y
      https://git.pengutronix.de/cgit/barebox/commit/?id=20588548ebef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



