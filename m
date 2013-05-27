Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ugrsf-0008FM-Vo
 for barebox@lists.infradead.org; Mon, 27 May 2013 07:30:10 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 27 May 2013 09:26:58 +0200
References: <5197608A.40707@gmail.com> <201305202056.35305.jbe@pengutronix.de>
 <51A2AACF.6000800@gmail.com>
In-Reply-To: <51A2AACF.6000800@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305270926.58734.jbe@pengutronix.de>
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
Subject: Re: Unable to Boot from NAND on Mini2440
To: barebox@lists.infradead.org

Vikram Narayanan wrote:
> On 21/05/2013 00:26, Juergen Beisert wrote:
> > Hmm, never had a Mini2440 with a 1 GiB NAND. Can you see, what kind of
> > SDRAM devices are on your Mini2440 board? Maybe they also changed the
> > SDRAMs...
>
> Sorry, I was totally away from mail access.
> Here is the name on the chip.
> K4S561632N -> 256 Mbit x 2

This memory is different from the HY57V561620 and MT48LC16M16 types I know and 
Barebox is adapted to.

Maybe your system doesn't come up due to a wrong SDRAM configuration.

You should compare the SDRAM datasheets and check if the SDRAM controller 
settings in Mini2440 'config.h' match the requirements of your SDRAM type.

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
