Delivery-date: Tue, 30 Nov 2021 11:49:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0hV-0003hm-Ou
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:49:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0hU-00043C-QN
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:49:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ps0qbXZlxiPOI6RHDwaLMopsarohI8f6SS9FVGkTuLw=; b=i9lXb3DKek/t76voPdYErfwcAD
	WLOoyy1EpnqwMS1lvdtMkhelVBRTx+w/PjLdfJKuZ/TPIkOmaohRb+5gROmfzFxQuMZ5MxN1MZpu0
	gBLcUMcsyBS3Zmj2N3pfkefYV4rnHNPKeLjm6Pog3KuypGZO/oRqZqR7hrQOKow3q53MnVNium/AS
	PUxY/GnQ+yfmVDdlpbEaqoxf/zhavj4VJaqqtX/u4HdaJivC3VT7o6B7/9W5I2nlReGtnBqYcY/KN
	+umc0hjf87KX0t2WmSx8j1EH9GEzU23glqYR0V+9LOgsMit0xPgivD5HHCpet1GMI6xJJ9tjXeCMk
	Y01laIzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0g4-004jCB-IJ; Tue, 30 Nov 2021 10:48:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms0ft-004j9l-W3
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:47:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0fs-0003ux-Co; Tue, 30 Nov 2021 11:47:48 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms0fs-0001DU-31; Tue, 30 Nov 2021 11:47:48 +0100
Date: Tue, 30 Nov 2021 11:47:48 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211130104748.GV28260@pengutronix.de>
References: <20211125161042.3829996-1-a.fatoum@pengutronix.de>
 <20211125161042.3829996-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211125161042.3829996-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:46:18 up 285 days, 14:10, 154 users,  load average: 0.31, 0.39,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_024750_069473_2C061487 
X-CRM114-Status: GOOD (  18.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/7] state: make first boot less verbose
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 25, 2021 at 05:10:37PM +0100, Ahmad Fatoum wrote:
> First boot with uninitialized state is needlessly verbose:
> 
>   state: New state registered 'state'
>   state: Detected old on-storage format
>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>   state: Ignoring broken bucket 0@0x00000000...
>   state: Detected old on-storage format
>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>   state: Ignoring broken bucket 1@0x00040000...
>   state: Detected old on-storage format
>   ERROR: state: Error, invalid header crc in raw format, calculated 0x7bd5c66f, found 0x00000000
>   state: Ignoring broken bucket 2@0x00080000...
>   ERROR: state: Failed to find any valid state copy in any bucket
>   ERROR: state: Failed to read state with format raw, -2
> 
> This has confused barebox-state novices more than once. Let's handle
> the zeroed state case specially and reduce output in that case, so
> it now looks like this:
> 
>   state: New state registered 'state'
>   state: Detected old on-storage format
>   state: Detected old on-storage format
>   state: Detected old on-storage format
>   state state.of: Fresh state detected, continuing with defaults
> 
> This is only the output when CRC is zero (hinting at zeroed state
> partition). If crc != zero, then output is a little more verbose than
> before:

Should we handle crc == 0xffffffff in the same way for flash devices?

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

