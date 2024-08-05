Delivery-date: Mon, 05 Aug 2024 18:58:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb12K-006YOP-23
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 18:58:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sb12K-0001IG-2e
	for lore@pengutronix.de; Mon, 05 Aug 2024 18:58:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aSbP9UH/az3Z2DsmF9v5vlbHYIFQxtzqgyxkdhg5UiQ=; b=AmbHPRBJYIWT2vvreyVPps2WwV
	BaNWDwTleG6pE/gxWiUIBEHw86IRT7nEKebI34C78Z1hKwDbeAvCkPhesOWMKJ/YtdEG87Z6+yu3A
	p+ALizZ4ELutUVz+PxWu7Aqfr05IyV/O1QivxsI6qysoYLkysr9uTxTbfDfnKKVPItLRNAxqAgD5/
	bzTzeFJGlVZ4W1piV38WUe8PJoRKVwyRH8K8wHewuqNi522vmcUAs0xyo9a9DEEPnHyVGdRk7D8up
	19+21xE4F8jWZ9qFK79bFTtCNZz92kZF9r+tpry445FO4Rt9Zsh/gbOXfiCC0RQNUT1ZLAC2FAvI1
	b85HDPrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb11t-0000000Gb65-20US;
	Mon, 05 Aug 2024 16:57:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb11p-0000000Gb3Q-1aoN
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 16:57:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sb11o-0001Ez-7q; Mon, 05 Aug 2024 18:57:48 +0200
Message-ID: <9695c594-d410-4e72-afeb-68777a82ce71@pengutronix.de>
Date: Mon, 5 Aug 2024 18:57:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Stefano Manni <stefano.manni@gmail.com>, barebox@lists.infradead.org
References: <3f5eb45e38041713fb983ec00bcdf830fb86cb11.camel@gmail.com>
 <98259e53-5bdd-4e6f-a0c9-1c0d2a11e85b@pengutronix.de>
 <34a3bd84065357c7ab6e8a55c6ec34f5267edad6.camel@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <34a3bd84065357c7ab6e8a55c6ec34f5267edad6.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_095749_449947_1EF9FED4 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: eth frame error on imx6ul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 05.08.24 16:38, Stefano Manni wrote:
> Hello Ahmad
> 
> On Mon, 2024-08-05 at 15:54 +0200, Ahmad Fatoum wrote:
>>
>> Do you have TFTP or something running while seeing these errors,
>> or when do they pop up?
> 
> They pop up unconditionally just after ifup. If I run tcpdump on the
> same LAN I see a lot of multicast/broadcast frames and probably the
> error comes out on the reception of them. Also because I figured out
> from fec_imx.h that 0x00000886 means:
> 
> #define FEC_RBD_LAST		0x0800	/**< Receive BD status: Buffer
> is last in frame (useless here!) */
> #define FEC_RBD_BC		0x0080	/**< Receive BD status: The
> received frame is broadcast frame */
> #define FEC_RBD_CR		0x0004	/**< Receive BD status: CRC
> error */
> #define FEC_RBD_OV		0x0002	/**< Receive BD status: Receive
> FIFO overrun */

You can enable CONFIG_CMD_ETHLOG to capture the frames and see if
the frame that triggers the error looks odd in some way.

Cheers,
Ahmad


> 
> Best,
> Stefano
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



