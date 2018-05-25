Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM8gh-000153-0b
 for barebox@lists.infradead.org; Fri, 25 May 2018 09:07:05 +0000
Date: Fri, 25 May 2018 11:06:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180525090650.3xnvxs7fd4qhewtp@pengutronix.de>
References: <CAGKTrWLu-r7OOFRW-JsbOz64O0jOz0CvJjVvHWzr-UFtVkcntg@mail.gmail.com>
 <20180525062545.6n7yqry3lln35rsg@pengutronix.de>
 <CAGKTrWLsQg-aj011fifSj_JCHmx6tONUuzcCu6x0x8tZHT9Pxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGKTrWLsQg-aj011fifSj_JCHmx6tONUuzcCu6x0x8tZHT9Pxw@mail.gmail.com>
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
Subject: Re: [BUG] TFTP: No access to subdirectories
To: Franz Forstmayr <f.forstmayr@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, May 25, 2018 at 08:53:47AM +0200, Franz Forstmayr wrote:
> Hi Sascha,
> 
> The barebox version is nearly your 2018.04 release, except of 5 minor
> patches. I'm able to copy a file from my tftp-server to my sd-card.
> After that, booting is fine. Booting is also fine, when i run the
> mount command manually before booting. Maybe there's a problem with
> timeouts or automount?

Could you provide a log output from barebox? Maybe you run into
timeouts, yes, but then the log output should provide you some
informations.

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
