Delivery-date: Mon, 03 Apr 2023 09:12:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEMQ-008GnI-LJ
	for lore@lore.pengutronix.de; Mon, 03 Apr 2023 09:12:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjEMQ-00038K-C1
	for lore@pengutronix.de; Mon, 03 Apr 2023 09:12:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5rsJ2VlbPBIhxNc9yRryDosQyJCaJS/CKJjrLCUq0Zs=; b=w1ILeDBZ+qw3bHKzSzNgSFp0k+
	aKdpzL7cIofiB8dhpbL2YMcHBpNu1N0i4qDSwfzRMegs2NBNhdm93GDIbZNdgviPbVzvUZ/HK+Vtu
	PnbF4WjLohsxIZQ84DT7OPwogv2kluqipmf8GFZ+FfahDv7E0crjVYsMFJ3EEB5Ib6nz6ozt3WTFT
	c02boyV8awH0M4Q71zep2AI+4COg47s49cBRNaEhKp8vLaHRSLh+59RdZR7zdZFemmLPXJA686Moq
	Qz0caosIwMBsXhdaZUlfzBnnQiJk1xFA9Kq5g9ev0w4ttfkkeO3/hLKC2zFvBznT34ABFqxh0b/UT
	11y1O56g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjELS-00EL5t-1o;
	Mon, 03 Apr 2023 07:11:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjELM-00EL50-1u
	for barebox@lists.infradead.org;
	Mon, 03 Apr 2023 07:11:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjELK-000324-MG; Mon, 03 Apr 2023 09:11:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjELJ-0008DH-AX; Mon, 03 Apr 2023 09:11:05 +0200
Date: Mon, 3 Apr 2023 09:11:05 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org, Rouven Czerwinski <rouven@czerwinskis.de>
Message-ID: <20230403071105.GQ19113@pengutronix.de>
References: <20230330161101.58529-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230330161101.58529-1-r.czerwinski@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_001108_629108_4E01A65A 
X-CRM114-Status: GOOD (  15.21  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next v2] arm: rockchip: add support for CM3 on IO board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 30, 2023 at 06:11:01PM +0200, Rouven Czerwinski wrote:
> From: Rouven Czerwinski <rouven@czerwinskis.de>
> 
> Working:
> - RKBIN DDR training (rk3566_ddr_1056MHz_v1.13.bin)
> - RKBIN TF-A (v1.34) from RKBIN
> - Environment storage
> - DHCP, ping and link detection
> 
> Signed-off-by: Rouven Czerwinski <rouven@czerwinskis.de>
> ---
> v2:
> - rebase on next and adjust to RK356x changes
> - update rockchip boards documentation
> 
> +	memory@a00000 {
> +		device_type = "memory";
> +		reg = <0x0 0x00a00000 0x0 0x7f600000>;
> +	};

Now that we have a driver reading back the memory settings from the
controller this shouldn't be needed anymore. I dropped the memory node
while applying, please check if it works.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


