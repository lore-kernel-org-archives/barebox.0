Delivery-date: Wed, 04 Mar 2026 08:35:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgl8-007u6v-0Q
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:35:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgl8-0003g2-Dy
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:35:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o4zbstaBq8zuBZPXfBiTdiWzpXtuLZKqzXan4u/LZLU=; b=d+l1+h77bT3R8y/cl3OUIlv19f
	ae/iqzeh+agzlFAlP/hBDAXKhQiRxC3l+OaJSe4/lUSAAQLkrwNas72QQBBdqFDlP+iRZZt5AZJoc
	FTM72QSN97PaPUPwoq9YeSEuKkM5gtSnZmDu3FSHcW9J4ny5idZc29Jv3JGEDJllLKp8kFgRRFZjY
	yAQZjenOKcr4DE7M5kmND6olKnfkoJWPdZjn2TA8E4tQYXndc9vmQw5v4/rqtmNYFvVgiDb2CgKzi
	viG6YAf2uuOiLH4At2qk+ltDmdHE52Fhd22pmAmYQ/brca+0cL2L8bOTrou830buX3Ij7rWEMIUeN
	qQoViAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgkU-0000000GbSw-205I;
	Wed, 04 Mar 2026 07:34:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgkR-0000000GbSL-2gpC
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:34:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgkN-0003UW-Sj; Wed, 04 Mar 2026 08:34:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgkM-003fxX-0l;
	Wed, 04 Mar 2026 08:34:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgkN-0000000GKse-2Crt;
	Wed, 04 Mar 2026 08:34:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260302135258.197132-1-a.fatoum@barebox.org>
References: <20260302135258.197132-1-a.fatoum@barebox.org>
Message-Id: <177260965952.3893344.7898727620872801433.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:34:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_233423_687775_145E3098 
X-CRM114-Status: UNSURE (   6.18  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] treewide: fix -Wformat-security warnings
 for run_command()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Mar 2026 14:52:32 +0100, Ahmad Fatoum wrote:
> run_command() is declared __printf(1, 2), so passing a non-literal
> format string triggers -Wformat-security with clang. Use "%s" as the
> format string at all call sites that forward a dynamic string.
> 
> 

Applied, thanks!

[1/3] treewide: fix -Wformat-security warnings for run_command()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6e2a02f918f (link may not be stable)
[2/3] jwt: fix buffer overflow and double-free in jwt_part_parse
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca9205326237 (link may not be stable)
[3/3] of: fdt: fix heap-buffer-overflow in fdt_machine_is_compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef2e9ab5611c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



