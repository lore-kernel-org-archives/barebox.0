Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VRSey-0005Li-SI
 for barebox@lists.infradead.org; Wed, 02 Oct 2013 20:04:37 +0000
Message-ID: <1380744254.7042.6.camel@polaris.local>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Wed, 02 Oct 2013 22:04:14 +0200
In-Reply-To: <1380743142.14068.2.camel@tellur>
References: <1380742211-2731-1-git-send-email-jlu@pengutronix.de>
 <1380742211-2731-2-git-send-email-jlu@pengutronix.de>
 <1380743142.14068.2.camel@tellur>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] am33xx_generic: convert from switch to if/else
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, 2013-10-02 at 21:45 +0200, Lucas Stach wrote: 
> Am Mittwoch, den 02.10.2013, 21:30 +0200 schrieb Jan Luebbe:
> > The function am33xx_get_cpu_rev may be called before barebox_arm_entry(),
> > so we need to avoid switch statements. 
> 
> Uhm, could you please be more verbose on _why_ we need to avoid switch
> statements at this stage? I might be running into the same failure with
> Tegra at some point if there's a real issue.

I believe the problem is that the table is accessed using absolute
addresses. Before the call to barebox_arm_entry() barebox may be running
at a different address.

Regards,
Jan


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
