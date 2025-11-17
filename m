Delivery-date: Mon, 17 Nov 2025 12:46:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxgG-001xo0-0r
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:46:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxgF-0001Bk-Oo
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:46:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fqJvACRQh7VfR1F1PMXl95m7dQMrBRQLvXzG3/gHwz0=; b=LfpQNPhz8v4oQSIZLmUPhjWvrn
	ebZJ3OCFgYlwe6+87PAK/CIlBrhCgoNV+QbJYBw3SsML/G+FL1cZ2dfyWeBMeLUI3yDgTZkSZ/iYH
	tQtyD5zGDhzBOdQEr8i0aJ9b8m0pKltX5nzM+1siJqSk/9fu3VkvIipPznJi3b9t4rQdBA9miq70f
	0/2hIIPpPXeTxlxazBMtbNsCtG+EVnJYI5daaANUMKO+khz5Zn4RIs7n9Gvz1sSck25c7LqD6DaBP
	eSBU0r1KEVqTRFpjF9rh6T3zq7PfCLGQwj60l7JDU2TNPTBAB4vx2KSxBWv4a/+Y1snKNfsIGu8Ch
	av6hPmKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxft-0000000G047-1fdo;
	Mon, 17 Nov 2025 11:45:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxfr-0000000G03f-21QA
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:45:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxfp-00016Q-W4; Mon, 17 Nov 2025 12:45:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxfp-000u87-2c;
	Mon, 17 Nov 2025 12:45:33 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKxfq-00000005ZtV-0oq9;
	Mon, 17 Nov 2025 12:45:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110133346.1552720-1-a.fatoum@pengutronix.de>
References: <20251110133346.1552720-1-a.fatoum@pengutronix.de>
Message-Id: <176337993374.1329566.9988062796298459827.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 12:45:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_034535_524646_B50D179E 
X-CRM114-Status: UNSURE (   7.81  )
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
Subject: Re: [PATCH] bootm: fix boot override inheritance
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 14:33:45 +0100, Ahmad Fatoum wrote:
> Nested boot calls were incorrectly handled by the override mechanism,
> although they are a common occurrence e.g. when using bootchooser:
> 
>  - boot command enumerates entries including bootchooser and boots the
>    "bootchooser" entry
>  - bootchooser boot enumerates entries for its targets and boots
>    one of these entries
> 
> [...]

Applied, thanks!

[1/1] bootm: fix boot override inheritance
      https://git.pengutronix.de/cgit/barebox/commit/?id=d2dae53f0dc5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



