Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7WW5-0008Ai-U6
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 04:13:02 +0000
Date: Mon, 17 Aug 2020 06:12:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200817041257.GM13023@pengutronix.de>
References: <MN2PR16MB3135C2AADD985DE82E3E787591400@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3135C2AADD985DE82E3E787591400@MN2PR16MB3135.namprd16.prod.outlook.com>
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
Subject: Re: barebox:ubi attach time
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Renaud,

On Fri, Aug 14, 2020 at 01:49:25PM +0000, Barbier, Renaud wrote:
> Just to see if somebody has the following problem:
> 
> We have PPC or ARM platforms with a NOR containing barebox and a UBI
> volume with an ITB image.  The File system is on NAND.
> 
> If I boot the system, ubiattach and mount the NOR volume, then detach.
> On reboot it takes more time for barebox to ubiattach  the NOR boot
> volume. I have noticed that with on 2019.07 barebox branch and
> 2020.03. 
> 
> I ubidetach the volume from barebox then boot time is restored.

Are you using fastmap?

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
