Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuMpc-0000VR-Sl
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 11:34:03 +0000
Date: Mon, 6 Feb 2012 06:33:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120206112906.GM1990@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202060630390.16176@oneiric>
References: <alpine.DEB.2.02.1202050635190.30340@oneiric>
 <20120205155201.4086003e@eb-e6520>
 <alpine.DEB.2.02.1202051026020.9491@oneiric>
 <20120205184340.1bddd53a@eb-e6520>
 <alpine.DEB.2.02.1202051257100.13319@oneiric>
 <20120205204443.60ee2afa@eb-e6520>
 <alpine.DEB.2.02.1202051558230.17815@oneiric>
 <20120206112906.GM1990@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: how do i add the defn for the beagle xM to barebox?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 6 Feb 2012, Sascha Hauer wrote:

... snip ...

> The mentioned U-Boot code does not use any of the nand layer but
> only some omap specific function to detect the nand id
> (identify_nand_chip). This means that you can add this code to
> barebox and still disable nand support.
>
> If you still want to have a more fine grained config we can add a
>
> config MACH_PANDA_XM_VARIANT
> 	bool
>
> config MACH_PANDA_XM_DETECT_RAM_TYPE
> 	bool
>
> But we should add such options with care. Generally I don't really
> like to ask the user complicated questions for things that can be
> autodetected.

  don't take me too seriously yet as i'm still wandering around the
code base figuring out how things work. :-)  thanks to eric for
clearing up a number of things for me, i now have a much better idea
of what's worth considering and what isn't.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
