Delivery-date: Thu, 07 May 2026 12:40:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9V-001vxO-37
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9R-0001kL-K8
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h59PszgfOIF1j/wZ4SVklx8ZbVhpEYoTOktfWTsjfHg=; b=DJog4CCsE8QBe5cStSoySz0P79
	EDgiSKKqSX1DiKnp9pcS/rvGzV3UeCvNl+CopbhXNuMgXEd32R6dWvvGc2PSYlgDRSUtwaeXrVvtd
	nrhiaR0JNLhbesSfzSH8bsVY0kE4uqqiv58iOmgsJo9FhsoeQ18tPVBmPlftOo00LhWvrAdJvP+GX
	CziQIy5QC+S2wyXF8InbxiOa/QGokgK137+VZTnh5kTtU+Kgyrszz7q+fq32E4eLcJyTSKRoEik+U
	oI7AP5UiI1dIZRxKaHV6WtV8tjuo+rQkntn8H3Cts5sivzxnAy6WGuISy46HkC7etWCo6h5QaM2AS
	VbWFNklQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7w-00000003VjR-2s4c;
	Thu, 07 May 2026 10:38:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7u-00000003Vhr-0oE5
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=h59PszgfOIF1j/wZ4SVklx8ZbVhpEYoTOktfWTsjfHg=; b=bdwp8j1y3PXUJKY+WIaNrIqbtd
	sVQ4ByvLMh1qvBM565mjsMqDdZd6tJUhGyElFxMbWOuLUpZKDUG4SELNB+bhCvpWHOEK4Zw14RsJ4
	q0zbvoPSq/mF6yoYo7+ZXlX2S+emvSMFWxKhS0JAJNUwD3rH+3FFM3NXOumnXqTbWyuYEC8mXAgZO
	bUP+qL/i269ASUWsZcPdoQHCY49RbCkXhROhrJMBfr+vq7kv9NWuVYUqbybGmbUs+rLv6jn+02k2S
	+mRZ21E/twtOake4Ch4R3gN4aB+bq5sf1CLrBTuBqLuPZoeqJvst1QXZj7S6uR3rXXaz/Tn4dpWx8
	R0pvUzZg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7o-00000003ENx-1guh
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000T9-JC; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD3-2A;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000000BjIN-01qH;
	Thu, 07 May 2026 12:38:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260502113624.1832173-1-a.fatoum@barebox.org>
References: <20260502113624.1832173-1-a.fatoum@barebox.org>
Message-Id: <177815031200.2795644.16548579370980678902.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113837_352999_406BC26F 
X-CRM114-Status: UNSURE (   4.54  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: 2048: use 16-color ANSI palette
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 02 May 2026 13:36:24 +0200, Ahmad Fatoum wrote:
> The 256-color xterm sequences (38;5;n / 48;5;n) require xterm-256color
> terminal support. Switch to standard 16-color ANSI SGR codes, which work
> on any VT100-compatible terminal and can also be displayed fine by the
> barebox framebuffer console.
> 
> 

Applied, thanks!

[1/1] commands: 2048: use 16-color ANSI palette
      https://git.pengutronix.de/cgit/barebox/commit/?id=447d7bf2590d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



