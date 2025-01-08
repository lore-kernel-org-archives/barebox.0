Delivery-date: Wed, 08 Jan 2025 15:38:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXC9-000m7K-0h
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:38:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXC9-0001c0-7F
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:38:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bAglIJW8gQbT9F2rpCxUp+uylWlioND1+8kBkbyUlAo=; b=vG8647jaNi4Vo63pX3higuk+Qw
	y/RwZWbTfyZLHv6G9UzzggUuwwnqKfX28YTT3ocAuQOQIKd3F8iXNbMizi34A1Lji6mP0iG2/niTS
	Q4OkKbXWoUYdeYWghnTd4rJU/7u9bCY+nVJ1BMizPZH2sUwTqbNhxL6w1aH+AJ0u4Vk4mxQg6y/+K
	7Xfozf3hjOQLYLgI9EUp6WEeWDRVZbX872fLESaBWcZKRfMhpIxxPBV721JlUisRNJpbz9oLj5zL3
	diVG+DhYqnE449B1+9R4PK6wUJ+BmgxVNjk/Gmya0+bjp/UZ9d93GRiVVsg4rOLvziov85Pz1Q4Hp
	oPYWwA7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXBj-00000008oiM-3zK5;
	Wed, 08 Jan 2025 14:37:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVX72-00000008nua-2spF
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:32:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX71-0000R4-EB; Wed, 08 Jan 2025 15:32:47 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX70-007XLQ-1Z;
	Wed, 08 Jan 2025 15:32:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVX71-000Jb5-0c;
	Wed, 08 Jan 2025 15:32:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107122426.3713264-1-a.fatoum@pengutronix.de>
References: <20250107122426.3713264-1-a.fatoum@pengutronix.de>
Message-Id: <173634676718.75312.6743019876161645064.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:32:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_063248_725661_B30DA0D5 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] kbuild: fix clangd warning with GCC
 compile_commands.json
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 13:24:26 +0100, Ahmad Fatoum wrote:
> If barebox is configured to pass -ftrivial-auto-var-init=zero as
> argument to GCC, the compile_commands.json will list it prompting clang
> to complain:
> 
>   '-ftrivial-auto-var-init=zero' hasn't been enabled; enable it at your own
>   peril for benchmarking purpose only with
>   '-enable-trivial-auto-var-init-zero-knowing-it-will-be-removed-from-clang'
> 
> [...]

Applied, thanks!

[1/1] kbuild: fix clangd warning with GCC compile_commands.json
      https://git.pengutronix.de/cgit/barebox/commit/?id=2c151ad3fb19 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



