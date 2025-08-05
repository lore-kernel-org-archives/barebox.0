Delivery-date: Tue, 05 Aug 2025 11:34:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3v-007FT5-0u
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE3u-0003Iv-6r
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqovN/yzczl3D1ELKrY0aG8aSWXqIHKiR+mqddEVXVY=; b=HJNW9B17RSVG3WNxRldiZf1DBO
	ckqd2K2nllII9BLrNbCqDykLh5RFYLgdXc9xFLUATxy/F6+BjU0fL7Etav+GqiJuzjxsCfXfA8YyH
	Bz7Enfkracdymxcf7AK4UVtN7ibdvPKw3qyXNgrNM6ZJX3aNAHfXYY1D9C5NX6NSFyyvY257CAQAK
	baqLR7Nrov02jcsr2G0OFd1etmdyqgk7jlOY3gAZQ9TP5ycPtlXDJD+ZSxzVLSlGFPlJjlfSS2eWA
	pdg+Ir9fOIHUeBaVlUIW7ZeZKtjNWRxDdC4tsClHhhxWzTqzfYAiZcXCpxUb9U2MJyOnj/wFtvYAs
	XnG5Y17w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE39-0000000CMcT-2L1m;
	Tue, 05 Aug 2025 09:33:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDdz-0000000CJR1-1bwZ
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:07:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdx-0008T9-W5; Tue, 05 Aug 2025 11:07:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdx-00C16v-2b;
	Tue, 05 Aug 2025 11:07:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDdx-00EhkP-2Q;
	Tue, 05 Aug 2025 11:07:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250711125349.2405105-1-a.fatoum@pengutronix.de>
References: <20250711125349.2405105-1-a.fatoum@pengutronix.de>
Message-Id: <175438485774.3504720.977622960801911058.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:07:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_020739_425156_4F1ED255 
X-CRM114-Status: UNSURE (   7.26  )
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
Subject: Re: [PATCH] Documentation: gen_commands.py: fix Option list
 warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Jul 2025 14:53:49 +0200, Ahmad Fatoum wrote:
> Building some commands like miitool results in a warning:
> 
>   miitool.rst:25: WARNING: Option list ends without a blank
>   line; unexpected unindent.
> 
> Have the script emit a new line after every command to silence it.
> 
> [...]

Applied, thanks!

[1/1] Documentation: gen_commands.py: fix Option list warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=891fab77277d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



