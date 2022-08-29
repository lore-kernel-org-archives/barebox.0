Delivery-date: Mon, 29 Aug 2022 12:54:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oScPY-000AuB-Tu
	for lore@lore.pengutronix.de; Mon, 29 Aug 2022 12:54:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oScPX-0003dE-Fi
	for lore@pengutronix.de; Mon, 29 Aug 2022 12:54:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rofKdphLwcobPlZQaJbiZS/em/nTBQ1oefWltvZ+FFo=; b=wJANEPRHrXSAUuOGBlxW5gWruN
	7Zwl5jQCB7HaZH7u5HaL2t2LeDzVAnRxoSbnHh+Ab+maRuG51KtrHVCrLMXT1tYPzIriaATmGskQJ
	UGaxc94iMrIfc9p8RQYtN1J589LeU0CkVm2n8FvE0iq8MbnGpanSVd+6RH6LSJa48MUJNkbnVjLCm
	n/uDzZG/mz6pyNHFyu8uXknHt5IQn8F5Oi6mb101UTh4KcFmbToWlM0r2r8p4e39xBSkRHMsmr+co
	d4cf2cczG4hQSbeopLpAp3wLfjIXbwnk9gJdcrd+dSsvTbqPqgrXjgSWzo21cR7znxdAvBc/4yAgj
	PARIfQjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oScNX-007cMl-PR; Mon, 29 Aug 2022 10:52:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oScNR-007cFf-6Z
	for barebox@lists.infradead.org; Mon, 29 Aug 2022 10:52:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oScNN-0003X6-1o; Mon, 29 Aug 2022 12:52:17 +0200
Message-ID: <ad848886-ba94-1e34-0ae8-4157a19e8404@pengutronix.de>
Date: Mon, 29 Aug 2022 12:52:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
 barebox@lists.infradead.org
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_035221_648063_8771B3AE 
X-CRM114-Status: GOOD (  19.55  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/8] tftp fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Enrico,

On 28.08.22 16:02, Enrico Scholz wrote:
> The "tftp: allocate buffers and fifo dynamically" patch in the last
> patchset broke interaction with non rfc 2347 servers (e.g. when data
> transfer starts immediately after RRQ/WRQ without the OACK negotiation
> phase).
> 
> This has been fixed for both RRQ and WRQ requests.
> 
> For WRQ requests (push), the "tsize" option will not be sent anymore
> because it is always '0' and can confuse servers.
> 
> New patches add some sanity checks which prevent modification of
> internal information (blocksize or port numbers) when OACK packets
> arrive in the middle of a transfer.

The patch introducing the regression is still in next, which can be
rebased unlike master. Perhaps it would be best you provide a fixup
for the commit in question (or a revised series, if it would cause
conflicts for later commits)? That way, we don't end up with breakage
when doing a bisect in future.

The remaining sanity checking in this series could then be stacked
on top.

Cheers,
Ahmad

> 
> 
> Enrico Scholz (8):
>   tftp: make debug_assert() critical when selftest is enabled.
>   tftp: remove sanity check of first block
>   tftp: split out allocation and cache initialization
>   tftp: accept OACK + DATA datagrams only in certain states
>   tftp: support non rfc 2347 servers
>   tftp: do not set 'tsize' in wrq requests
>   tftp: fix WRQ support
>   tftp: add some documentation about windowsize support
> 
>  Documentation/filesystems/tftp.rst |  38 ++++++
>  fs/tftp.c                          | 189 +++++++++++++++++++----------
>  2 files changed, 166 insertions(+), 61 deletions(-)
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


