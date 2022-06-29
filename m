Delivery-date: Wed, 29 Jun 2022 08:57:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RdK-000wt6-3B
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:57:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RdM-0000yK-5j
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ixY9Knnvd0UTnm0jaPz7/JMz4gsn7yOWD/Nko01H1A=; b=YIDjBsY88Y12gUbOqsPBUBeMnt
	HBviXEw5CkQ6MCV4x1+oPzHIXwhRRjFecd8yRVpT4SvcCClKGBAQl+09MHsacnfR872+cH7JhiO8F
	Li0cubEvCz+lrFNEiALSsYJ7SFFLj63VKsV9d6EkdgfNqtYNa5XDO34M1wMwXFlHlTz1zk+kXSvVr
	zFNVxOjyXaDadSDifCB8T8CSPvC/WI4Ug+lf7KqbZdrdoeYpI4AV0HeMfAGW1KBw1fLGVXm5QPkGl
	w8VBqEt2tGQCVsJaG9b4g5mJ0wWnhs80Yof+J6FbBMPxOiDL2OPLqquHkOkjXwkt8YAOjLHsxIfE0
	223C08hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rc8-009vrq-QZ; Wed, 29 Jun 2022 06:55:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rc4-009vr3-Fr
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:55:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6Rc2-0000dH-Dd; Wed, 29 Jun 2022 08:55:46 +0200
Message-ID: <f565caf9-ecfc-04cd-d587-85728c9665e2@pengutronix.de>
Date: Wed, 29 Jun 2022 08:55:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>,
 Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <afa@pengutronix.de>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
 <20220627102500.18427-5-eagle.alexander923@gmail.com>
 <20220629065251.GJ19026@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220629065251.GJ19026@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_235548_578486_C2C1E284 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/8] usb: gadget: Fix Kconfig dependencies
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 29.06.22 08:52, Sascha Hauer wrote:
> Without GLOBALVAR selected the USB gadget autostart stuff can be
> compiled, but without any functionality, as all functionality is
> behind globalvars, so adding this dependency mykes sense.
> 
>>  	select SYSTEM_PARTITIONS if USB_GADGET_MASS_STORAGE
> 
> I am not sure why SYSTEM_PARTITIONS is selected here. Maybe Ahmad can
> comment on that. From what I can see with USB_GADGET_AUTOSTART selected
> without SYSTEM_PARTITIONS we still get autostart functionality, but
> without global.system.partitions support which seems ok.

Instead of adding yet another gadget-specific global variable,
the mass storage gadget only uses system partitions, so this
select makes sense IMO.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


