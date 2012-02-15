Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RxhbS-0002Vz-OP
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 16:21:12 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A7C77FFA843
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2012 17:23:31 +0100 (CET)
Date: Wed, 15 Feb 2012 17:14:26 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120215161426.GJ1214@game.jcrosoft.org>
References: <1329229881-26751-1-git-send-email-plagnioj@jcrosoft.com>
 <20120215093108.GA3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120215093108.GA3852@pengutronix.de>
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
Subject: Re: [PATCH 1/4] add gpio keyboard support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> 
> This information would be far more informative if you printed the
> button that is pressed/released here.
ok
> 
> > +		}
> > +		gb->previous_state = val;
> > +	}
> 
> You do nothing for debouncing the keys.
yes my hardware manage directly (gpio IP)

we can add it later
> > +			return ret;
> > +		}
> > +		gpio_direction_input(gpio);
> > +	}
> > +
> > +	pdata->poller.func = gpio_key_poller;
> > +
> > +	cdev = &pdata->cdev;
> > +	dev->type_data = cdev;
> > +	cdev->dev = dev;
> > +	cdev->f_caps = CONSOLE_STDIN;
> > +	cdev->tstc = gpio_keys_tstc;
> > +	cdev->getc = gpio_keys_getc;
> > +
> > +	console_register(&pdata->cdev);
> 
> As I tried to explain yesterday I'm not sure that directly registering
> the gpio keys as a console is the right thing to do. A keyboard has
> more attributes than what we have in the console. For example a keyboard
> has a button press / button release event which we don't have on the
> console.
agreed but today we do not have a input framework yet

I'm planning to add such framework but as a second step
I'll add the usb keyboard too
> 
> > +
> > +	return poller_register(&pdata->poller);
> > +}
> > +
> > +static struct driver_d gpio_keys_driver = {
> > +	.name	= "gpio_keys",
> > +	.probe	= gpio_keys_probe,
> > +};
> > +
> > +static int gpio_keys_init(void)
> > +{
> > +	register_driver(&gpio_keys_driver);
> > +	return 0;
> 
> Since we now do not panic anymore when an initcall fails but only
> use the return value for debug purposes please do a
> 
> return register_driver(&gpio_keys_driver);
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
