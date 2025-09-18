Delivery-date: Thu, 18 Sep 2025 16:24:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFYf-004V4N-0M
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:24:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFYe-0000xs-JV
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:24:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r8Lxi74XrP8IRSprIWr2WVUat1/0IBuYfcq03u8wD5c=; b=d+/fr6MbdtFjvpxNTMmz8Rt4Nf
	4vJUDJ1xCv68YAQsPvTrsT1Fa/y5OztCI8WIwqGn3f5u+NLV/KdySaFAUHDXczYorLZcW2UPARpZt
	Gg1HBYFUmvOalxEQdCgYlXowZtW3BWKXNt6RP6GoNzrIBGWrYxy66R961JwPK9yCDgu+XHZMIda4Z
	XXK9Lnxkv7hrKLdB2d6EInbeb4Er5zcn2u91rd7F1Hmy6QO/SJurfoNIji6jrdlzUo1H7to9EyNFk
	L5CPpTBBlll3/m03gl2gn9W7bHNeTyYSd2dst9e1Srub1gyRayC4me8U4dmwHKQSjQWfHZ+i2LIbb
	zeZpghoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFYH-000000007s0-18nF;
	Thu, 18 Sep 2025 14:24:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFYF-000000007qr-01OA
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:24:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYD-0000oc-Iz; Thu, 18 Sep 2025 16:23:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYD-001xEQ-1G;
	Thu, 18 Sep 2025 16:23:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uzFYD-0000000EPQF-1Ne4;
	Thu, 18 Sep 2025 16:23:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250917133624.2993647-1-s.hauer@pengutronix.de>
References: <20250917133624.2993647-1-s.hauer@pengutronix.de>
Message-Id: <175820543732.3434300.7415031019695278362.b4-ty@pengutronix.de>
Date: Thu, 18 Sep 2025 16:23:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_072359_046910_B82F0F9D 
X-CRM114-Status: UNSURE (   7.37  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] hush: fix last_return_code when PROMPT_COMMAND is used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Sep 2025 15:36:24 +0200, Sascha Hauer wrote:
> Wenn PROMPT_COMMAND is used then a "echo $?" shows the result of the
> PROMPT_COMMAND instead of the result of the last command. Fix this by
> restoring the previous value after PROMPT_COMMAND has been executed.
> 
> 

Applied, thanks!

[1/1] hush: fix last_return_code when PROMPT_COMMAND is used
      https://git.pengutronix.de/cgit/barebox/commit/?id=c31d79b1dec1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



