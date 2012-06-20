Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShMUx-0006lR-T7
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:07:12 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 17:05:45 +0200
References: <1340202731-30831-1-git-send-email-jbe@pengutronix.de>
 <1340202731-30831-3-git-send-email-jbe@pengutronix.de>
 <4FE1E562.7050706@pengutronix.de>
In-Reply-To: <4FE1E562.7050706@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201206201705.45842.jbe@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Add two architectures which can detect the reset
 source
To: barebox@lists.infradead.org

Marc Kleine-Budde wrote:
> [...]
> > +static int s3c_detect_reset_source(void)
> > +{
> > +	u32 reg = readl(S3C_GPIO_BASE + S3C2440_GSTATUS2);
> > +
> > +	if (reg & S3C2440_GSTATUS2_PWRST) {
> > +		set_reset_source(RESET_POR);
> > +		writel(S3C2440_GSTATUS2_PWRST,
                                        ^^^^^
> > +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> > +		return 0;
> > +	}
> > +
> > +	if (reg & S3C2440_GSTATUS2_SLEEPRST) {
> > +		set_reset_source(RESET_WKE);
> > +		writel(S3C2440_GSTATUS2_SLEEPRST,
                                        ^^^^^^^^
> > +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> > +		return 0;
> > +	}
> > +
> > +	if (reg & S3C2440_GSTATUS2_WDRST) {
> > +		set_reset_source(RESET_WDG);
> > +		writel(S3C2440_GSTATUS2_WDRST,
                                        ^^^^^
> > +					S3C_GPIO_BASE + S3C2440_GSTATUS2);
> > +		return 0;
> > +	}
>
> That "writel(S3C2440_GSTATUS2_WDRST...)" is the same in each line, isn't
> it?

Take a closer look. ;)

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
