Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAa6p-0006TI-Gp
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 07:40:08 +0000
Date: Fri, 25 Jul 2014 09:39:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140725073945.GJ23282@pengutronix.de>
References: <1405370916-6828-1-git-send-email-antonynpavlov@gmail.com>
 <1405370916-6828-5-git-send-email-antonynpavlov@gmail.com>
 <20140718054413.GL23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140718054413.GL23235@pengutronix.de>
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
Subject: Re: [RFC v3 4/5] commands: add hwclock
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 18, 2014 at 07:44:13AM +0200, Sascha Hauer wrote:
> On Tue, Jul 15, 2014 at 12:48:35AM +0400, Antony Pavlov wrote:
> > +{
> > +	struct rtc_device *r;
> > +	struct rtc_time tm;
> > +	struct rtc_time stm;
> > +	char rtc_name[16] = "rtc0";
> > +	char *env_name = NULL;
> > +	int opt;
> > +	int set = 0;
> > +
> > +	while ((opt = getopt(argc, argv, "f:s:e:")) > 0) {
> > +		switch (opt) {
> > +		case 'f':
> > +			strncpy(rtc_name, optarg, 16);
> > +			break;
> > +		case 's':
> > +			memset(&stm, 0, sizeof(stm));
> > +			parse_datestr(optarg, &stm);

The result value should really be checked.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
