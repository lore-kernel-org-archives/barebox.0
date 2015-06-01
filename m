Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YzOUu-0004M6-4L
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 12:07:17 +0000
Date: Mon, 1 Jun 2015 14:06:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150601120652.GH6325@pengutronix.de>
References: <556C271F.6040005@meteocontrol.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <556C271F.6040005@meteocontrol.de>
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
Subject: Re: Secure barebox
To: Moritz Warning <m.warning@meteocontrol.de>
Cc: barebox@lists.infradead.org

Hi Moritz,

On Mon, Jun 01, 2015 at 11:34:23AM +0200, Moritz Warning wrote:
> Hi,
> 
> I like to secure access to barebox using a password.
> passwd seems to be the right command, but setting a
> password does not seem to have any effect.
> 
> After a reset, access to barebox is not limited as far
> as I can tell.

I've never really used password support. I just gave it a try and I can
only say: It's not usable in its current state. The thing you were
missing is: You must set nv.login.timeout to something nonzero:

nv.login.timeout=3; saveenv

Then afterwards I get asked for a password. If I enter this correctly I
get to the prompt, if I enter the wrong password I'm asked for a
password again. However, when I press ctrl-c or just an empty password I
also get to the prompt.
The password protection support is currently implemented in the
/env/bin/init script. This makes the whole stuff very fragile. The
barebox shell is not designed to be secure. Once the shell is started
the system is insecure, so the password asking process should be done
before entering the shell, not from the shell.

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
