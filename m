Delivery-date: Mon, 01 Jul 2024 14:49:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGSx-000VQC-1u
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 14:49:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOGSw-0004G5-St
	for lore@pengutronix.de; Mon, 01 Jul 2024 14:49:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4vLUsnkRGp57nSvBCz5p4E+rq4gqLOUHf7B3PXUQc6A=; b=iiEM6TXhT670miCSKXxsh2801p
	KTgbsvS+H5B9jQtwBoAN9oXshk418IPUru6ogTKHQps7VvUq5J7oJPKsJ/4Buy0r19KlFMUliKycT
	kupgABOF5uQrzzHs642XOOtHymLSyPEy7pkBJ42XlFN0I0ri2611IqCxqoVui/jKis6k18DouC7OS
	Nd9ypf7z3+vf0RmkwAj/r1TxYOD+wJGqdZs5UHwGmseji6VZ8HvH6Pvr23zdkrb8+LSk0KWfJHqwR
	XQAuZG4XkhBQqGkmPiz2DKaL4wnp5AkKbY0kzs3595mdaZEOwK/pwJfKfnpDMNKYYZBJPht+cp5Ou
	2ni5foAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGSY-00000003KxB-3DBq;
	Mon, 01 Jul 2024 12:48:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOGSV-00000003KwS-0Z1N
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 12:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGST-0004Cw-Jx; Mon, 01 Jul 2024 14:48:37 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGST-006NKB-10; Mon, 01 Jul 2024 14:48:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOGSS-009owM-36;
	Mon, 01 Jul 2024 14:48:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: cybin <info@arachnodroid.de>
In-Reply-To: <20240620071616.3228015-1-a.fatoum@pengutronix.de>
References: <20240620071616.3228015-1-a.fatoum@pengutronix.de>
Message-Id: <171983811695.2340343.10359043494618852511.b4-ty@pengutronix.de>
Date: Mon, 01 Jul 2024 14:48:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_054839_225276_D41AEDED 
X-CRM114-Status: UNSURE (   7.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: payload: inform users on attempt to boot non
 EFI-stubbed kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 20 Jun 2024 09:16:16 +0200, Ahmad Fatoum wrote:
> Calling bootm on an x86 kernel image that lacks an EFI stub will result
> in a "no image handler found for image type MBR sector", which can be
> very confusing.
> 
> Improve upon this by directly suggesting that the kernel's
> CONFIG_EFI_STUB option needs to be enabled, so the image has the
> expected PE magic (and the EFI stub code that comes with it).
> 
> [...]

Applied, thanks!

[1/1] efi: payload: inform users on attempt to boot non EFI-stubbed kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=d9ec1ad67442 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



