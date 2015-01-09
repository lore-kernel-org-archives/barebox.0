Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9hj5-0004Cb-Mw
 for barebox@lists.infradead.org; Fri, 09 Jan 2015 22:08:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1420748521-9890-1-git-send-email-robert.jarzmik@free.fr>
Date: Fri, 09 Jan 2015 23:07:46 +0100
Message-ID: <87d26nzjyl.fsf@free.fr>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3] mtd: nand: add mrvl-nand driver
To: barebox@lists.infradead.org

Robert Jarzmik <robert.jarzmik@free.fr> writes:

> +static int mrvl_nand_ready(struct mtd_info *mtd)
> +{
> +	struct mrvl_nand_host *host = mtd_info_to_host(mtd);
> +	u32 ndcr;
> +
> +	ndcr = nand_readl(host, NDSR);
> +	if (host->cmd_ongoing == NAND_CMD_RESET)
> +		if (host->cs == 0)
> +			return ndcr & NDSR_FLASH_RDY;
> +		if (host->cs == 1)
> +			return ndcr & NDSR_RDY;
> +	if (host->cs == 0)
> +		return ndcr & NDSR_CS0_CMDD;
> +	if (host->cs == 1)
> +		return ndcr & NDSR_CS1_CMDD;
> +	return 1;
> +}

This function should be purified, and the NAND_CMD_RESET test thrown away. In a
multiple write or erase case, this function should really wait for the NAND to
be ready. For v4.

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
