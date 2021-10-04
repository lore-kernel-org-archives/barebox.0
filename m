Delivery-date: Mon, 04 Oct 2021 13:51:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMVT-0006sn-K4
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:51:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMVS-00052Y-Jc
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Lj5Tuac5Rfg/s5hY52JPAIzSUWlkM3UjBiLIhb9lFiM=; b=ugS/vpJjW75Eg+gkMTlEb3/Jt+
	2cm4uM3qyhnsjVEBOvsq0nLqmHUxJXAVtwwfj3jFQrlhd3n/Ua9/p8EiOuWvPzsDKO9R1G0v8xdb7
	D0kpAxEPggWJUvPQmvWkiJ7eyjZKg4aV7hY4dOub8VcgxR7K/IdH2ntDwOUaKcwt/olZGaRUujI6n
	NqjaSauVHa+WiK+jg6rmj9/ryYQfsVwqwGnaFKLYhWM1bizEzNVhXmnnN6h4ZnBW7HKp+R2k3X78q
	6+lXoeoM7nbHqm3SunBqUP4MIR7EVl9j8RmYEtuDCsb6NremQkqB9a6N8B+CpShE8ZmeSjfoP+hxB
	7O+QZNGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMUC-006I8J-TW; Mon, 04 Oct 2021 11:50:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMU3-006I70-Fa
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:50:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMU2-0004oO-7o; Mon, 04 Oct 2021 13:50:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXMU1-0004Wx-UU; Mon, 04 Oct 2021 13:50:13 +0200
Date: Mon, 4 Oct 2021 13:50:13 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211004115013.GC28453@pengutronix.de>
References: <20210825144904.4929-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210825144904.4929-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:50:00 up 228 days, 15:13, 144 users,  load average: 0.06, 0.34,
 0.31
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_045015_570514_58E4B770 
X-CRM114-Status: GOOD (  20.40  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] state: backend_raw: fix ignoring unpack failures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 25, 2021 at 04:49:04PM +0200, Marco Felsch wrote:
> This is required to inform the state framework that the state variable
> set have changed and we need to write the new variable set. Without this
> fix the new variable set is never written since the state never sets
> dirty=1 and so state_save() will return early without saving the new
> variable set.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> I keeped the continue instead of break out early so the user gets
> informed which variables do not fit.
> 
> Regards,
>   Marco
> 
>  common/state/backend_format_raw.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

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

