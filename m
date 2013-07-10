Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwpRM-0004yo-IP
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 08:07:58 +0000
Received: from mail605.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D2859FFBF68
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 10:07:32 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
In-Reply-To: <51DC6E0E.2090806@gmail.com>
Date: Wed, 10 Jul 2013 16:07:19 +0800
Message-Id: <FEE56E32-09DD-4D07-BFFD-D986FAEA78F9@jcrosoft.com>
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
 <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
 <51DC6E0E.2090806@gmail.com>
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


On Jul 10, 2013, at 4:09 AM, Alexey Galakhov <agalakhov@gmail.com> wrote:

> Hi,
> 
> On 07/10/2013 12:57 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
>> 
>> On Jul 10, 2013, at 1:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
>> 
>>> On Tue, Jul 09, 2013 at 09:22:10PM +0600, Alexey Galakhov wrote:
>>>> Most serial drivers require setbrg() to be called at least once. Call them
>>>> just after the device has been added.
>>>> 
>>>> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
>> 
>> This is wrong if you do this at boot which means you force the same baudrate
>> on all the console
> 
> This does NOT force the same baudrate. It just ensures that the default
> baudrate will not be ignored. There is no problem setting another
> baudrate later if desired by using "baudrate" parameter from the shell
> or something.

This does force the same baud rate on ALL console device at register time => wrong

> 
>> We must do this only is enable by default of via shell
> 
> There is "chicken and egg" problem. barebox_banner() requires valid
> baudrate setting and may deadlock without it. (It WILL deadlock on most
> serial drivers and really deadlocks on S3C one).

so do is at enable time not register time

> 
>> and some console may not need the setbrg call back (keyboard or fbdev as example)
> 
> If the device does not have setbrg() function defined, nothing will be
> called. This all is under if (newcdev->setbrg) anyway.

this will result is a call of a NULL pointer -> crash
> 
>> Also if we want to use a rs232 for controlling a mcu the baud rate may not be the
>> CONFIG_BAUDRATE
> 
> No problem, there is a parameter. Just set it before activating the device.
> 
>> so force it at register is wrong
> 
> Not setting it is much worse. It will result in deadlock at the first
> attempt to write to the console since setbrg() will not be called at all.
> 
> The idea is, if there IS a function to set a baudrate and there IS a
> default setting, the baudrate SHOULD be initialized before doing
> anything else.  Changing the baudrate on an inactive device multiple
> times is (or at least should be) harmless. Trying to activate the device
> with baudrate unset is not.
> 

If the console is not enable there no need to do anything
you need to set the baud rate ONLY if the device is enable

> Regards,
> Alex


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
