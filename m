Delivery-date: Fri, 13 Feb 2026 15:08:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqtqT-001H2P-2m
	for lore@lore.pengutronix.de;
	Fri, 13 Feb 2026 15:08:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqtqT-0001Mo-KI
	for lore@pengutronix.de; Fri, 13 Feb 2026 15:08:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Aej6NPUFbYMN2JVojamJ0OHJCSKNjTXpNnmWioZ6JWw=; b=U6NPxXsSybVZMUjDoCMjLqTQHw
	IYP0HTjlxdVAfThjujeJD3UD1SOZwxQZPlvXttTPojohBqtn00ZuPti6zQWleY+vsAYvuUjkbRtLF
	2CVgc9r9RlBkAW1UH2bW67S/a6An1tbruaPy2SOkJ8NFtk+RIshRkbSx/Gzs6rPGvpXgw9rL22LXp
	xcnGuCYXU1e0mhepNeqXM8GWIEoN6iKwKotlqol3yuW+f4yNTZOAzPxQjPwAqHB1ggsNFXzRRG3dK
	upg+Mrm6tfPuWKuXfBr/zukLh2IA47n/gtot3kBG6LOYo5pJiVYaRMKtFGLts+3PknHBRlv5mwhkW
	uo8AM2IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtpy-00000003WFf-1JRc;
	Fri, 13 Feb 2026 14:08:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqtpv-00000003WF6-0hvP
	for barebox@lists.infradead.org;
	Fri, 13 Feb 2026 14:08:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpq-00019r-F4; Fri, 13 Feb 2026 15:07:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpo-000adN-2v;
	Fri, 13 Feb 2026 15:07:54 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vqtpq-0000000FOgG-0nkL;
	Fri, 13 Feb 2026 15:07:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260213072718.1893389-1-a.fatoum@pengutronix.de>
References: <20260213072718.1893389-1-a.fatoum@pengutronix.de>
Message-Id: <177099167418.3669753.8636204594261725553.b4-ty@pengutronix.de>
Date: Fri, 13 Feb 2026 15:07:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260213_060759_238745_0DEAEC57 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! bootm: give bootm_load_ functions an end
 address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Feb 2026 08:27:18 +0100, Ahmad Fatoum wrote:
> booti: fix use of uninitialized end variable
> 
> If a fixed OS load address is set, get_kernel_address() will not set end
> leading to an uninitialized end value to be passed to bootm_load_os().
> 
> Fix this by determining the gap the fixed OS load address is located in
> and passing that along instead.
> 
> [...]

Applied, thanks!

[1/1] fixup! bootm: give bootm_load_ functions an end address
      https://git.pengutronix.de/cgit/barebox/commit/?id=5a0edfcad3a0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



