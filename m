Delivery-date: Fri, 22 Oct 2021 13:33:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdsnm-0006cq-6Q
	for lore@lore.pengutronix.de; Fri, 22 Oct 2021 13:33:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mdsnl-0004L5-7x
	for lore@pengutronix.de; Fri, 22 Oct 2021 13:33:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hpdWmDKolLXlTlndBFnLpfzjzKBzzNwUxCXRWleCQa4=; b=qhq1xxaFcrC0M00ZKxsb085F6I
	Xqow3fVruNa5b9/tjSccKiPXV8OAkwbYDWE5hOEnappw8J+kr4rPNuDsUCxy2gSy6lqpiiht2Msy+
	oWKjiWQgBNTho8lf5xaWTGZZ/eqpc4w8ry5KTeMylWlFhftE57vhjBlZaUl5O5B/T0hPlXwQtehCD
	I6drhJxiphsJPUxV3nERdf4lhh6hbx39SGKBlKIUEesvdTQ4tG9H77PRQdgG1E0Q6fO1r27wQZZ5T
	lJavTMhXJ2q6nAhmR3My9O1ZDOcIBiP9O+YZiTtpwbR0hOzM+0CcLf+pPNb4nzoO+xv1X060c93NH
	V4uUzt6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdsmN-00AetY-Ts; Fri, 22 Oct 2021 11:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdsmI-00Aet2-0B
 for barebox@lists.infradead.org; Fri, 22 Oct 2021 11:32:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mdsmG-00049h-9r; Fri, 22 Oct 2021 13:32:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mdsmG-0005LY-0F; Fri, 22 Oct 2021 13:32:00 +0200
Date: Fri, 22 Oct 2021 13:31:59 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211022113159.GH25698@pengutronix.de>
References: <20211020104556.6829-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020104556.6829-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:28:17 up 246 days, 14:52, 122 users,  load average: 0.12, 0.31,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211022_043202_066264_8126DC13 
X-CRM114-Status: GOOD (  18.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3] usb: net: Add support for the Realtek RTL8152B/RTL8153
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 20, 2021 at 12:45:56PM +0200, Oleksij Rempel wrote:
> +{
> +	u16 ocp_base, ocp_index;
> +
> +	ocp_base = addr & 0xf000;
> +	if (ocp_base != tp->ocp_base) {
> +		ocp_write_word(tp, MCU_TYPE_PLA, PLA_OCP_GPHY_BASE, ocp_base);
> +		tp->ocp_base = ocp_base;
> +	}
> +
> +	ocp_index = (addr & 0x0fff) | 0xb000;
> +	ocp_write_word(tp, MCU_TYPE_PLA, ocp_index, data);
> +}
> +
> +static void r8152_mdio_write(struct r8152 *tp, u32 reg_addr, u32 value)
> +{
> +	ocp_reg_write(tp, OCP_BASE_MII + reg_addr * 2, value);
> +}
> +
> +static int r8152_mdio_read(struct r8152 *tp, u32 reg_addr)
> +{
> +	return ocp_reg_read(tp, OCP_BASE_MII + reg_addr * 2);
> +}
> +
> +void sram_write(struct r8152 *tp, u16 addr, u16 data)
> +{
> +	ocp_reg_write(tp, OCP_SRAM_ADDR, addr);
> +	ocp_reg_write(tp, OCP_SRAM_DATA, data);
> +}

This function name is too generic for a global function. Please rename
to something with r8152 in it. Same for ocp_reg_write(),
generic_ocp_write() and others. Another way would be to put the firmware
into a header file and include that in the driver so that you do not
have to export any functions.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

