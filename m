Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pf85V-0001LZ-0o
	for barebox@lists.infradead.org; Tue, 18 Jan 2011 09:43:00 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 18 Jan 2011 10:41:00 +0100
References: <1295259766-19301-1-git-send-email-s.hauer@pengutronix.de>
	<201101180949.35371.marc@cpdesign.com.au>
	<87y66i8xel.fsf@macbook.be.48ers.dk>
In-Reply-To: <87y66i8xel.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101181041.00195.jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/4] ARM i.MX28 tx28: use a fixed framebuffer address
To: barebox@lists.infradead.org

Peter Korsgaard wrote:
> >>>>> "Marc" == Marc Reilly <marc@cpdesign.com.au> writes:
>
> Hi,
>
>  Marc> Purely out of interest, what is the advantage/necessity for
>  Marc> having the frame buffer at a fixed address?
>
> Presumably to be able to reuse the buffer in Linux for flicker free
> booting.

Yes.

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
