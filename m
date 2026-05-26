Delivery-date: Tue, 26 May 2026 08:27:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGH-003uXw-2o
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:27:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlGH-0001yW-AN
	for lore@pengutronix.de; Tue, 26 May 2026 08:27:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HaZqntP124LkoD3eyKAm3YHB6mV51GeJQfNoSbr+LWI=; b=zAnDFHw5eeHmjBD40Pr/XaJgdC
	xOC5qq7HbzauFpL0w0+IfYkIUkZwyygdvnE35wVwLg/TuKcrfZT+w233QEAZ14AfTzafSy/IkjhMI
	Xs+Jae/1M4EzmHLhUgX8SDSkYLzEnFGQoobBq4PM3yzCfju6ciooaOlQwg4IxPiQmViUgSK2Mddhi
	p5w/uptK+30zOJHAJsR8Duu9TYlDZRwgt4TkgTa6yplVbZ7soZNdeZcczwtDYMLXSkvEDQfzkE8bX
	1OGdUUDehyhIIHYL4JBY+JueoobQRv9jszoUkdw6WH3nXO5VCQozF4Ol76w7Hih/C5R9JqqcVnF1D
	ezO94Ezw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFE-00000001A0p-1bV0;
	Tue, 26 May 2026 06:26:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlFA-000000019zy-33Hy
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:26:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF7-0001qm-KQ; Tue, 26 May 2026 08:26:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF6-001s4I-1b;
	Tue, 26 May 2026 08:26:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlF6-0000000GXT4-4Boo;
	Tue, 26 May 2026 08:26:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260525-short_nvmem_write-v1-1-ff741d6ff1d5@pengutronix.de>
References: <20260525-short_nvmem_write-v1-1-ff741d6ff1d5@pengutronix.de>
Message-Id: <177977678099.3941817.11675066053232330048.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:26:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_232624_772163_E73D6A3C 
X-CRM114-Status: UNSURE (   8.42  )
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
Subject: Re: [PATCH] nvmem: core: Allow sub-register width
 nvmem_regmap_write()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 25 May 2026 13:45:58 +0200, Jonas Rebmann wrote:
> The previous implementation of nvmem_regmap_write() required the
> supplied value to be a multiple of the register size defined by the
> driver ("expect users to observe alignment").
> 
> This is however not respected by nvmem cell functions
> nvmem_cell_prepare_write_buffer()/__nvmem_cell_entry_write() which
> prepare the value buffer based on the "bits" supplied in the devicetree,
> resulting in EINVAL errors if an nvmem cell with "bits" spanning less
> bytes than val_bytes = DIV_ROUND_UP(config->val_bits, 8) of the nvmem
> driver.
> 
> [...]

Applied, thanks!

[1/1] nvmem: core: Allow sub-register width nvmem_regmap_write()
      https://git.pengutronix.de/cgit/barebox/commit/?id=1d6e3066cf7f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



