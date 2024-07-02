Delivery-date: Tue, 02 Jul 2024 08:34:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX5s-000lCD-0l
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 08:34:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOX5r-0001Qr-L8
	for lore@pengutronix.de; Tue, 02 Jul 2024 08:34:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oIjnHs8+3zkDYdujNd6Cx6saRN6VRylNLt4en/zZkXY=; b=WGcmlBH5BMcARSlVGZ7gJrLVpK
	c0NoL5PnJkcfXsPU4bFssuhbdYFbnUkA/h44nmIGOLIQtiNz6FwE+1mCsYHwybzRv/460IhKP/wgm
	ICiDLKS7DlgLtvH7MY+TXE0mpUuHnkEfOuvlcWj9QZlSm4R9fQJM4ninQIAB2wUga/NSl/GD1QLN+
	EvSqjz+tUHSgAXeC8zkDvAptZG+SeUHugDddtsuG0yw0ZgRFPVcyYtObHMjqGzVPKTyLoebcjL39k
	8rKlGKDclHh6DFkHh6KDAz1Pqj8zzLTz/wFBiUDJFZrn1t/9IPjR5oYjb+AA9qTaiFZQVMxJmymZe
	BgW4sfMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX5G-00000005ilK-3XvT;
	Tue, 02 Jul 2024 06:33:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOX5C-00000005ika-2u4i
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 06:33:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX59-0001Mj-FD; Tue, 02 Jul 2024 08:33:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX59-006Y2i-2b; Tue, 02 Jul 2024 08:33:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOX59-00EpT4-02;
	Tue, 02 Jul 2024 08:33:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240701181230.1189587-1-a.fatoum@pengutronix.de>
References: <20240701181230.1189587-1-a.fatoum@pengutronix.de>
Message-Id: <171990201900.3534235.7296460300923002341.b4-ty@pengutronix.de>
Date: Tue, 02 Jul 2024 08:33:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_233342_761853_7D9521F8 
X-CRM114-Status: UNSURE (   7.10  )
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
Subject: Re: [PATCH master] clk: support inclusion of clk-provider.h in
 !COMMON_CLK code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Jul 2024 20:12:30 +0200, Ahmad Fatoum wrote:
> Most of the file is macros, but the little C code there is fails to
> compile when built with !COMMON_CLK due to struct clk_div_table and
> clk_hw_get_parent being undefined.
> 
> 

Applied, thanks!

[1/1] clk: support inclusion of clk-provider.h in !COMMON_CLK code
      https://git.pengutronix.de/cgit/barebox/commit/?id=0156b9deb454 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



