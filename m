Delivery-date: Tue, 21 May 2024 08:29:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J0S-00BoO5-0O
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 08:29:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9J0R-00080U-IU
	for lore@pengutronix.de; Tue, 21 May 2024 08:29:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7BZ2xbzKT8KYGvjMd3jIYAVZjp7sUn8U1fSqegu6FyM=; b=v37NEfJhyWsU+d+IsiG1DuZnYX
	CwJm6+DtstLPfXBab2LlT62FrZXn0j+sPWcr5m3Uu2AvqZfw0Hpg2VQ0+2V1FZiRpAHcyjdJbJD5g
	tv7PPnasAJCUcHtvk8o14A6G0BoqDJb9TQ1yTwB3CwOO2FJHrCAx8p/FY124F6eC+0Ka/4vrxRz0k
	urJgnN4qIWZ0oL47aitwLeb3uBOshBp+rzi7cLExhJOquPkqMTpgYoZzSFgSK3GQhMGn03nYGhsaG
	HyENtyUT6wstSh3FnQdSVNBuTYbM7clXkMEBDzXyKnBeLRX2PaXDsKuElfgpaIeG5+83bmlCWVJCG
	78pz1INQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Izw-0000000GTvB-49I3;
	Tue, 21 May 2024 06:29:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Izu-0000000GTus-0O2T
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 06:29:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Izs-0007sf-JS; Tue, 21 May 2024 08:29:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Izs-002Lth-6u; Tue, 21 May 2024 08:29:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Izs-0060Nt-0T;
	Tue, 21 May 2024 08:29:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517074824.767767-1-a.fatoum@pengutronix.de>
References: <20240517074824.767767-1-a.fatoum@pengutronix.de>
Message-Id: <171627295614.1431398.1386330542147736047.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 08:29:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240520_232918_167099_40671D04 
X-CRM114-Status: UNSURE (   6.77  )
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
Subject: Re: [PATCH 1/7] of: free unflattened overlays after application
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 09:48:18 +0200, Ahmad Fatoum wrote:
> of_unflatten_dtb allocates an unflattened tree and of_overlay_apply_tree
> copies it into another tree. The unflattened tree is then usually
> leaked. Add a function that takes care of these two steps and then frees
> the tree.
> 
> 

Applied, thanks!

[1/7] of: free unflattened overlays after application
      https://git.pengutronix.de/cgit/barebox/commit/?id=21598db0d106 (link may not be stable)
[2/7] of: overlay: do not leak fixed up path
      https://git.pengutronix.de/cgit/barebox/commit/?id=92b4598183fb (link may not be stable)
[3/7] test: self: digest: don't leak digest buffers
      https://git.pengutronix.de/cgit/barebox/commit/?id=920740d28004 (link may not be stable)
[4/7] test: self: ramfs: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=3451af15b4cb (link may not be stable)
[5/7] regulator: of_regulator: remove unused allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae990b192979 (link may not be stable)
[6/7] globalvar: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=4dcae371c292 (link may not be stable)
[7/7] power: reset: reboot-mode: fix memory leak
      https://git.pengutronix.de/cgit/barebox/commit/?id=22f770fb9041 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



