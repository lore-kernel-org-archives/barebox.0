Delivery-date: Sun, 04 Apr 2021 13:35:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12I-0002lx-QZ
	for lore@lore.pengutronix.de; Sun, 04 Apr 2021 13:35:22 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lT12E-0002SB-UJ
	for lore@pengutronix.de; Sun, 04 Apr 2021 13:35:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qTZhyARgnnJLE8wQVhSVxbSLe3fceIJwHJaX/YvdaNc=; b=nAYNjQ1TQAdLDYA6CzaudVBdD
	TL2SxbENaqy0GcxSyzzr69tZPFGPjtrMBkrpVaPXA9B2G9kmSKA4N0EUot2PPbSN/vvjxvEfpxS1I
	0n/Ca5xADh6dm/pbfk8eozsxXSy6NQXk34IwTDv33+RY64WnwkOM05KzPIzSrdfgubG8Ozm2WoaAD
	1EZ1VQhbXyu/ktFkue8GHF4tw+WLkB9WnQGo757Iuf59s2+MLPpLgQIEIq23TiPlhn89PoyLiPS7N
	sVGVrPu+X3h7dBJlTvPlMd0Ze5hYyHiNvDdoVZMVdwvXyOGa3JhWhp0XP5r0HNdFgFGjr4y08mYHz
	p50U6EHIg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT0yp-00Fg2g-GX; Sun, 04 Apr 2021 11:31:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT0qA-00FfU2-Vp
 for barebox@lists.infradead.org; Sun, 04 Apr 2021 11:23:06 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lT0q7-0001Xt-Nf; Sun, 04 Apr 2021 13:22:47 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20210403070237.3642189-1-ahmad@a3f.at>
 <20210403120037.GA18977@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <742a08f0-5db9-7fed-023c-bddc0500e034@pengutronix.de>
Date: Sun, 4 Apr 2021 13:22:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210403120037.GA18977@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_122304_302444_7A6ABD73 
X-CRM114-Status: GOOD (  13.74  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] PBL: fdt: implement fdt_device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 03.04.21 14:00, Jules Maselbas wrote:
>> +		for (id = ids; id->compatible; id++) {
>> +			if (strlen(id->compatible) == length &&
>> +			    !memcmp(list, id->compatible, length))
>> +				return id->data;
> Why not using strcmp, or even strcasecmp as done by of_compat_cmp ?
> If both string doesn't have the same length, strcmp will report a diff.

The code is based on fdt_stringlist_search. I assume it compared length
first, because it already computed it, so an early comparison
saves some cycles. Good point on case-insensitivity. I'll send out a v2.

Thanks,
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

