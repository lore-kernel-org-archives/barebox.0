Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22c.google.com ([2a00:1450:4010:c04::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UweEu-0000oO-5H
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 20:10:21 +0000
Received: by mail-lb0-f172.google.com with SMTP id v20so5107620lbc.17
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 13:09:57 -0700 (PDT)
Message-ID: <51DC6E0E.2090806@gmail.com>
Date: Wed, 10 Jul 2013 02:09:50 +0600
From: Alexey Galakhov <agalakhov@gmail.com>
MIME-Version: 1.0
References: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
 <20130709174333.GY516@pengutronix.de>
 <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
In-Reply-To: <5C73F356-67C8-4D18-B0B8-3D0BE89794A7@jcrosoft.com>
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

Hi,

On 07/10/2013 12:57 AM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> On Jul 10, 2013, at 1:43 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
>> On Tue, Jul 09, 2013 at 09:22:10PM +0600, Alexey Galakhov wrote:
>>> Most serial drivers require setbrg() to be called at least once. Call them
>>> just after the device has been added.
>>>
>>> Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
> 
> This is wrong if you do this at boot which means you force the same baudrate
> on all the console

This does NOT force the same baudrate. It just ensures that the default
baudrate will not be ignored. There is no problem setting another
baudrate later if desired by using "baudrate" parameter from the shell
or something.

> We must do this only is enable by default of via shell

There is "chicken and egg" problem. barebox_banner() requires valid
baudrate setting and may deadlock without it. (It WILL deadlock on most
serial drivers and really deadlocks on S3C one).

> and some console may not need the setbrg call back (keyboard or fbdev as example)

If the device does not have setbrg() function defined, nothing will be
called. This all is under if (newcdev->setbrg) anyway.

> Also if we want to use a rs232 for controlling a mcu the baud rate may not be the
> CONFIG_BAUDRATE

No problem, there is a parameter. Just set it before activating the device.

> so force it at register is wrong

Not setting it is much worse. It will result in deadlock at the first
attempt to write to the console since setbrg() will not be called at all.

The idea is, if there IS a function to set a baudrate and there IS a
default setting, the baudrate SHOULD be initialized before doing
anything else.  Changing the baudrate on an inactive device multiple
times is (or at least should be) harmless. Trying to activate the device
with baudrate unset is not.

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
