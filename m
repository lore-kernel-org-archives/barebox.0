Delivery-date: Mon, 11 May 2026 09:28:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML4P-000Tqj-1u
	for lore@lore.pengutronix.de;
	Mon, 11 May 2026 09:28:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wML4K-0006jM-Ud
	for lore@pengutronix.de; Mon, 11 May 2026 09:28:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IUGpVT/IrBsuEDRvlpOx6h4IfGBVRjOFuVUqKkcBZao=; b=kGkppSwSFpSayLDVNljuVdWiEp
	jNIFwU+oLgZjDSYw3xRqf66ihyCRHUrHXypG64ecQ+58WncqnKLOmnjVH+oGxF1PGFpSQLPtdmXhw
	4aDX3VN0cCEaszDshNQOnJdF8fBiM5giFPC2kbOgmNBAUSfrT3sbcDXDLPW5VQV23KlYAAub7p1uf
	fNm9OMetQK1rDrw9/pCv+KtI5gKFGZ3Jhxh2GGUz4KTPmvpshEA2Ar9oqQOEWAFLAKhK+AD3fP/qu
	8JAF6BuYN3aph/QiIanej68w2g/C4PTOBlKBXC0E2tHABPPBtZXPZuoEcUXccPCT69gvxP8YrWj0s
	/CWvO4hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML2b-0000000CbPK-1LZG;
	Mon, 11 May 2026 07:27:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML2Z-0000000CbOm-0ChK
	for barebox@bombadil.infradead.org;
	Mon, 11 May 2026 07:26:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=IUGpVT/IrBsuEDRvlpOx6h4IfGBVRjOFuVUqKkcBZao=; b=To4emIlpd7tf2lOE6whimxOqlY
	0ktaehsI2XwrZudzKTpCUiiEvEEPlHGutdvLc0sJaZeOVFWY67yF4w278PhxIqzN0Ns2mwwsg8gdL
	OBNK3cIJvFSHRDILbRagA2n5sfab1XPHqTKZD6p+1ERfqVda0tcy53bg3alkbRU6Asa+8f/0emPPV
	J0WSFOihtxS+emZODNdCTx9Bk7bTg9KaVvAGy/U8c07Ds7401eJ1BdsNptHxNfRw1jiUnW6LRoWYe
	kKjydDpnbf05asNIpaug/6rq6F3RRn76IaVeKzYoMZ4OZn6RG4sMTqKDslNHGtvVXGzkuI0jGC8PJ
	oGSer6jA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wML2S-0000000ArNf-3D9z
	for barebox@lists.infradead.org;
	Mon, 11 May 2026 07:26:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML2S-0006IY-4p; Mon, 11 May 2026 09:26:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML2R-000DJV-0i;
	Mon, 11 May 2026 09:26:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wML2R-0000000DEtj-3m1f;
	Mon, 11 May 2026 09:26:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260507-input_is_key_pressed-v2-0-3c43453a199d@pengutronix.de>
References: <20260507-input_is_key_pressed-v2-0-3c43453a199d@pengutronix.de>
Message-Id: <177848441189.3155506.13730172111558691204.b4-ty@pengutronix.de>
Date: Mon, 11 May 2026 09:26:51 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_082654_729279_EA8B775E 
X-CRM114-Status: UNSURE (   6.15  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/2] input: Supersede input_key_get_status() with
 input_is_key_pressed()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 07 May 2026 15:48:22 +0200, Jonas Rebmann wrote:
> Reading a GPIO button via gpio-keys can be preferable over direct GPIO
> access as gpio-keys abstracts away from GPIO hardware via the
> devicetree, consistently across barebox and linux.
> 
> Trying to read a single key state analogous to prt_imx6_init_prtvt7
> failed as input_key_get_status should have been provided with the
> keycode in question plus one to ensure a large enough bitfield to
> contain the desired key state.
> 
> [...]

Applied, thanks!

[1/2] input: add input_is_key_pressed() to read single key
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa1b345ec9fc (link may not be stable)
[2/2] ARM: boards: protonic-imx6: use input_is_key_pressed()
      https://git.pengutronix.de/cgit/barebox/commit/?id=949c0d352eb3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



