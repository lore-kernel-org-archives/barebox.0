Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwqHg-00060y-WF
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 09:02:02 +0000
Date: Wed, 10 Jul 2013 11:01:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710090131.GE516@pengutronix.de>
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
 <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
 <51DC6E0E.2090806@gmail.com>
 <FEE56E32-09DD-4D07-BFFD-D986FAEA78F9@jcrosoft.com>
 <51DD1D11.1010103@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51DD1D11.1010103@gmail.com>
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
Subject: Re: [PATCH] Force set console baudrate
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 02:36:33PM +0600, Alexey Galakhov wrote:
> On 07/10/2013 02:07 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > This does force the same baud rate on ALL console device at register time => wrong
> 
> I think it is correct, and I'll explain why.
> 
> If the baudrate for the device is set explicitly via "baudrate"
> parameter, it WILL override any register time setting, so the register
> time setting does not matter at all.
> 
> If the baudrate for the device is not set, CONFIG_BAUDRATE is
> applicable. If the "baudrate" property is read, it even returns
> CONFIG_BAUDRATE value. The device is expected to work at CONFIG_BAUDRATE
> if "baudrate" is not set.
> 
> Calling setbrg() at registration time just ensures that the "baudrate"
> formal parameter matches actual device settings.
> 
> >> There is "chicken and egg" problem. barebox_banner() requires valid
> >> baudrate setting and may deadlock without it. (It WILL deadlock on most
> >> serial drivers and really deadlocks on S3C one).
> > 
> > so do is at enable time not register time
> 
> Maybe, but why then we have if (cdev->f_active) ... else
> cdev->setbrg(...) in console_baudrate_set()? Doesn't this mean that
> setbrg() is meant to be called BEFORE enable time?
> 
> >> If the device does not have setbrg() function defined, nothing will be
> >> called. This all is under if (newcdev->setbrg) anyway.
> > 
> > this will result is a call of a NULL pointer -> crash
> 
> No, it won't of course! The pointer IS checked before setbrg() call by
> an existing if(newcdev->setbrg), so no NULL-pointer reference will be
> called.
> 
> Please look at the code one more time:
> 
> // If the device being registered has setbrg function defined...
> if (newcdev->setbrg) {
>         // ... then set its default baudrate...
>         newcdev->baudrate = CONFIG_BAUDRATE;
>         // ... add "baudrate" parameter to allow this to be changed...
>         dev_add_param_int(dev, "baudrate", console_baudrate_set,
>                 NULL, &newcdev->baudrate, "%u", newcdev);
>         // ... and MY ADDITION - actually activate this parameter.
>         newcdev->setbrg(newcdev, newcdev->baudrate);
> }
> NULL-pointer dereference is guaranteed not to happen here.

Which makes the hardware state consistent with the logical state inside
the data structures. This can't be too wrong.

Anyway, maybe Jean-Christophe is right and we should do this in
console_std_set by adding:

	if(flag && cdev->setbrg)
		cdev->setbrg(cdev, cdev->baudrate);

This makes sure the hardware is only ever touched when the console is
actually used.

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
