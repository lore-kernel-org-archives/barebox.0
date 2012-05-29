Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SZMjs-0002Nf-9t
 for barebox@lists.infradead.org; Tue, 29 May 2012 13:45:33 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 29 May 2012 15:44:19 +0200
References: <758281337957559@web30f.yandex.ru> <4FC4C582.6020003@protonic.nl>
In-Reply-To: <4FC4C582.6020003@protonic.nl>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201205291544.20184.jbe@pengutronix.de>
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
Subject: Re: Imx28 sdram initialisation?
To: barebox@lists.infradead.org

Robin van der Gracht wrote:
> Currently i'm working on our new board, equipped with a imx287 processor,
> using the 'karo-tx28' and  'freescale-mx28-evk' bsp as reference for our
> own bsp.
>
> But I can't find sdram initialisation, lowlevel routines, or dcd support
> for imx28.
> So i'm wondering how and where this is done for the boards mentioned
> before.

Search for the so called "bootlets".

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
