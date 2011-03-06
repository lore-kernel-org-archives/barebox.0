Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwIX9-0001kI-N8
	for barebox@lists.infradead.org; Sun, 06 Mar 2011 18:18:24 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sun, 6 Mar 2011 19:15:57 +0100
References: <20110305142224.2bba1da1@manocska.bendor.com.au>
	<201103051251.44209.jbe@pengutronix.de>
	<20110306164311.172060@gmx.net>
In-Reply-To: <20110306164311.172060@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201103061915.57929.jbe@pengutronix.de>
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
Subject: Re: When do patches get into the releases?
To: barebox@lists.infradead.org

Hi Dirk,

Dirk Gerdes wrote:
> I'm trying to install barebox on my mini2440.
> I followed the instructions in the bottom of "mini2440.c".
> Barebox starts from Ram, but if I switch to NAND and start the board again,
> console keeps quiet. At the moment I have no idea, what went wrong.
>
> I used the latest version from git and I got the
> 1GB-X35 Mini2440-Board.

My bad. The current S3C2440 NAND driver only supports small page NANDs. But 
even with support for the 'advanced' NANDs (2kiB page size) currently it 
still does not boot from NAND... Will send my patch series, as soon the board 
boots from NAND.

Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
