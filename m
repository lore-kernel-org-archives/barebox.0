Delivery-date: Fri, 10 Jan 2025 09:43:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAcD-000IpK-2T
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 09:43:38 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWAcE-0004is-0x
	for lore@pengutronix.de; Fri, 10 Jan 2025 09:43:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3U6rD1IeS6JFhxABBU7rT6OdBjX0y3Sx7ChZi44Qxhc=; b=Nh+J5s7rbZlf88vkPJmuDTo8ca
	HxaKg/vDcdRwfUDXZ+Bfk0FkmAghs8ocGw4lIyZtAKQQbV3hIRYwjZxdTPDoBO0xcnu1swgNxySAw
	onV2oT6B8sg3gN1jfc0qyVD6MlDv6whAHNEcPySx2lxPE7e15iWC71Ect5mNhyUXOUIOqxD80wtUN
	1PZl8Ch3qwWCMVLAzFLT0bTsxOOfijQp1K+/6uWlJ6AFam9vAUmrEVxirtxbHpE9Oa0fQSU8TD3PF
	ZOBAu5kwqyDaCch+RSH6rrJB7rTVISpbLTwLIISQINafA7SzernuDeTUVJmcatRpqWFpnaZVI3P8X
	9+C/WgXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAbq-0000000EaRC-0FFI;
	Fri, 10 Jan 2025 08:43:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWAbn-0000000EaQg-3DAx
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 08:43:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAbm-0004UQ-Fu; Fri, 10 Jan 2025 09:43:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAbm-00082d-10;
	Fri, 10 Jan 2025 09:43:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tWAbm-001WM7-0n;
	Fri, 10 Jan 2025 09:43:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250108144506.79248-1-s.hauer@pengutronix.de>
References: <20250108144506.79248-1-s.hauer@pengutronix.de>
Message-Id: <173649859024.362684.15520877911351955160.b4-ty@pengutronix.de>
Date: Fri, 10 Jan 2025 09:43:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_004311_806641_4CF15778 
X-CRM114-Status: UNSURE (   7.55  )
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
Subject: Re: [PATCH] ARM: enable CONFIG_USE_COMPRESSED_DTB by default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 15:45:06 +0100, Sascha Hauer wrote:
> Boards have to select ARM_USE_COMPRESSED_DTB in order to use compressed
> dtb files. This is easily forgotten because some other enabled board
> likely has it selected already and breakage only occurs when all other
> boards are disabled. Avoid this breakage by enabling compressed dtbs by
> default.
> 
> 
> [...]

Applied, thanks!

[1/1] ARM: enable CONFIG_USE_COMPRESSED_DTB by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf28a646882c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



