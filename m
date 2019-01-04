Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfKb2-0000Rc-Om
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 08:12:50 +0000
Date: Fri, 4 Jan 2019 09:12:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190104081245.k4apq6qhvvibwt7e@pengutronix.de>
References: <20181114085233.5000-1-s.hauer@pengutronix.de>
 <20181231111258.GA6011@lenoch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181231111258.GA6011@lenoch>
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
Subject: Re: [PATCH] of: Add .of suffix to device names from devicetree
To: Ladislav Michl <ladis@linux-mips.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Barebox List <barebox@lists.infradead.org>

On Mon, Dec 31, 2018 at 12:12:58PM +0100, Ladislav Michl wrote:
> On Wed, Nov 14, 2018 at 09:52:33AM +0100, Sascha Hauer wrote:
> > Previous implementation used to add a number to the device names
> > for devices registered from the device tree which did not have a 'reg'
> > property, thus a device node named "state" resulted in a device name
> > "state.<x>". Current implementation skips that number and we get a
> > device named "state". This conflicts with our barebox state
> > implementation which tries to register a device named "state" itself.
> > We could rename the state device nodes of all our device trees, but it
> > causes less trouble to rename the devices.
> > 
> > This adds a ".of" suffix to the device names for devices registered from
> > the device tree which also has the nice effect that they now can easily
> > be recognized.
> 
> Well, that also breaks scripting based on device name (example):
> -if [ ${fffa4000.gadget@fffa4000.vbus} != 1 ]
> +if [ ${fffa4000.gadget@fffa4000.of.vbus} != 1 ]
>  then
>         echo "No USB Device cable plugged, normal boot"
>         exit 0
> 
> I can live with that, but would welcome suggestions how to write above
> code in some nicer way.

This only becomes a problem when you peristently store an environment and
update barebox afterwards.

I generally avoid scripting as much as I can. It's good to be able to do
scripting, but it's even better to not have to. Scripting is great for
hacking and development but IMHO is bad in production. Correct error
handling is hard to archieve in scripts, even more so in a restricted
shell like hush. Then with scripts it's tempting to store them on the
device. When this is done you can run into surprising compatibility
issues like above, so you are doomed to maintain compatibility to some
ancient scripts that might be on your device.

With the example you have given I would rather write the corresponding C
code which is much easier to maintain.

Sidenote: Your script example only works because your devices base
address happens to be in the a-f hexadecimal range. Shell variables
cannot start with a number, so 800a4000.gadget@800a4000.vbus would not
work.

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
