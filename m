Delivery-date: Tue, 05 Oct 2021 13:54:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXj1K-0002oT-O2
	for lore@lore.pengutronix.de; Tue, 05 Oct 2021 13:54:06 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXj1J-0005Ce-LX
	for lore@pengutronix.de; Tue, 05 Oct 2021 13:54:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lnbf7Tva/wW4VqAPqSrVbH3mmRqor+aR+AAk4JpZiZA=; b=LrZPWAVbmYhFB+
	x+aq3jVR18WQfH2MTu+G6Jo06jchyzCiEco12z6tSD1GSTGdZhqpCarwX/apceiq1/vATsYfW5IZN
	lERDY0fv59gxpUmRh5VV7Jgs83w06xxaSLO8VjWjhMCVM0qyUeIntHnExZfc+UVYZ08V/MHOLqCAt
	welqd+RewQZfXU1dznlJfLy7UfH8To49VN7ZUg4AQ09obmWl5dSSoPHVhgTIHMOxn7/ZoUn7eGVCe
	BKhbFHIbQiYCU79Nd72q1El69kDj4ZhTjoR4KEeE89XTmpu1mRfWNYF1sA9aVD1VVEzAzOZBScHbd
	8qDV6Msp11AAZhFSnfdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXizh-00AESR-GR; Tue, 05 Oct 2021 11:52:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXizd-00AERF-72
 for barebox@lists.infradead.org; Tue, 05 Oct 2021 11:52:22 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXizZ-000505-Rp; Tue, 05 Oct 2021 13:52:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mXizZ-0003f7-I2; Tue, 05 Oct 2021 13:52:17 +0200
Date: Tue, 5 Oct 2021 13:52:17 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211005115217.GP28453@pengutronix.de>
References: <20211005113613.3609-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211005113613.3609-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:52:00 up 229 days, 15:15, 146 users,  load average: 0.47, 0.39,
 0.29
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_045221_285513_EDD82220 
X-CRM114-Status: GOOD (  21.00  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: smc: disable -c (start cpu) test option for
 ARMv8
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Oct 05, 2021 at 01:36:13PM +0200, Ahmad Fatoum wrote:
> This option is meant for debugging and was only tested on an ARMv7 CPU.
> On ARMv8, the handshake times out and the code executing on the second
> CPU invokes undefined behavior by modifying the stack base from a non-
> naked function. This led so far to a warning, which went unnoticed, but
> a follow-up commit will make it an error to use arm_setup_stack on
> ARM64. Prepare for this by disabling -c usage on ARM64.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Please reorder before "ARM: document arm_setup_stack() pitfalls"
> ---
>  commands/smc.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)

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

