Delivery-date: Tue, 18 May 2021 08:35:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litKL-0002co-II
	for lore@lore.pengutronix.de; Tue, 18 May 2021 08:35:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1litKK-0000N4-RJ
	for lore@pengutronix.de; Tue, 18 May 2021 08:35:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BhXLVZQanF/ceyh9WaNP9ihtOPJyS21kUvezDsmu/uw=; b=ejMRV21VAr50THBYZ2Eenfx1Q
	AZJjLHpZeBnAnnFA2VXI06ilvJuz0KRGa3aAQ1T1HRJMckUcIfImRl9ehfT6P4eFl3C5GhxrJgSAH
	5anyUL3cFOz/cz9qpLCFixCw33Z+vQNoZ8U29DfR8bC3RJJePisL3Pcb6H+olE4fQDWxnUavzG1w9
	BdNmEqqxnCoFD1whh+IMQWqk/6w+f3JXApPqXWu8szsr5Qddel/czP8lp1zQzb2QYF/woRbfZwEkZ
	kOnh4V0wRDpMyfqVOaPRXJK4Lt66ZWBa7rZ6cmNDxPYdAwS/1KNVn107tpoPkMud3TgQ1jl8nPPvE
	GM+KCVQQg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1litJO-00HATC-0N; Tue, 18 May 2021 06:34:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litJI-00HASd-Uy
 for barebox@desiato.infradead.org; Tue, 18 May 2021 06:34:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UZToN1tQT6/PlDhoN1wJ4JN1/vmONqTWK5slSzaDhw8=; b=XisN3ayjZi9z+dF+VtBNr1WLXO
 HVzpxOD2SQUuf5Iz7A34N5d+4D1mg7fGajmnloeV+uJbpU85dXoAtITnMvkO9gog1Zav3nVKRzjyh
 QRg8K0S+ZFE3F76gxxwBb0s8pne9LFBuEqh1P/zUSAfzIjH768WU1cTzOYau+0yz+Bd2uRdjZqcdh
 3VKXrxwGMDY5/n4s9yEVEvZjg9uc4fGDGYBTWUKEL8eRkWagWSXpE10jVuir7oL5FHr/LPhFVQDCp
 QzpW+1m0ZPFvLVvuu+IW3tntDTj4KITIWu4xhv2/E38Bn2s5mzrlaUY7ycXQIk94cmekMKGvHUv6J
 6sYi+2LA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1litJG-00EM65-Cq
 for barebox@lists.infradead.org; Tue, 18 May 2021 06:34:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litJF-0000EC-2w; Tue, 18 May 2021 08:34:29 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1litJE-00079H-Pu; Tue, 18 May 2021 08:34:28 +0200
Date: Tue, 18 May 2021 08:34:28 +0200
To: Enrico Jorns <ejo@pengutronix.de>
Cc: barebox@lists.infradead.org, afa@pengutronix.de
Message-ID: <20210518063428.GW19819@pengutronix.de>
References: <20210517124941.31301-1-ejo@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210517124941.31301-1-ejo@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:34:14 up 89 days,  9:58, 90 users,  load average: 0.23, 0.18, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_233430_453602_4A221B59 
X-CRM114-Status: GOOD (  22.55  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: more precise and helpful message for dr_mode
 config issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 17, 2021 at 02:49:41PM +0200, Enrico Jorns wrote:
> With the previous message I misunderstood that the 'configuration
> mismatch' was caused by any entity forcing the dr_mode to
> 'host'/'device'.
> The actual intention however is to tell the user that the selected
> 'dr_mode' does not match the capabilities provided by the controller or
> the selected driver parts (USB_DWC2_HOST/USB_DWC2_GADGET).
> 
> The updated warning message attempts to reflect this more explicitly.
> 
> Also rename 'device' to 'peripheral' as it is named both in dtb and
> in macros that way.
> 
> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> ---
>  drivers/usb/dwc2/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

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

