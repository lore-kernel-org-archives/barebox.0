Delivery-date: Tue, 30 Mar 2021 07:28:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR6vd-0002rh-Sz
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 07:28:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR6vd-0001Co-65
	for lore@pengutronix.de; Tue, 30 Mar 2021 07:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JsyPo5i8MoJKXL38WpBZd1Dgc38q241T8/c4Kf36OgQ=; b=pVv9AXDyKpB0E6V4DwK9yO4sY
	Gw5zdlQL5irg4BGQniJDimre0+yy9IxL6lFuc00xGS1eFawWjD8xYV+XKGKpLQ0szP59V9dLrEDiN
	wruWfAbhEVaqMzaDDL0mqFa8lqp+kbyPWIkyHTkUSpMiFCt5SndOs1d1zZDhUg+xi80wB/Iq8NEUE
	wPHDrMMnhQdPfJerMPmbvHNLI8ndP1Dsa1N4ie19h1GZFfn/b2Lqoyr3Ln10O14d0y0WIRbbZhqIr
	e+nU43g7bzsJyjb5OXvNFEBrumwaAJp3aKHv0vvewltld8vSHTWqCXH6lxl9l+lwMN5h4KZ8phZ5l
	Qd768t2eg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR6uR-002jar-5f; Tue, 30 Mar 2021 05:27:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR6uJ-002ja5-8e
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 05:27:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR6uG-000175-Hx; Tue, 30 Mar 2021 07:27:12 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lR6uF-0008E6-Rq; Tue, 30 Mar 2021 07:27:11 +0200
Date: Tue, 30 Mar 2021 07:27:11 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210330052711.GI609@pengutronix.de>
References: <20210329061810.1996248-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329061810.1996248-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:27:01 up 40 days,  8:50, 61 users,  load average: 0.06, 0.04, 0.06
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_062715_373958_05BB13F9 
X-CRM114-Status: GOOD (  23.52  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] input: console: skip unmappable keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Mar 29, 2021 at 08:18:08AM +0200, Ahmad Fatoum wrote:
> The input console is in charge of turning input events to barebox
> console keycodes. The keymap array it uses to do so has NR_KEYS
> entries. Keycodes with values >= NR_KEYS can thus not be mapped.
> Ignore them instead of evaluating arbitrary memory contents beyond
> the buffer.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/input/input.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/input/input.c b/drivers/input/input.c
> index bcc8667417d9..1df52f56c84d 100644
> --- a/drivers/input/input.c
> +++ b/drivers/input/input.c
> @@ -165,6 +165,9 @@ static void input_console_notify(struct input_notifier *in,
>  	if (ic->modstate[4] || ic->modstate[5])
>  		modstate |= 1 << 2;
>  
> +	if (ev->code >= NR_KEYS)
> +		return;
> +
>  	if (modstate & (1 << 1)) {
>  		ascii = keycode_bb_keys[ev->code];
>  		ascii = ascii >= 'a' ? CTL_CH(ascii) : 0;
> -- 
> 2.30.0
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

