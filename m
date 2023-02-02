Delivery-date: Thu, 02 Feb 2023 14:13:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZPZ-00BPfm-Hr
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 14:13:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNZPW-0001Hk-Ld
	for lore@pengutronix.de; Thu, 02 Feb 2023 14:13:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v3NUOI7fxcpFzjmCRszWF/YMNKZff4Nfa2KJRr2MUlQ=; b=cbALu20sJXABcVds44JBRBvrHp
	KjpQU8xGvCeEaZDa3dGE8QRYdqVJQ4S2bW8aikPKfdOqJCHQA2ZotMIPewD1lFVrYlV1FAuUg4Ihb
	AR6dzoXvkOmByXYJ9bZ1nDo09nh6rQZd4LZWz+G+bAcerHLBwYw/IJy7QheXDZuX+HnYj1Mu9WOSB
	TKiCdnKeJeeaYOFKrSJR4esOjrKoCXzukrl0r9imGBZfPjsMI0AokSXbO9wdeIAeILlSHPg/Z+AOO
	AgBcbY/v/rwnSfT1djY8tpHoR9ci6B1SikLUuW9/9GmsNzus/uz3VuKjo2sYHG+iziBY1KYkWv2S5
	G0Jte6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZO4-00Fy5M-IC; Thu, 02 Feb 2023 13:12:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNZNz-00Fy37-Pk
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 13:12:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZNw-00018p-Is; Thu, 02 Feb 2023 14:12:16 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNZNw-0007WS-Bj; Thu, 02 Feb 2023 14:12:16 +0100
Date: Thu, 2 Feb 2023 14:12:16 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230202131216.dyebwhxmqwvz3qhi@pengutronix.de>
References: <20230202122000.195253-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202122000.195253-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_051219_846713_80EF6520 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: align truncate return codes with POSIX
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

thanks for the patch.

On 23-02-02, Ahmad Fatoum wrote:
> Writing past end of a file results in a cryptic error code:
> 
>   barebox@board:/ cp /dev/zero /dev/mmc0.part
>   write: Operation not permitted
>   cp: Operation not permitted
> 
> Because the cdev's truncate is not implemented and as such partition
> can't be increased in size. POSIX specifies EPERM as the correct return
> code for truncate(2) in such a situation, but for write(2) it is ENOSPC.
> Thus most truncate callbacks in barebox instead return ENOSPC, when
> according to POSIX, EPERM would have been the correct error code to
> propagate.
> 
> Switching all truncate drivers is a bit more involved, so for now let's
> treat EPERM and ENOSPC instead when truncate fails to enlarge a file.
> 
> Reported-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


