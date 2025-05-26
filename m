Delivery-date: Mon, 26 May 2025 19:30:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJbeh-000amy-0w
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 19:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJbeg-00021l-Pa
	for lore@pengutronix.de; Mon, 26 May 2025 19:30:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0/99wexJch7cibd49v56Kl6zb489Ytc3M2vLrH0WUY=; b=DHZGAx1/32Ph3XvwW3Ev8R9baG
	sWa/YyWp/MEEoJRCtyZcWNem/ueKf+FMsyLZFlv/jIuTErWhJbdfEOH35gpoZTeUuixPxmXGU/M0X
	LL2pZBbnX3I/IqvopVYIi6dy5Yf0DNk/Q17cBeP5LhDjhdSyvN4LqI177V7/dQ9cMB98aNPIhn5Rc
	ZZ8xj/OqXHc0Q+R+SD6VeNJiwWnMUUxM3KGf6Opj9Rat7U5yjkWr0y+voBqPyLQATtOgk8hP2J+d0
	e4fLCSZB1nx5BRIdAWSX/LOB1NfBtMUalrBTF/iuHiol/5g7yYv89hHTnwH3cgJeXp0H37dr7xf2I
	3YVCSrUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbeH-00000009Jz9-2FgD;
	Mon, 26 May 2025 17:30:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJbeF-00000009Jyb-0QLJ
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 17:30:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbeD-0001mj-UA; Mon, 26 May 2025 19:30:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbeD-000Hkk-2K;
	Mon, 26 May 2025 19:30:01 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uJbeD-00AdhX-22;
	Mon, 26 May 2025 19:30:01 +0200
Date: Mon, 26 May 2025 19:30:01 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250526173001.vewdlenfqonfsosl@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-4-5004995cbd03@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250526-rk3588-optee-v1-4-5004995cbd03@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_103003_142834_9BA2C45B 
X-CRM114-Status: UNSURE (   6.40  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/9] PBL: fdt: refactor helper for reading nr of cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-26, Michael Tretter wrote:
> Since libfdt now contains fdt_addresses, the fdt_find_mem function can
> use the already existing helpers to read #size-cells and #address-cells.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


