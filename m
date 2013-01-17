Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eta-ori.net ([2001:41d0:8:140a::5] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvp7X-0008Fr-Kd
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 13:03:04 +0000
Received: from [10.0.0.138] (p5DC36D5E.dip.t-dialin.net [93.195.109.94])
 by orion.eta-ori.net (Postfix) with ESMTPSA id A5A7660056
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 14:02:59 +0100 (CET)
Message-ID: <50F7F6D6.8080008@impulze.org>
Date: Thu, 17 Jan 2013 14:04:22 +0100
From: Daniel Mierswa <impulze@impulze.org>
MIME-Version: 1.0
References: <cover.1358400153.git.d.mierswa@phytec.de>
 <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
 <20130117115625.GE22953@game.jcrosoft.org>
In-Reply-To: <20130117115625.GE22953@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] video/imx: always initialize offscreenbuf member
To: barebox@lists.infradead.org

On 01/17/2013 12:56 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 07:32 Thu 17 Jan     , Daniel Mierswa wrote:
>> +	/*
>> +	 * sc.offscreenbuf is dangling here, if no offscreen buffer was
>> +	 * requested, so set it to NULL otherwise the free in fd_close
>> +	 * will cause undefined behaviour
>> +	 */
>> +	if (!offscreen)
>> +		sc.offscreenbuf = NULL;
>> +
> NAck
> 
> this is already done by memset
> 
> Best Regards,
> J.
>>  	if (sc.offscreenbuf) {
>>  		if (do_bg)
>>  			memset_pixel(&info, sc.offscreenbuf, bg_color,

Huh? I don't get it.

-- 
Mierswa, Daniel

If you still don't like it, that's ok: that's why I'm boss. I simply know better than you do.
               --- Linus Torvalds, comp.os.linux.advocacy, 1996/07/22

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
