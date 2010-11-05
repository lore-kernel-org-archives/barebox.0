Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PEJ4I-0002m8-If
	for barebox@lists.infradead.org; Fri, 05 Nov 2010 09:58:47 +0000
Date: Fri, 5 Nov 2010 10:58:42 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20101105095842.GL4233@pengutronix.de>
References: <AANLkTi=OBTyCqTLhLjzp04714cVzF+GEm0pALiu50Z8S@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi=OBTyCqTLhLjzp04714cVzF+GEm0pALiu50Z8S@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: BIOS like screen for uboot
To: Kallol Biswas <kallol@nucleodyne.com>
Cc: barebox@lists.infradead.org

Hi,

On Mon, Nov 01, 2010 at 04:36:24AM -0700, Kallol Biswas wrote:
> We have a customer request that we need to create a BIOS like screens
> for uboot.
>
> For this we have cross compiled curses library under uboot but have
> been getting error in linking phase we have expected.
>
> The major effort is to get termcap database into uboot.
>
> We have looked at the barebox port of uboot and it seems to have some
> menu support. How good is the menu support? Can it handle different
> terminal types?
>
> Is there any curses like support available in uboot? A few screen
> shots of the barebox UI would be helpful.

You can try it yourself by switching on the 'menu' command, i.e. in the
'sandbox' platform, which can be run on a normal linux userspace system.

If it doesn't fit your needs, we are open for any kind of contract work
in order to get more features in.

Best regards,
Robert Schwebel
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
