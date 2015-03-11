Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVdMB-0007fD-JD
 for barebox@lists.infradead.org; Wed, 11 Mar 2015 09:55:17 +0000
Message-ID: <1426067690.30734.3.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 11 Mar 2015 10:54:50 +0100
In-Reply-To: <20150311083814.GP24885@pengutronix.de>
References: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
 <1426017548-30324-5-git-send-email-l.stach@pengutronix.de>
 <20150311083814.GP24885@pengutronix.de>
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
Subject: Re: [PATCH 5/5] ARM: highbank: fix Thumb build
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 11.03.2015, 09:38 +0100 schrieb Sascha Hauer:
> On Tue, Mar 10, 2015 at 08:59:08PM +0100, Lucas Stach wrote:
> > Note: this only fixes the build failure, I haven't actually tested
> > if it works.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm/mach-highbank/smc.S | 1 +
> >  1 file changed, 1 insertion(+)
> 
> Applied all but this one.
> 
> Could you tell us more about the build failure? It builds fine here with
> thumb2 enabled.
> 
The failure is this one:
Error: selected processor does not support Thumb mode `smc #0' 

Now looking at this again it may not only hit the Thumb build, but also
normal ARM mode builds. The check that is triggered here was only later
introduced into binutils, I can't really point at a specific version
though.

So you may not see this error depending on your toolchain version.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
