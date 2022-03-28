Delivery-date: Mon, 28 Mar 2022 10:31:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYkmO-008mrM-CR
	for lore@lore.pengutronix.de; Mon, 28 Mar 2022 10:31:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nYkmQ-0005mM-GF
	for lore@pengutronix.de; Mon, 28 Mar 2022 10:31:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J+GUT1CG+z2HSFZiwEZWQ4EUAd2pt2Wf31TTjTSzNPQ=; b=mT+rYphSTxRXTJ9XDb4WPfZWYI
	I0dx2tyLH2blmEHzfNgAPnFq2qN7yltvXIt71MQvbi+44ldMPqcfBN5b2IfDgpcRa6mMRqmxDhWz+
	sZcWjYcegyafhZ3qWg2e2uxsj2rWukf0eV5mxXZaSjHYXmIaV9JbRy9y8zyXAUNZxTYQ88J/rzZy6
	7BchrugftIORBpA71qpWTIp6wOB5cGa4j1q4xzW03/WS6D2cks9HT8eUi0FP/Y0ESXz5gPImr3XhN
	K2tcyQ73mgUgH9K0+vcDh4bTK4D4iwyKvVumrIn4rPfjWQj83BYf7OIbOksvhSGexnGbrPin9eG6U
	XMttLZTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYklB-007pqE-AQ; Mon, 28 Mar 2022 08:29:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYkl1-007pnZ-Ib
 for barebox@lists.infradead.org; Mon, 28 Mar 2022 08:29:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYkl0-0005Mm-Bs; Mon, 28 Mar 2022 10:29:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYkl0-00043G-29; Mon, 28 Mar 2022 10:29:46 +0200
Date: Mon, 28 Mar 2022 10:29:46 +0200
To: Steffen Trumtrar <str@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20220328082946.GG12181@pengutronix.de>
References: <20220321131632.1307943-1-str@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220321131632.1307943-1-str@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:29:36 up 107 days, 17:15, 85 users,  load average: 0.14, 0.13,
 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_012947_661055_C0782402 
X-CRM114-Status: GOOD (  27.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] net: phy: mv88e6xxx: implement port_set_speed for
 mv88e6250
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 21, 2022 at 02:16:31PM +0100, Steffen Trumtrar wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> barebox port of the linux patch:
> 
>   commit a528e5be6b5f8026eda029b03340dcfa23c70824
>   Author: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
>   Date:   Tue Jun 4 07:34:29 2019 +0000
> 
>       net: dsa: mv88e6xxx: implement port_set_speed for mv88e6250
> 
>       The data sheet also mentions the possibility of selecting 200 Mbps for
>       the MII ports (ports 5 and 6) by setting the ForceSpd field to
>       0x2 (aka MV88E6065_PORT_MAC_CTL_SPEED_200). However, there's a note
>       that "actual speed is determined by bit 8 above", and flipping back a
>       page, one finds that bits 13:8 are reserved...
> 
>       So without further information on what bit 8 means, let's stick to
>       supporting just 10 and 100 Mbps on all ports.
> 
>       Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>       Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
>       Signed-off-by: David S. Miller <davem@davemloft.net>
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/net/phy/mv88e6xxx/port.c | 12 ++++++++++++
>  drivers/net/phy/mv88e6xxx/port.h |  1 +
>  2 files changed, 13 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/phy/mv88e6xxx/port.c b/drivers/net/phy/mv88e6xxx/port.c
> index ba2b03e18d..95542d4eec 100644
> --- a/drivers/net/phy/mv88e6xxx/port.c
> +++ b/drivers/net/phy/mv88e6xxx/port.c
> @@ -277,6 +277,18 @@ int mv88e6185_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
>  	return mv88e6xxx_port_set_speed(chip, port, speed, false, false);
>  }
>  
> +/* Support 10, 100 (e.g. 88E6250 family) */
> +int mv88e6250_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
> +{
> +	if (speed == SPEED_MAX)
> +		speed = 100;
> +
> +	if (speed > 100)
> +		return -EOPNOTSUPP;
> +
> +	return mv88e6xxx_port_set_speed(chip, port, speed, false, false);
> +}
> +
>  /* Support 10, 100, 200, 1000 Mbps (e.g. 88E6352 family) */
>  int mv88e6352_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed)
>  {
> diff --git a/drivers/net/phy/mv88e6xxx/port.h b/drivers/net/phy/mv88e6xxx/port.h
> index f47f392b87..f5cf72932a 100644
> --- a/drivers/net/phy/mv88e6xxx/port.h
> +++ b/drivers/net/phy/mv88e6xxx/port.h
> @@ -121,6 +121,7 @@ int mv88e6xxx_port_set_link(struct mv88e6xxx_chip *chip, int port, int link);
>  int mv88e6xxx_port_set_duplex(struct mv88e6xxx_chip *chip, int port, int dup);
>  int mv88e6065_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
>  int mv88e6185_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
> +int mv88e6250_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
>  int mv88e6352_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
>  int mv88e6390_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
>  int mv88e6390x_port_set_speed(struct mv88e6xxx_chip *chip, int port, int speed);
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

