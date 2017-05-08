Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7n94-0006KN-5z
 for barebox@lists.infradead.org; Mon, 08 May 2017 18:12:31 +0000
Date: Mon, 8 May 2017 20:12:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170508181206.cibrghbpdrjbryx4@pengutronix.de>
References: <91e8e828-d3c3-5c56-0a92-a52c493b8354@mev.co.uk>
 <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4208aa68-1cb6-0224-781a-4572a78ba6fd@mev.co.uk>
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
Subject: Re: Setting MAC address from nv variable broken in barebox 2017.05.0?
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org

On Mon, May 08, 2017 at 03:45:49PM +0100, Ian Abbott wrote:
> On 08/05/17 14:39, Ian Abbott wrote:
> > Hi,
> > 
> > I'm not sure if this is a bug or whether I'm doing something wrong.  In
> > barebox 2017.04.0 and earlier, I stored the Ethernet MAC address in a
> > non-volatile ('nv') variable dev.eth0.macaddr=xx:xx:xx:xx:xx:xx and that
> > got propagated to 'global' and the eth0 device on boot:
> > 
> > barebox@xxxx:/ nv
> >   allow_color: true
> >   autoboot_timeout: 3
> >   dev.eth0.ethaddr: xx:xx:xx:xx:xx:xx
> >   user: none
> [snip]
> > However, in 2017.05.0, my 'dev.eth0.ethaddr' variable is no longer being
> > propagated to global on boot, and as a consequence, is no longer
> > propagated to eth0 (note that 'dev.eth0.ethaddr' is the only nv variable
> > that I set manually when setting up a new board):
> > 
> > barebox@xxxx:/ devinfo eth0
> > Parameters:
> >   ethaddr: 00:00:00:00:00:00
> >   gateway: 0.0.0.0
> >   ipaddr: 0.0.0.0
> >   linux.bootargs:
> >   netmask: 0.0.0.0
> >   serverip: 0.0.0.0
> > 
> [snip]
> > Is this the proper behaviour or a bug?  Could it be related to commit
> > 35d8e858bea17ec4796069c9c27fd0b134125eaf ("nv: Do not create globalvars
> > from nvvars")?
> 
> As a related follow-up, this code in globalvar_add_simple() looks a bit
> strange:
> 
> 	if (value)
> 		dev_set_param(&global_device, name, value);
> 
> 	globalvar_nv_sync(name);

Ok, I think this should just be the other way round. Fixed in a patch I
just sent.

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
