Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeqaK-0003Xt-NI
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 18:47:25 +0000
Date: Mon, 28 Apr 2014 20:47:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140428184702.GW5858@pengutronix.de>
References: <1398673121-6075-1-git-send-email-s.hauer@pengutronix.de>
 <1398673121-6075-2-git-send-email-s.hauer@pengutronix.de>
 <20140428163015.GB19883@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140428163015.GB19883@omega>
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
Subject: Re: [PATCH 1/2] Add initial regulator support
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 28, 2014 at 06:30:19PM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> On Mon, Apr 28, 2014 at 10:18:40AM +0200, Sascha Hauer wrote:
> > Provide minimal regulator support. Only supported operations are enabling
> > and disabling regulators. Association of devices with their regulators is
> > limited to devicetree only. If regulator support is disabled the API expands
> > to static inline stubs so consumers can still use the API.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/Kconfig           |   8 ++
> >  commands/Makefile          |   1 +
> >  commands/regulator.c       |  33 ++++++
> >  drivers/Kconfig            |   1 +
> >  drivers/Makefile           |   1 +
> >  drivers/regulator/Kconfig  |  13 +++
> >  drivers/regulator/Makefile |   2 +
> >  drivers/regulator/core.c   | 262 +++++++++++++++++++++++++++++++++++++++++++++
> >  drivers/regulator/fixed.c  | 103 ++++++++++++++++++
> >  include/regulator.h        |  47 ++++++++
> >  10 files changed, 471 insertions(+)
> >  create mode 100644 commands/regulator.c
> >  create mode 100644 drivers/regulator/Kconfig
> >  create mode 100644 drivers/regulator/Makefile
> >  create mode 100644 drivers/regulator/core.c
> >  create mode 100644 drivers/regulator/fixed.c
> >  create mode 100644 include/regulator.h
> > 
> > diff --git a/commands/Kconfig b/commands/Kconfig
> > index cc014f3..510cc91 100644
> > --- a/commands/Kconfig
> > +++ b/commands/Kconfig
> > @@ -690,6 +690,14 @@ config CMD_GPIO
> >  	  include gpio_set_value, gpio_get_value, gpio_direction_input and
> >  	  gpio_direction_output commands to control gpios.
> >  
> > +config CMD_REGULATOR
> > +	bool
> > +	depends on REGULATOR
> > +	prompt "regulator command"
> > +	help
> > +	  the regulator command lists the currently registered regulators and
> > +	  their current state.
> > +
> >  config CMD_UNCOMPRESS
> >  	bool
> >  	select UNCOMPRESS
> > diff --git a/commands/Makefile b/commands/Makefile
> > index e463031..7836515 100644
> > --- a/commands/Makefile
> > +++ b/commands/Makefile
> > @@ -95,3 +95,4 @@ obj-$(CONFIG_CMD_BOOT)		+= boot.o
> ...
> > +};
> > +
> > +static int regulator_fixed_enable(struct regulator_dev *rdev)
> > +{
> > +	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
> > +
> > +	if (!gpio_is_valid(fix->gpio))
> > +		return 0;
> > +
> This should return a errno like the above one "-EINVAL". Or?
> 
> > +	return gpio_direction_output(fix->gpio, !fix->active_low);
> > +}
> > +
> > +static int regulator_fixed_disable(struct regulator_dev *rdev)
> > +{
> > +	struct regulator_fixed *fix = container_of(rdev, struct regulator_fixed, rdev);
> > +
> > +	if (!gpio_is_valid(fix->gpio))
> > +		return -EINVAL;
> > +
> 
> like this.

I think both functions should return 0 without a valid gpio instead.
Anyway, there's something wrong here.

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
