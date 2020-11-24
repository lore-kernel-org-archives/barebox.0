Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khUMk-0002Bz-R8
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 09:12:03 +0000
Date: Tue, 24 Nov 2020 10:12:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201124091201.GF14718@pengutronix.de>
References: <20201123163805.11164-1-s.hauer@pengutronix.de>
 <7cc581eb0bfbabe3d8d4d0213d4beebc@protonic.nl>
 <708d692d8f1de83ed7372d7cf2381e16@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <708d692d8f1de83ed7372d7cf2381e16@protonic.nl>
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
Subject: Re: [PATCH] i.MX: HABv4: Improve HAB event printing
To: robin <robin@protonic.nl>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Nov 24, 2020 at 09:32:14AM +0100, robin wrote:
> Hi Sascha,
> 
> On 2020-11-24 08:57, robin wrote:
> > Hi Sascha,
> > 
> > On 2020-11-23 17:38, Sascha Hauer wrote:
> > > Instead of using a fixed sized buffer for the report_event function,
> > > let's call it two times, once with a NULL pointer to get the size of
> > > the
> > > event and a second time with a buffer of that size.
> > > Also, instead of separating the events into warning and error type,
> > > iterate over all events in one single loop. This helps to get the
> > > events
> > > in the order they occured which probably helps the reader to make more
> > > sense of them.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > Even better!
> > 
> > Is it worth mentioning that this also fixes the unjustified
> > 'Recompile with larger event data buffer' error?
> > 
> > Acked-by: Robin van der Gracht
> 
> I just noticed your previous email. I'll test this today.

Rouven just told me that testing this is actually very simple. I was was
afraid I had to bring up a full HAB stack, but actually all I had to do
is to enable HAB in barebox, start it on a non HAB enabled board and be
done.

Here's the output which looks sane to me:

HABv4: Status: Operation failed (0x33)
HABv4: Config: Non-secure IC (0xf0)
HABv4: State: Non-secure state (0x66)
HABv4: -------- HAB Event 0 --------
HABv4: event data:
HABv4:  db 00 08 41  33 22 0a 00

HABv4: Status: Operation failed (0x33)
HABv4: Reason: Invalid address: access denied (0x22)
HABv4: Context: Logged in hab_rvt.authenticate_image() (0x0a)
HABv4: Engine: Select first compatible engine (0x00)
HABv4: -------- HAB Event 1 --------
HABv4: event data:
HABv4:  db 00 14 41  33 0c a0 00
HABv4:  00 00 00 00  10 00 04 00
HABv4:  00 00 00 20
HABv4: Status: Operation failed (0x33)
HABv4: Reason: Invalid assertion (0x0c)
HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
HABv4: Engine: Select first compatible engine (0x00)
HABv4: -------- HAB Event 2 --------
HABv4: event data:
HABv4:  db 00 14 41  33 0c a0 00
HABv4:  00 00 00 00  10 00 04 2c
HABv4:  00 00 03 00
HABv4: Status: Operation failed (0x33)
HABv4: Reason: Invalid assertion (0x0c)
HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
HABv4: Engine: Select first compatible engine (0x00)
HABv4: -------- HAB Event 3 --------
HABv4: event data:
HABv4:  db 00 14 41  33 0c a0 00
HABv4:  00 00 00 00  10 00 04 20
HABv4:  00 00 00 01
HABv4: Status: Operation failed (0x33)
HABv4: Reason: Invalid assertion (0x0c)
HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
HABv4: Engine: Select first compatible engine (0x00)
HABv4: -------- HAB Event 4 --------
HABv4: event data:
HABv4:  db 00 14 41  33 0c a0 00
HABv4:  00 00 00 00  10 00 10 00
HABv4:  00 00 00 04
HABv4: Status: Operation failed (0x33)
HABv4: Reason: Invalid assertion (0x0c)
HABv4: Context: Event logged in hab_rvt.assert() (0xa0)
HABv4: Engine: Select first compatible engine (0x00)

Anyway, it won't hurt when you give it a test as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
