Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x232.google.com ([2607:f8b0:4001:c06::232])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLTIq-0002Fv-Ay
 for barebox@lists.infradead.org; Wed, 23 May 2018 12:55:42 +0000
Received: by mail-io0-x232.google.com with SMTP id t23-v6so22625987ioc.10
 for <barebox@lists.infradead.org>; Wed, 23 May 2018 05:55:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
References: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Wed, 23 May 2018 14:55:27 +0200
Message-ID: <CACvFaDd+Wfa0LYnYeCo+bLnMK2O8NBdpmj9cGtEJKFjUMxk9pw@mail.gmail.com>
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
Subject: Re: Modifying device-tree: /chosen
To: "Baeuerle, Florian" <Florian.Baeuerle@allegion.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Maybe we can also include the:
http://lists.infradead.org/pipermail/barebox/2015-March/022708.html

It would be nice to use feature like this to modify the device tree
before we boot the kernel.

Pascal

2018-05-23 12:59 GMT+02:00 Baeuerle, Florian <Florian.Baeuerle@allegion.com>:
> Hi,
>
> I haven't found a (good) way to modify the kernel device tree before booting
> when using the bootchooser in combination with blspec.  What seems to be done
> quite often is registering fixup functions (of_register_fixup) in board-specific
> code.
>
> I'd prefer not patch board-specific code, because my use case is rather specific
> (passing the device serial number, the bootloader version, and a few other
> things to the kernel). So the question is, if this use case is common enough to
> provide a more generic way.
>
> My proposal is providing a command like this:
>
> of_fixup_chosen [PROPERTY] [VALUE]
>
> I guess it would suffice to only store strings in /chosen.
>
> Example:
> of_fixup_chosen bootloader-version $global.version
> of_fixup_chosen reset-reason $global.system.reset
> of_fixup_chosen serial $serial_number
>
>
> I'm open for other suggestions, as this could also be implementend in a more
> generic (and also more complex) way by allowing to fix up random nodes and
> properties throughout the device tree.
>
>
> Best Regards
> Florian
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
