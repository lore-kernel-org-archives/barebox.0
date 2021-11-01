Delivery-date: Mon, 01 Nov 2021 10:11:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTLp-00077k-Sl
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 10:11:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTLp-0005mE-2a
	for lore@pengutronix.de; Mon, 01 Nov 2021 10:11:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3RQ8UuoDIef9GshkokE4fkEtn8UCzI6xHVdxUY8WyS8=; b=1ztbWOT76q4fU6Dqp3nNID+5uQ
	OJopAMdkKJDyTL5x/IBKlr+NVK/1Y35ysI7TRxKbv1z87JSjkA0TkHf7thZs8+zIPrgcZn1bBR3Am
	xIBU0qXNClveWYT7d2RxLV54X3Yx98rJaOKcd6x3+J0iTKvb3ZjcHPR7pG6+PacHtkZ8Rv218A6q+
	ey2GxdqY8C64O4PsxA6A+8eFomgQnsm+QUGMoJNyi8WDSE+9bwsbOANi7I32xZndoziys6HrVR4Mu
	OlhkUZfKs9X1ynvOWYVP6Kl/f8uinbcbHT+hZlVqCWRc8LhWEDY8JZpoqjrjKDLYb8s+74/05KXW4
	O52xCIdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhTKe-00Fkg8-UG; Mon, 01 Nov 2021 09:10:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhTKZ-00FkfO-F1
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 09:10:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTKY-0005QF-7A; Mon, 01 Nov 2021 10:10:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTKX-0000op-TY; Mon, 01 Nov 2021 10:10:13 +0100
Date: Mon, 1 Nov 2021 10:10:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211101091013.GR25698@pengutronix.de>
References: <20211030141934.2207659-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211030141934.2207659-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:10:00 up 256 days, 12:33, 130 users,  load average: 0.17, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_021015_525296_94FE1FEF 
X-CRM114-Status: GOOD (  23.93  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: i.MX8M: nxp-imx8mn-evk: use regular i2c read
 for device detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Oct 30, 2021 at 04:19:34PM +0200, Ahmad Fatoum wrote:
> The barebox-nxp-imx8mn-evk image supports both DDR4 and LPDDR4 variants
> by probing for the PMIC in use as the former uses a BD71847 and the
> latter a PCA9450B.
> 
> The PCA9450B was observed to hang on the 0-byte (probe) reads.
> This results in I/O errors during later PMIC writes and the image
> would only boot on the EVKs with DDR4, which have the other PMIC.
> 
> Fix this by switching to a 1 byte read instead. Change tested on
> i.MX8MN DDR4 EVK as well as another board with LPDDR4.
> 
> While at it, note the address of the PMIC in the error message, so it's
> clear, what the result of the i2c probe was.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

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

