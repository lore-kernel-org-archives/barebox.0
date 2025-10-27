Delivery-date: Mon, 27 Oct 2025 11:21:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKM1-00CIyI-28
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 11:21:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDKM1-0003pK-4b
	for lore@pengutronix.de; Mon, 27 Oct 2025 11:21:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tEDoMQvQ3LydNVWf/zEfONlkha3aNjAHvdA0pgU4EVM=; b=nxrQghU1uNnqCBXdeZX7EWHMG6
	2x5sM/gtC8zICxuUAlnHBwsRXPDZDPgNoAkeJynjF3bdMcrKQ57tvJKMl09onI5Uy0f2SQDwm5vkn
	9EGrgx/K3a5aR++NVE6JcUenkVnF3nX6UEgXcGRxc1zlrSNPk17RiFI4j9g9+Uu7jnC5K4ZTe1F9W
	Bd2bjlcF4lLsbVhZIquUSdZbVEPssGmn5hPJsscK3kDQ3R6mrEGuA/fxGCZaG3oFSc8c6ZdtUQ1hT
	gb1N0ps+L++fq0ss9P6o6jDW2V2HxSBRISB8KAdHFZD2wB8bapFkqOGV3FcvmslSaudL3pWQ6rXUa
	AQmx83iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKLd-0000000De3y-2X2B;
	Mon, 27 Oct 2025 10:21:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDKLa-0000000De3Z-2f9c
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 10:21:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKLY-0003jz-Gc; Mon, 27 Oct 2025 11:21:04 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKLY-005ghr-13;
	Mon, 27 Oct 2025 11:21:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDKLY-000000013NN-2yyl;
	Mon, 27 Oct 2025 11:21:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251023094812.3438487-1-s.hauer@pengutronix.de>
References: <20251023094812.3438487-1-s.hauer@pengutronix.de>
Message-Id: <176156046426.251260.5641735243007501329.b4-ty@pengutronix.de>
Date: Mon, 27 Oct 2025 11:21:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_032106_682428_F3029BBC 
X-CRM114-Status: UNSURE (   6.63  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] github/ci: build Container on pushes to ci branch only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Oct 2025 11:48:12 +0200, Sascha Hauer wrote:
> Let's rebuild the container only on explicit pushes to the ci branch
> only, rather than also randomly rebuild it once the Containerfile
> changes propagate to the master branch.
> 
> 

Applied, thanks!

[1/1] github/ci: build Container on pushes to ci branch only
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7ff6f58ec9e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



