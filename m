Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PXuE1-0001fQ-I1
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 11:29:50 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 29 Dec 2010 12:28:28 +0100
References: <AANLkTikS9O0_kNedeaCMRLvn9eH=kCK5ThJkFAAZ6JOs@mail.gmail.com>
In-Reply-To: <AANLkTikS9O0_kNedeaCMRLvn9eH=kCK5ThJkFAAZ6JOs@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201012291228.28623.jbe@pengutronix.de>
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
Subject: Re: x86 compilation broken in next branch
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

Belisko Marek wrote:
> Try to play around barebox on x86 will get following error:
> ld: barebox section `.initcall.8' will not fit in region `mbr'
> ld: section .initcall.8 loaded at [0000000000000400,0000000000000407]
> overlaps section .bootstrapping loaded at
> [0000000000000400,0000000000000867]
> ld: region `mbr' overflowed by 8 bytes
> make: *** [barebox] Error 1

I know. I'm working on a fix.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
