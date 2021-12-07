Delivery-date: Tue, 07 Dec 2021 10:12:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWWl-0007sj-8f
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:12:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWWj-00024Y-AO
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:12:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UxXTQFWJIhZ/qEdhGrQxGapFiJjNDQKVod4pPXTd4LI=; b=ejyES9tGFG35U04uzEqdS0PpRx
	gTDqEXcJ52LvuybkZVuV9yHJvfqPxhMSCuPNejsKFn6Vg7Hbqhx/kqkJUYthdgB3n9vuJ5jU6qJIX
	NndW6KY+CYEbFIXaElU9azVklg0Y2O6CqvK+0DtR98NrsWZk/0sfUx6UmTIKwtI5nDByTxDVn2BM+
	6WFUrKHk1iQFUA+mbOSf1PWHtuBGY4LkmQeSlWWklJQBu3i6TyGBhNmVQ0yo9nyFEYJixF5z967C3
	7AetLWflr7CVDXo4+iT2wvcg+ZFYTQ4jgxYucfF/X3XQJQYjCMWEnfYXsAH8bWzYw6OYvAs9iXANQ
	xikqJojQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWV3-007jJg-JF; Tue, 07 Dec 2021 09:11:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWQ6-007hHY-Ox
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:05:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWQ4-0000iX-QC; Tue, 07 Dec 2021 10:05:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWQ4-00037a-HO; Tue, 07 Dec 2021 10:05:52 +0100
Date: Tue, 7 Dec 2021 10:05:52 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207090552.GE28260@pengutronix.de>
References: <20211203205035.555285-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211203205035.555285-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:05:10 up 292 days, 12:29, 143 users,  load average: 0.47, 0.42,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_010554_859756_40F10DEE 
X-CRM114-Status: GOOD (  20.72  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: cpsw: add support for new binding in Linux
 v5.15-rc1 DTs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 03, 2021 at 09:50:35PM +0100, Ahmad Fatoum wrote:
> As is customary, upstream OMAP DTs have yet again added a new binding
> breaking compatibility with a barebox driver.

This is getting annoying :(

> This time, the old Ethernet
> node was disabled in favor of a new node that is matched by the new Linux
> cpsw driver introduced with Linux commit ed3525eda4c4 ("net: ethernet:
> ti: introduce cpsw switchdev based driver part 1 - dual-emac").
> 
> Add support for the new binding to restore working Beaglebone Black
> networking. These changes have been tested against both the old and new
> bindings.
> 
> Fixes: 618948e4e5b3 ("dts: update to v5.15-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/cpsw.c | 120 +++++++++++++++++++++++++++++++++------------
>  1 file changed, 89 insertions(+), 31 deletions(-)

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

