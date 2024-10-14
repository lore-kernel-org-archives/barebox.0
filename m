Delivery-date: Mon, 14 Oct 2024 15:57:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZT-004HZq-1W
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZS-0006cM-Cm
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OUNUqrXLCR3NKXwV+Bi62nSkg1hRYdPN5TUADRzj6+Y=; b=Ndc83MB2t+QKg4vVSAtZClgaTJ
	x3Snn9frY6NeFm/3uYmBv/BTVW4kW2mfs6gAFJ87uAf+jSEgod5v6iitc+i1VZ4q3IdJ6xUlCx+cS
	Rn/iYslsz3FOCsjG1Fh7JEXAx4C+tG5h20nGLQR9PRJoul7FJWeCqSL3JlLrTyfHsDgk6G8mhzTb7
	44qPleSGtrqqLwaEcBEkwJ5BDsDd/PSUPAmpe+6LuTwsrzT9fdC9Xw1jaXLCJgNLMaKT45lV8tg3N
	kEiQuyw+VRiWH4oiLvCJQbLggWStBhcvm9vSAiCnufi4pPHiX/8H+fgydig7a5NgRin8X5kqZvrKE
	CtiyFMUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYw-00000005Nb2-2mo9;
	Mon, 14 Oct 2024 13:56:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Klo-00000005Bb1-1LNv
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:05:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Klm-00081k-Vm; Mon, 14 Oct 2024 15:05:55 +0200
Message-ID: <6ff8217c-ffbd-44ba-a522-6b2ebd1eec58@pengutronix.de>
Date: Mon, 14 Oct 2024 15:05:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, ejo@pengutronix.de
References: <20241009060511.4121157-1-a.fatoum@pengutronix.de>
 <20241009060511.4121157-6-a.fatoum@pengutronix.de>
 <Zw0TBKwNve_cG9wm@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Zw0TBKwNve_cG9wm@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_060556_383559_7A5D1FFF 
X-CRM114-Status: GOOD (  13.66  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/5] virtio: don't use DMA API unless required
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 14.10.24 14:48, Sascha Hauer wrote:
> On Wed, Oct 09, 2024 at 08:05:11AM +0200, Ahmad Fatoum wrote:
>> We have no Virt I/O drivers that make use of the streaming DMA API, but
>> the Virt queues are currently always allocated using the coherent DMA
>> API.
>>  	vq->queue_dma_addr = dma_addr;
>>  	vq->queue_size_in_bytes = queue_size_in_bytes;
>> +	vq->use_dma_api = vring_use_dma_api(vdev);
> 
> What's vq->use_dma_api good for? It's unused.

Linux uses it to decide e.g. inside vring_map_single, whether DMA API
should be used. I think we may need it in barebox in future too, but
it can always be added later. Please see the fixup I just sent out.

Sorry for the inconvenience,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


