Delivery-date: Wed, 28 May 2025 22:11:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKN7G-001Iw7-1e
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 22:11:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKN7F-0000Yz-Vh
	for lore@pengutronix.de; Wed, 28 May 2025 22:11:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y64CuJ21P/pGVwVcZjkWCYwj3EbbqYzfB2xQP4pVPsE=; b=XVn8ZfyjOMQAQ/0oCiq3eWu3F3
	RrGqYD5u8P4gV+KALgdWlFjFdG5bYKuwxHR1TQICd282dGOxsaVvfe9+KZ5MZ7LUTBJ4zDoJkdDTt
	AnNoRJIdynFVWSvrol/yBA6hqTWh0GbM3qcNorRsgSfYaaIM4HV0H0q7o1KeENhkOY8NhNkYu8VBe
	Ks2PEK/k4GXpcJsLWnoTIHWnPrndaxiwQzHbf/fMgjLEuwhOin2hKEg6DSvZIWoVKjz3XC1md/3NB
	zrE1lAWk4c6pDQE3dPN6oIJSBCa0851piXWl9Wf60EWnX3Lm0wLv4EYq9GxK9ln12Jt8GjzV0qQ+K
	+lklWMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKN6a-0000000E3CO-3JjG;
	Wed, 28 May 2025 20:10:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKN6W-0000000E3Bi-3Imc
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 20:10:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKN6T-0008HY-5P; Wed, 28 May 2025 22:10:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKN6S-000e2X-38;
	Wed, 28 May 2025 22:10:20 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKN6S-00GWLP-2w;
	Wed, 28 May 2025 22:10:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250528113050.827935-1-a.fatoum@barebox.org>
References: <20250528113050.827935-1-a.fatoum@barebox.org>
Message-Id: <174846302090.3937553.13526862967830100532.b4-ty@pengutronix.de>
Date: Wed, 28 May 2025 22:10:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_131024_826398_41135B36 
X-CRM114-Status: UNSURE (   5.93  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] fixup! arch: sync READ_ONCE/WRITE_ONCE with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 May 2025 13:30:49 +0200, Ahmad Fatoum wrote:
> The __no_kasan_or_inline attribute is already defined in <linux/compiler.h>.
> Drop it from the header here and do the replacement in its own commit.
> 
> 

Applied, thanks!

[1/2] fixup! arch: sync READ_ONCE/WRITE_ONCE with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=c6b626c4eed6 (link may not be stable)
[2/2] compiler: check for __SANITIZE_ADDRESS__ instead of CONFIG_KASAN
      https://git.pengutronix.de/cgit/barebox/commit/?id=0d321ab1a307 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



