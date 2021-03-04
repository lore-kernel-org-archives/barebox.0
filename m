Delivery-date: Thu, 04 Mar 2021 14:07:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnh9-0001Bo-Ig
	for lore@lore.pengutronix.de; Thu, 04 Mar 2021 14:07:11 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHnh8-00028D-Oo
	for lore@pengutronix.de; Thu, 04 Mar 2021 14:07:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=erj/0RiBNzqKpRyDqydOUf2zHYL9FTlVp0opoOeaqPI=; b=JGTh+YSnDuY12NYvyBbJ0JCS9
	t3IJ6WYS+s6T6zS4Z/6XGvN3FfzWGq8w0wfYpbTo1R3Zr3D96d+S5Ojhcu4N7Ay2DLKnrUBNQOZIX
	3QvYyMnGECwbug3R2NZ0VDl+QvoEYlqrmQEzmHCQ6+/n2ccXs4k/djagOAmIk2eLhG7UxtFxSVM/k
	xi9/UCUq448OhkrJ49sTvJRYnJ6MvtXUOjSjcOrtt0pkCJWIO6tVETPfDXGHw8I4tEHIHxLSVUpFh
	0eu4YEuCMePvWeMcSizRn02LslIX+ZBT2m9oRXj5YQYg6fUpgFHdeJ89VxmkxvZU1eFc5ePdaTqrE
	miR+wRtGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHndI-008ghT-Sa; Thu, 04 Mar 2021 13:03:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHnZk-008gDq-Ut
 for barebox@lists.infradead.org; Thu, 04 Mar 2021 12:59:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lHnZj-0001Fv-Tp; Thu, 04 Mar 2021 13:59:31 +0100
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <092dbc44-2081-ef3b-0fd7-25d1b9da72d3@pengutronix.de>
Date: Thu, 4 Mar 2021 13:59:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135C4186907BA49E69CD38B91979@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
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
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Uart set up in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 04.03.21 13:28, Barbier, Renaud wrote:
> Looking at many ARM platforms I see the UART is set in the PBL.

Two kinds of UART are set up in PBL:



 - low level debug: DEBUG_LL

	-> This is controlled via Kconfig and thus affects all
	   boards.
 Not meant for production use
, but for very
	   early debugging

 - PBL console: pbl_set_putc

	-> This affects only a single board and each board can decide

	   how to set up UART beforehand. This is for when you want
	   regular output in PBL (e.g. because you chainload from
	   MMC).

> I guess the baud rate is fixed.> I am looking into a way to make the baud rate configurable. 

For non-PBL, you got proper UART drivers, which can have their

baud rate configured via the baudrate device parameter, e.g.

serial1.baudrate=9600. This can come from a non-volatile variable.


> Would it possible from the PBL to read the "baudrate" variable from the environment?

Normally, you would want to avoid doing anything, but the
bare minimum from PBL. Does the baudrate device parameter
work for you?

Cheers,
Ahmad

> 
> Cheers,
> Renaud
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

