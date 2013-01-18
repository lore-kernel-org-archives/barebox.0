Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eta-ori.net ([2001:41d0:8:140a::5] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tw3Tg-0006iz-5L
 for barebox@lists.infradead.org; Fri, 18 Jan 2013 04:22:53 +0000
Received: from [10.0.0.138] (p5DC36D5E.dip.t-dialin.net [93.195.109.94])
 by orion.eta-ori.net (Postfix) with ESMTPSA id DDA5A60055
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2013 05:22:48 +0100 (CET)
Message-ID: <50F8CE69.9010708@impulze.org>
Date: Fri, 18 Jan 2013 05:24:09 +0100
From: Daniel Mierswa <impulze@impulze.org>
MIME-Version: 1.0
References: <cover.1358400153.git.d.mierswa@phytec.de>
 <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
 <20130117115625.GE22953@game.jcrosoft.org> <50F7F6D6.8080008@impulze.org>
 <20130117175511.GD1906@pengutronix.de>
In-Reply-To: <20130117175511.GD1906@pengutronix.de>
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

On 01/17/2013 06:55 PM, Sascha Hauer wrote:
> sc is initialized to 0 in do_splash:
> 
> 	memset(&s, 0, sizeof(s));
> 	memset(&sc, 0, sizeof(sc));
> 	memset(&info, 0, sizeof(info));
> 
> so sc.offscreenbuf = NULL is a no-op.
Oh bugger. My working copy didn't have the allocate commit
d179981b2ddace3dfbf79f828c592a970cd2f009.
Ignore this one then. :)


-- 
Mierswa, Daniel

If you still don't like it, that's ok: that's why I'm boss. I simply know better than you do.
               --- Linus Torvalds, comp.os.linux.advocacy, 1996/07/22

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
