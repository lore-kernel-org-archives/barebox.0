Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnkl3-000489-8z
 for barebox@lists.infradead.org; Wed, 17 Jul 2019 14:18:14 +0000
Date: Wed, 17 Jul 2019 16:18:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190717141811.ajuzihp2ayibbsmi@pengutronix.de>
References: <20190716105837.18237-1-bst@pengutronix.de>
 <20190716105837.18237-2-bst@pengutronix.de>
 <20190717100221.nyehggpulidihoca@pengutronix.de>
 <25663bf3-7e13-20ed-5686-07bf5d353f59@pengutronix.de>
 <91ce3e31-4c30-4021-78bd-5c8e3f6fffc1@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91ce3e31-4c30-4021-78bd-5c8e3f6fffc1@pengutronix.de>
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
Subject: Re: [PATCH 2/3] common: machine_id: introduce machine id generation
 and pass id on
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Wed, Jul 17, 2019 at 04:02:45PM +0200, Bastian Krause wrote:
> 
> On 7/17/19 12:31 PM, Ahmad Fatoum wrote:
> > 
> > 
> > On 17/7/19 12:02, Roland Hieber wrote:
> >> On Tue, Jul 16, 2019 at 12:58:36PM +0200, Bastian Krause wrote:
> >>> By default systemd generates a machine id on first boot and tries to
> >>> persist it (see `man machine-id`). When the root file system is read-only
> >>> systemd cannot persist the machine id. In case multiple redundant slots
> >>> are used the machine id will vary. When not handled explicitly the
> >>> machine id will also change during updates.
> >>>
> >>> It is possible to pass a machine id to the kernel which will be used by
> >>> systemd (systemd.machine_id=).
> >>>
> >>> This adds functionality to pass device-specific information that will be
> >>> hashed to generate a persistent unique machine id. The machine id will
> >>> be finally added to the kernel parameters via the
> >>> linux.bootargs.machine_id global variable.
> >>>
> >>> Note: if multiple sources provide hashable device-specific information
> >>> (via machine_id_set_hashable()) the information provided by the last call
> >>> prior to the late initcall set_machine_id() is used to generate the
> >>> machine id from. Thus when updating barebox the machine id might change.
> >>
> >> I would also add this paragraph to the kconfig help text, so it is more
> >> visible for users.
> > 
> > Maybe add a priority parameter like we do with e.g. reset reason?
> > That way we can have a base machine-id in the OTP, but board code can
> > override it with e.g. an EEPROM value which is given higher priority.
> 
> Hm, that makes things complicated. At the end everybody will have their
> own high priority call like..
> 
>   machine_id_set_hashable(my_board_specific_info, len, 99);
> 
> .. to have a machine id that persists such an update scenario? That does
> not sound too good to me..
> 
> Any opinions on this?

I don't think there's going to be a race for priorities. But anyway, I
think we can introduce priorities when we really have a need for them.
Just introducing them because we might need them some day seems like
unnecessary overhead to me.

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
