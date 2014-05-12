Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjvL2-0006xV-A4
 for barebox@lists.infradead.org; Mon, 12 May 2014 18:52:37 +0000
Message-ID: <1399920915.2292.4.camel@tellur>
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 20:55:15 +0200
In-Reply-To: <20140512114936.GG5858@pengutronix.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
 <1399878486-16086-11-git-send-email-dev@lynxeye.de>
 <20140512114936.GG5858@pengutronix.de>
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
Subject: Re: [PATCH 10/25] i2c: add Tegra driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 12.05.2014, 13:49 +0200 schrieb Sascha Hauer:
> On Mon, May 12, 2014 at 09:07:51AM +0200, Lucas Stach wrote:
> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
> > ---
> >  drivers/i2c/busses/Kconfig     |   4 +
> >  drivers/i2c/busses/Makefile    |   1 +
> >  drivers/i2c/busses/i2c-tegra.c | 708 +++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 713 insertions(+)
> >  create mode 100644 drivers/i2c/busses/i2c-tegra.c
> > 
[...]

> > +
> > +static int tegra_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[],
> > +	int num)
> > +{
> > +	struct tegra_i2c_dev *i2c_dev = to_tegra_i2c_dev(adap);
> > +	int i;
> > +	int ret = 0;
> > +
> > +	ret = tegra_i2c_clock_enable(i2c_dev);
> > +	if (ret < 0) {
> > +		dev_err(i2c_dev->dev, "Clock enable failed %d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	for (i = 0; i < num; i++) {
> > +		enum msg_end_type end_type = MSG_END_STOP;
> > +		if (i < (num - 1))
> > +			end_type = MSG_END_REPEAT_START;
> > +		ret = tegra_i2c_xfer_msg(i2c_dev, &msgs[i], end_type);
> > +		if (ret)
> > +			break;
> > +	}
> > +	tegra_i2c_clock_disable(i2c_dev);
> > +	return ret ?: i;
> 
> What does this return when ret is true? ret? I've never seen this.

This is present in the Linux source this is based on. I've just had to
look it up and apparently it's a GNU extension which uses the first
operand implicitly as the second. So yep, this is returning ret if true.
Will change this as it's really confusing.

> 
> > +	i2c_dev = xzalloc(sizeof(*i2c_dev));
> > +	if (!i2c_dev) {
> > +		dev_err(dev, "Could not allocate struct tegra_i2c_dev");
> > +		return -ENOMEM;
> > +	}
> 
> No need to check the result of xzalloc.
> 
Ok, will remove.

> > +	ret = tegra_i2c_clock_enable(i2c_dev);
> > +		if (ret < 0) {
> > +			dev_err(i2c_dev->dev, "Clock enable failed %d\n", ret);
> > +			return ret;
> > +		}
> 
> Indentation broken here. tegra_i2c_init below also calls
> tegra_i2c_clock_enable, so this should be unnecessary here, right?

Right, this is a leftover from debugging. Thanks for spotting.

> 
> > +	ret = tegra_i2c_init(i2c_dev);
> > +	if (ret) {
> > +		dev_err(dev, "Failed to initialize i2c controller");
> > +		return ret;
> > +	}
> > +
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
