Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLTqk-0002RL-JF
 for barebox@lists.infradead.org; Wed, 23 May 2018 13:30:45 +0000
Date: Wed, 23 May 2018 15:30:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180523133030.tjxqfxri5fxbaxor@pengutronix.de>
References: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7b0617ad32db44235a2f7efbe19b31e802a9493b.camel@allegion.com>
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

Hi Florian,

On Wed, May 23, 2018 at 10:59:21AM +0000, Baeuerle, Florian wrote:
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

This seems to be very similar to what I suggested here:

https://www.spinics.net/lists/u-boot-v2/msg32661.html

I see no reason to limit this command to the /chosen node, we could
equally well accept a full path to the node rather than just a property
name.

> 
> I guess it would suffice to only store strings in /chosen.
> 
> Example:
> of_fixup_chosen bootloader-version $global.version

This is already done, See commit e96dc23280c43dd6b026ea71bcbaf3353abb4c83

> of_fixup_chosen reset-reason $global.system.reset

See 58243d98b3f8e000c674a78a9466bd2fce213cc6

> of_fixup_chosen serial $serial_number

No generic support for this one though.

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
