Delivery-date: Wed, 23 Aug 2023 07:54:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgoi-005o9N-Pt
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 07:54:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgog-0006E0-Hw
	for lore@pengutronix.de; Wed, 23 Aug 2023 07:54:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z6MwcQTpHo84mEswf7YL6Vfhu1LIYtHJPRv4A6iYjBk=; b=hPUmt35MpayxmfxeKxDVYfo/dg
	mPDItlmxiw9YvCve1pAY8asoqhEd1AA+FzgTrN927jZU9m6Wkz93Cx3LrsG2fIb/MFaAkQlhBK/Li
	cbNUEDrkzWY3yfeFrujv1+QglZGL+gmtrIP/50ym8WnrpSnfb4H23Vim3recuyn/FDJBls4yejfaa
	Rhf6BtwbzH+yx3bAqXdVar4ONfMSb9F5eAJFBxUOEq6na0zuwnUzO4grVxncuQbp1FMPdCiouU+mz
	EiH1ZraNBZ1s7wo0O/jFw8+L3gqjWJF7EDWDCsxkYZWWMc7ZHeFxYAvNv2JJnxZWv47pLSiT2dxEm
	W7JkLtzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYgnf-00HJu9-05;
	Wed, 23 Aug 2023 05:53:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYgnb-00HJt9-2S
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 05:53:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYgna-00067C-GN; Wed, 23 Aug 2023 07:52:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYgna-0002h4-9Y; Wed, 23 Aug 2023 07:52:58 +0200
Date: Wed, 23 Aug 2023 07:52:58 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230823055258.GC16522@pengutronix.de>
References: <20230822074832.3905525-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822074832.3905525-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_225259_796443_3759523F 
X-CRM114-Status: GOOD (  19.76  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] PCI: populate struct pci_device subsystem_device,
 subsystem_vendor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 22, 2023 at 09:48:31AM +0200, Ahmad Fatoum wrote:
> pci_device::subsystem_device and pci_device::subsystem_vendor have been
> there since the beginning, but they were never populated. This went
> unnoticed so far, because they are compared against PCI_ANY_ID
> everywhere, except for some NS16550-over-PCI quirks.
> 
> We should either drop the members or populate them unconditionally.
> Let's do as Linux does and populate them for devices[1].
> 
> [1]: https://elixir.bootlin.com/linux/v6.5-rc7/source/drivers/pci/probe.c#L1915
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/pci/pci.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index d1b7549d7100..638af9722efc 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -434,6 +434,9 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
>  				goto bad;
>  
>  			setup_device(dev, 6);
> +
> +			pci_read_config_word(dev, PCI_SUBSYSTEM_ID, &dev->subsystem_device);
> +			pci_read_config_word(dev, PCI_SUBSYSTEM_VENDOR_ID, &dev->subsystem_vendor);
>  			break;
>  		case PCI_HEADER_TYPE_BRIDGE:
>  			child_bus = pci_alloc_bus();
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


