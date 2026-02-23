Delivery-date: Mon, 23 Feb 2026 10:50:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSZs-004moS-1J
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:50:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSZs-0004ep-OB
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:50:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EhU4JSv2ubCqo6oURAAq4PFhCctFjAhNbPWk/R58bTM=; b=k+4A6hZ2dQr+LdAT4dLPeGLhB9
	XYjgNrpWcSFpM6d9qokf5wIZ0xDgg0MUuoUHXO7epv9brsUhpteRvaVb/STo1+pPiQjC4rMhE4miG
	bDLSAhfcNCO7XW7/b41XinUq/8QwvesZrdELZV9d8EboSKqIbeRLg+O9Q9hckVpeHFFZj49fj5TB+
	8QcO+b0dXi32cwguzFSxvf7z5V3Jk14/LTaGEYZUs0foWdMXdE0ANDuvy2vU6ohKzbFrdUxmdMlBY
	18yuIgrCA/3wDEt6blEEhEl7xY7MoL+IRS5syM32TewhOFniN8gFCrHkLnXf/HpcmkyM3AMI4lMaq
	9Un+JvmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSZU-0000000HZfj-1b70;
	Mon, 23 Feb 2026 09:49:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSZQ-0000000HZf5-3pga
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:49:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZP-0004Yt-83; Mon, 23 Feb 2026 10:49:39 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZN-002Cq1-2I;
	Mon, 23 Feb 2026 10:49:39 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSZO-00000000pgE-4A7P;
	Mon, 23 Feb 2026 10:49:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Chali Anis <chalianis1@gmail.com>
In-Reply-To: <20260216085011.3555633-1-a.fatoum@pengutronix.de>
References: <20260216085011.3555633-1-a.fatoum@pengutronix.de>
Message-Id: <177184017899.198651.11065561756980926105.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:49:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_014940_992008_4B4FA383 
X-CRM114-Status: UNSURE (   5.42  )
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
Subject: Re: [PATCH] test: add ARMv8 EFI app testing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Feb 2026 09:49:34 +0100, Ahmad Fatoum wrote:
> Add test coverage for barebox running as an EFI application on ARM64
> by having barebox as EFI firmware boot barebox.efi as EFI app via
> QEMU FW_CFG.
> 
> 

Applied, thanks!

[1/1] test: add ARMv8 EFI app testing
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd4f2625f4e1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



