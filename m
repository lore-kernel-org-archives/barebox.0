Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OtLYq-00007T-Oa
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 14:23:41 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 8 Sep 2010 16:22:29 +0200
References: <OFD70E892C.B10E0160-ONC1257798.0047E686-C1257798.004D952C@phytec.de>
In-Reply-To: <OFD70E892C.B10E0160-ONC1257798.0047E686-C1257798.004D952C@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009081622.29415.jbe@pengutronix.de>
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
Subject: Re: Generating barebox.S
To: barebox@lists.infradead.org

Teresa Gamez wrote:
> Hello,
>
> I noticed while upgrading from barebox-2010.04.0 to barebox-2010.07.0 that
> the part of generating a barebox.S file in the Makefile has changed. I'm
> working with an ARM board and it seems that the barebox.S is not being
> build by default anymore. My Makefile reading skills are not really
> good... So how do I activate the generation of the barebox.S file? Or do I
> miss something?

Don't know why the behaviour was changed, but a:

$ make barebox.S

should help.

Regards,
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
