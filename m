Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwptV-0005V5-7Z
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 08:37:02 +0000
Received: by mail-lb0-f176.google.com with SMTP id z5so5327867lbh.7
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 01:36:37 -0700 (PDT)
Message-ID: <51DD1D11.1010103@gmail.com>
Date: Wed, 10 Jul 2013 14:36:33 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
 <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
 <51DC6E0E.2090806@gmail.com>
 <FEE56E32-09DD-4D07-BFFD-D986FAEA78F9@jcrosoft.com>
In-Reply-To: <FEE56E32-09DD-4D07-BFFD-D986FAEA78F9@jcrosoft.com>
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
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 07/10/2013 02:07 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:

> This does force the same baud rate on ALL console device at register time => wrong

I think it is correct, and I'll explain why.

If the baudrate for the device is set explicitly via "baudrate"
parameter, it WILL override any register time setting, so the register
time setting does not matter at all.

If the baudrate for the device is not set, CONFIG_BAUDRATE is
applicable. If the "baudrate" property is read, it even returns
CONFIG_BAUDRATE value. The device is expected to work at CONFIG_BAUDRATE
if "baudrate" is not set.

Calling setbrg() at registration time just ensures that the "baudrate"
formal parameter matches actual device settings.

>> There is "chicken and egg" problem. barebox_banner() requires valid
>> baudrate setting and may deadlock without it. (It WILL deadlock on most
>> serial drivers and really deadlocks on S3C one).
> 
> so do is at enable time not register time

Maybe, but why then we have if (cdev->f_active) ... else
cdev->setbrg(...) in console_baudrate_set()? Doesn't this mean that
setbrg() is meant to be called BEFORE enable time?

>> If the device does not have setbrg() function defined, nothing will be
>> called. This all is under if (newcdev->setbrg) anyway.
> 
> this will result is a call of a NULL pointer -> crash

No, it won't of course! The pointer IS checked before setbrg() call by
an existing if(newcdev->setbrg), so no NULL-pointer reference will be
called.

Please look at the code one more time:

// If the device being registered has setbrg function defined...
if (newcdev->setbrg) {
        // ... then set its default baudrate...
        newcdev->baudrate = CONFIG_BAUDRATE;
        // ... add "baudrate" parameter to allow this to be changed...
        dev_add_param_int(dev, "baudrate", console_baudrate_set,
                NULL, &newcdev->baudrate, "%u", newcdev);
        // ... and MY ADDITION - actually activate this parameter.
        newcdev->setbrg(newcdev, newcdev->baudrate);
}
NULL-pointer dereference is guaranteed not to happen here.

> If the console is not enable there no need to do anything
> you need to set the baud rate ONLY if the device is enable

To be more precice: if the device that was previously disabled is
enabled. Correct. This is better than the current approach. Calling
setbrg() in the else clause of console_baudrate_set() is incorrect as
well so it should be removed (to be more precise, moved to init time).

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
