Delivery-date: Fri, 05 Mar 2021 21:37:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIHCQ-0003Cb-Cb
	for lore@lore.pengutronix.de; Fri, 05 Mar 2021 21:37:26 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIHCP-0006LQ-KZ
	for lore@pengutronix.de; Fri, 05 Mar 2021 21:37:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AdDfYTxhcrlB5xd5KKT8Uvh22aS2I0v5erSW1cMO81o=; b=ifD6RFelSFqOknEjhbnbHNOJV
	/EoGvYU2GxsNa7VwbyW4Bhfx7l05ID+poil8g2mpaORfHADavpu0SBlac9MqH1pvzRDJGxTNUXzuW
	sBAj29mPEGcfMyXz/Hp5pGB2iDruFm50gItIpw1ih+ij3THveCQujgyW8yfZgBqxb4dUJTsxiQKqu
	EnRxiw/gp5nzQFog50Et0P5j1biur0/RIA01KIJgzRUYYXB6Sdy+ic6GVGJmM4xvkesd7cjFJiRDA
	iaZZ+x2igsmbsy1oTGfhIVGa41cUG+BbcfGh45a8KkgRUj6y28p/a8l6t/leLmbAwRsf0uwLCvKoz
	5TXLTV8IQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIHBB-00GOkF-2p; Fri, 05 Mar 2021 20:36:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIHB1-00GOis-FI
 for barebox@lists.infradead.org; Fri, 05 Mar 2021 20:36:04 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lIHAz-00069b-9T; Fri, 05 Mar 2021 21:35:57 +0100
To: Christian Eggers <ceggers@arri.de>, barebox@lists.infradead.org
References: <12186927.ML1T7lbObL@n95hx1g2>
 <abe9cf07-d7b7-31fa-f881-14f179aa36ea@pengutronix.de>
 <07ba5178-786b-d4c2-16c7-68102ca41462@pengutronix.de>
 <21090636.oFDgJnQYPg@n95hx1g2>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3f20e4d6-de9a-92ba-c00a-002cee0acfda@pengutronix.de>
Date: Fri, 5 Mar 2021 21:35:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <21090636.oFDgJnQYPg@n95hx1g2>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_203559_891938_7D3B17C2 
X-CRM114-Status: GOOD (  12.18  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: state framework, fixed-partitions, eeprom and linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Christian,

On 04.02.20 14:06, Christian Eggers wrote:
> I have a different approach, taken from the Linux MTD sources. Here the DT partitions are added as NVMEM cells. Is there any conceptual difference between "MTD partitions" and "NVMEM cells"? 
> 
> Are you able to bring one/both patches into Linux?

It took a while, but it's now included as of v5.12-rc1 as 0445efacec75
("nvmem: core: skip child nodes not matching binding").
Newest stable releases for v5.4. v5.10 and v5.11 also include it.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

