Delivery-date: Tue, 25 May 2021 09:18:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRKU-0008As-Gq
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:18:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRKT-0002wG-Ee
	for lore@pengutronix.de; Tue, 25 May 2021 09:18:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s3Mnnnnpno/Hbmc/ewdS/ea00/oyqNhSd4wDFOskWdg=; b=Y3i0mKGPmyv3IKlYU4Q5P79Yki
	IbkrGvE6pUuDPBqsrrYHeJdc6WIz8f2jmCnEsRUZz3FcMozRputK60tVuMo1xvFevPKH60+prgxDC
	EruHEHL7kt8sP7LUfu1U6dbx2ccCF5c2reIzVcLDTbDfaJS5JqgxujTBuSQprugzayXvh9ZlPsIrA
	AuCOjSyXCar7II1/ROV5M+hGclMB1MB04K8R2BpCiLyTPnUNOnnbJqaapGOMpbKY/r/eZPzy51eaT
	7Lka66LsOvdTt0/F5AIREi+OFBHRYK603G65Zkg+QcyX53HxtPBFpmk6QJvztU6FeYiMq9dxBYczR
	0UBph9eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRJH-003otY-1u; Tue, 25 May 2021 07:17:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRJB-003osW-Mz
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:16:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llRJA-0002oc-19; Tue, 25 May 2021 09:16:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llRJ9-00066y-EY; Tue, 25 May 2021 09:16:55 +0200
Date: Tue, 25 May 2021 09:16:55 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: Michael Graichen <michael.graichen@hotmail.com>,
 barebox@lists.infradead.org
Message-ID: <20210525071655.GP19819@pengutronix.de>
References: <AM9P192MB0870DC1573A4088BB839A208AB2C9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <20210519073855.2748231-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210519073855.2748231-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:16:07 up 96 days, 10:39, 105 users,  load average: 0.26, 0.20,
 0.23
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_001657_785657_8B88B6A2 
X-CRM114-Status: GOOD (  33.48  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] mci: arasan: wait for data available only on read
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 19, 2021 at 09:38:54AM +0200, Michael Tretter wrote:
> Only READ data transfers actually send a data available interrupt.
> Therefore, check if the transfer is a read and wait for the data only in
> this case.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
> 
> Hi Michael,
> 
> On Tue, 18 May 2021 08:09:47 +0000, Michael Graichen wrote:
> > > This looks familiar. I have a similar patch that sets SDHCI_INT_DATA_AVAIL
> > > only if the command is a READ, but I didn't yet have time to verify, that this
> > > is the correct fix.
> >
> > Can you please send it to me?
> 
> Here you are. I am not sure, if the fix is correct. I also added another
> patch to handle situations where data is NULL, but I am not entirely sure
> about that one either.
> 
> Michael
> ---
>  drivers/mci/arasan-sdhci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/mci/arasan-sdhci.c b/drivers/mci/arasan-sdhci.c
> index 520bf30ff952..399966e8cf10 100644
> --- a/drivers/mci/arasan-sdhci.c
> +++ b/drivers/mci/arasan-sdhci.c
> @@ -277,7 +277,7 @@ static int arasan_sdhci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd,
>  	sdhci_write32(&host->sdhci, SDHCI_INT_STATUS, ~0);
>  
>  	mask = SDHCI_INT_CMD_COMPLETE;
> -	if (data)
> +	if (data && data->flags == MMC_DATA_READ)
>  		mask |= SDHCI_INT_DATA_AVAIL;

Waiting for Data avaialable only makes sense when reading. Applied,
thanks

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

