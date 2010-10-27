Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PB68Y-0007MW-3x
	for barebox@lists.infradead.org; Wed, 27 Oct 2010 13:34:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 27 Oct 2010 15:33:15 +0200
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
In-Reply-To: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010271533.15954.jbe@pengutronix.de>
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
Subject: Re: command bootu to start kernel
To: barebox@lists.infradead.org

Belisko Marek wrote:
> I have mini2440 board with barebox running from RAM.
> I try to start uImage kernel for that platform but I'm little bit
> confused how to do it.
>
> I do tftp uImage and the bootu uImage but it always hangs :
>
> commandline: console=ttySAC0,115200
> arch_number: 1999
>
> I track down that theKernel pointer point to 0xffffffff (memmap return
> (void*)-1) which is obviously wrong.
> If I understand correctly bootu function take first parameter and try to
> open a file and memmap. If file isn't opened successfully then convert
> string address which is then taken for
> theKernel pointer.
>
> Is this correct procedure or do I something wrong?

Try to start a zImage with "bootz". On my system 'bootm' and 'bootu' do not 
work.

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
