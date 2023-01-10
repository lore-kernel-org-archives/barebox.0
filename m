Delivery-date: Tue, 10 Jan 2023 16:03:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGAK-007rCU-Q3
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:03:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGAI-00016D-MN
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:03:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nDIWszb2EpaPIdbyrTfsTeBPQ124rlYkBsfUOGjJvA=; b=R5ACOv/5LKJA2+BP2KKtnlO//z
	l8Of4wfTYRUtVZyeY5LsZIrfhdWeWfx6dmFxdcGx9rARHyZFkHUjwgxFWOwyM7TT4w2oRy2fG/5lf
	f3obDnZp0zvKTfebYCmVNJwnwbqMq+iVmBcJVrQPFuPjJYTiBvMxAztFewON4Zmrr6MMALLjBg0Wp
	OhTyu0bSEmUdMVVUYQggXNi0oH7yOYTOCUIZg4hC0GYIHBt0K4tujsBuOMdgw5nrowekPlfx5Nb+G
	moKJgDbjv3jMWEMWKHAhSZ51cIoWzXD/NqqNoS2YzDHzKHvTdoPrlcE+/HnyB7LgYi/jtVfqqU4hA
	FTVUG4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG98-007SsB-So; Tue, 10 Jan 2023 15:02:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFG93-007Spi-5a
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:02:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG91-0000nW-UL; Tue, 10 Jan 2023 16:02:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFG91-0006Fo-Mv; Tue, 10 Jan 2023 16:02:31 +0100
Date: Tue, 10 Jan 2023 16:02:31 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110150231.GQ28911@pengutronix.de>
References: <20230109150813.2051799-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230109150813.2051799-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070233_307551_A76E4373 
X-CRM114-Status: GOOD (  22.27  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] mtd: consult CONFIG_OFDEVICE in mtd_get_of_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 09, 2023 at 04:08:13PM +0100, Ahmad Fatoum wrote:
> Get barebox on non-DT platforms with NAND a tiny bit smaller by using
> dev_of_node: The helper will return NULL unconditionally when
> CONFIG_OFDEVICE is not enabled, thereby allowing more code to be
> discarded at compile-time in absence of link-time optimization.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/linux/mtd/mtd.h | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
> index 6b539a9eceb5..2824853e2954 100644
> --- a/include/linux/mtd/mtd.h
> +++ b/include/linux/mtd/mtd.h
> @@ -293,11 +293,7 @@ static inline void mtd_set_of_node(struct mtd_info *mtd,
>  
>  static inline struct device_node *mtd_get_of_node(struct mtd_info *mtd)
>  {
> -	if (mtd->dev.of_node)
> -		return mtd->dev.of_node;
> -	if (mtd->dev.parent)
> -		return mtd->dev.parent->of_node;
> -	return NULL;
> +	return dev_of_node(&mtd->dev) ?: dev_of_node(mtd->dev.parent);

Does every mtd device have a parent device? dev_of_node() doesn't cope
with a NULL pointer passed in.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


