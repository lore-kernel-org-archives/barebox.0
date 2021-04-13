Delivery-date: Tue, 13 Apr 2021 09:22:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDNF-000714-Ew
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:22:13 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDND-0000cj-5y
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:22:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4NwsxPq7EyoaJlbWWBb24oXwfUOGscxvhoP2SYs0ISM=; b=nk6LvccgcYrTLud+Y8/L8ok51
	TWjPrlNe6waR6CE7aDEE6OMhjFrHR8jnPJDArEck218fr5om2NyNhpRGktRT2nEmBFJ3rvG/FL8KC
	qudtcXTI0Hk40+WNAOyjkeLU6oAtI2UR4QN0Vq/UnhLzNzH+bnJEuArbLLGFxA9GQeo8VIYSSf+95
	aVe0q4YswXZJxLUH+Q6x/ypLXoSc8zounPCTZkLI/phIES6+JfQV3vRZq0UBHl3o7+7xzwmftvtT2
	MSA8eFECiqf3kYMBJ+9cX4LWGvpOHJufIF9C3Dy3DysOaBYyeaI/nSJ6HMDyoMDonJlbHgitvklUB
	pN+EzXsYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDKE-008UQy-MV; Tue, 13 Apr 2021 07:19:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDKA-008UQO-84
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=sQzjo9lOSld3YcwNRLtoQmIOnQKTu2V5yafu1S8JRP8=; b=RePm34GupgJIydBbr6ufx1+VTI
 vCoNPDJIpMeIP5Y7bOgBoyF4kYPI/p2XxUPNRNARnDs8S6r1/V00E7OiR+lMdWNlWjPsKqzUvkULf
 oJE1HtM/cC/CeQec37zdywYBRJdMSevCAqU9LSR1LErX2nMOD6WqQJHtsEDTFyGX2Wi4W0/WqYA5y
 w2hJBnjt1BTJZmQS1xxkKWQoqnS65MXg5TJ1Fe38mjb06hFz3WqRj26Zcqj0PKrW096+qXdcBxbjL
 9YWkvo1x/V12kahKYFw6K1rtMwMVKmtKkYAeNpadkgxcZx8MM8KlpK3ZuPuFYTk0rjlvxM6SDnpZX
 cSvHYLoQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDK7-006nPQ-J6
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:19:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDK2-00009s-EK; Tue, 13 Apr 2021 09:18:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDK1-0003MI-V3; Tue, 13 Apr 2021 09:18:53 +0200
Date: Tue, 13 Apr 2021 09:18:53 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413071853.GD19819@pengutronix.de>
References: <20210410104807.2078535-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210410104807.2078535-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:18:45 up 54 days, 10:42, 90 users,  load average: 0.08, 0.15, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_001859_648601_58F132CA 
X-CRM114-Status: GOOD (  22.50  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] video: bochs: pci: fix unterminated PCI device
 table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 10, 2021 at 12:48:07PM +0200, Ahmad Fatoum wrote:
> Like other device id tables across tree, the last element is expected to
> be zeroed to act as sentinel. Fix the omission.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/video/bochs/bochs_pci.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/video/bochs/bochs_pci.c b/drivers/video/bochs/bochs_pci.c
> index 28785e1c0667..39c4d1b662ab 100644
> --- a/drivers/video/bochs/bochs_pci.c
> +++ b/drivers/video/bochs/bochs_pci.c
> @@ -27,6 +27,7 @@ static int bochs_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent
>  static DEFINE_PCI_DEVICE_TABLE(bochs_pci_tbl) = {
>  	/* https://github.com/qemu/qemu/blob/master/docs/specs/standard-vga.txt */
>  	{ PCI_DEVICE(0x1234, 0x1111) },
> +	{ },
>  };
>  
>  static struct pci_driver bochs_pci_driver = {
> -- 
> 2.30.0
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

