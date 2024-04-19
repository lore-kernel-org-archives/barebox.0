Delivery-date: Fri, 19 Apr 2024 08:25:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhgt-0075JW-14
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:25:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhgs-0000lD-QF
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:25:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MHCjpIe49o3R+276t7JxLO5rb77U0MiNe+xGPWW0pR4=; b=n4ocfK3sjOYFDSn+C+NuCeByis
	ExKqV/qfjft8eW6tO7M424ffuybORD6urhZFqeLdC6ii4M6uLInn4NgPiMAhGAoEYwMhF6rfkKOXB
	jhF7nnTNCwdpxg3Af86nc6X1pgieutVhWpZ/NtOoNjuhDRyQYpWMVheMgd7qrdy/jZJmRkRo3wnzV
	WdB2UfhI+0cbN3FoJxus+HAKheoHxXkNze1qJaD2VoFTiljcqfJ3lMxFmDcv3mFyxwZRfdxm8YNmj
	n3rA2RztxdzSzy0jmd1MBim1eIEKVdFa75WBjcZ8kcPokEDGMOw27SQDXWprQrNbb1JbJLzr8CGoN
	R1Y5T+Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhgS-00000004biB-3OVg;
	Fri, 19 Apr 2024 06:25:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhgJ-00000004bfc-3J1k
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:25:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgH-0000Al-0L; Fri, 19 Apr 2024 08:25:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgG-00D6jF-KD; Fri, 19 Apr 2024 08:25:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgG-003l44-1o;
	Fri, 19 Apr 2024 08:25:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240417061936.3104764-1-s.hauer@pengutronix.de>
References: <20240417061936.3104764-1-s.hauer@pengutronix.de>
Message-Id: <171350790455.895881.10147002225451602671.b4-ty@pengutronix.de>
Date: Fri, 19 Apr 2024 08:25:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_232507_872891_B6D2B01C 
X-CRM114-Status: UNSURE (   6.68  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] file-list: remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Apr 2024 08:19:36 +0200, Sascha Hauer wrote:
> struct file_list::num_entries is only ever used to check if a file list
> is empty. Do this check with list_empty() instead and remove the unused
> member.
> 
> 

Applied, thanks!

[1/1] file-list: remove unused variable
      https://git.pengutronix.de/cgit/barebox/commit/?id=684dc87ce140 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



