Delivery-date: Tue, 21 May 2024 08:37:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J7q-00Bovt-1c
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:37:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J7p-00011w-V9
	for lore@pengutronix.de; Tue, 21 May 2024 08:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S211LRdqvMRq/zsm6fgtZPFpRup3hgrepU+I4zYucsY=; b=oFh4edVWu+XhhZT9yhsEXdTW5M
	YgXo/naujXNH3KV5X5ylUFwM5HUM4pDppXYIniEd5B7Prh8GfuOhU4BYMzQi7fUUpSRX5CKqA4ra5
	TrFKhR/CY/RlHxaaweH6wHfmGP6cdJR977C6XtXPyC1e2pzFR43W5NGE5EEkfrzmH+Fzs1hl73ayJ
	SF3VLPif6i2h0nzdZ1VlvQ/o44BZ0BnkDcd92/vCTV6rglqeVHVrf0PN9rexhdEZwLOq/TaVukZmF
	rC5u4F+A3AGIbBvhOXypVrCA6S0yR9vU4ik+XNNI6tBLJWRTrqg+RriJtfdHMNb3LLVcIGI+JNYd6
	9t9a02iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J7S-0000000GUaI-2UA0;
	Tue, 21 May 2024 06:37:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9J7O-0000000GUZD-4Bai
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:37:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J7N-0000tr-LY; Tue, 21 May 2024 08:37:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J7N-002Lx1-94; Tue, 21 May 2024 08:37:01 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9J7N-0060ty-0h;
	Tue, 21 May 2024 08:37:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074735.766656-1-a.fatoum@pengutronix.de>
References: <20240517074735.766656-1-a.fatoum@pengutronix.de>
Message-Id: <171627342121.1433401.8405029149793131613.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:37:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_233703_067839_54885697 
X-CRM114-Status: UNSURE (   8.92  )
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
Subject: Re: [PATCH master] filetype: fix OOB read when detecting type of
 truncated kernel images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:47:35 +0200, Ahmad Fatoum wrote:
> The ARM and RISC-V kernel Image format features a 64-byte header and
> places the 32-bit magic value identifying it at offset 56.
> 
> The check for the magic values should thus ensure that at least 56 bytes
> are guaranteed to be available in the buffer, thus move it into
> the >= 64 byte segment of the function.
> 
> [...]

Applied, thanks!

[1/1] filetype: fix OOB read when detecting type of truncated kernel images
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b12b757feaa (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



