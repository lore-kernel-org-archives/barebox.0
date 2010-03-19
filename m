Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nsa11-0002xg-8D
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 11:05:23 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 19 Mar 2010 12:04:42 +0100
References: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
In-Reply-To: <ba216b431003190349n1d2c05e3i54c78520680ebce1@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201003191204.43829.jbe@pengutronix.de>
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
Subject: Re: [RFC] imx21ads nand boot
To: barebox@lists.infradead.org

Ivo Clarysse wrote:
> I tried getting barebox MX21ADS to boot from NAND, but I can't get it to
> work.
>
> Booting in bootstrap mode (copying the barebox image to RAM, and then
> executing it from RAM) does work, and "nand_boot_test" copies the nand
> image correctly to RAM.
>
> Any clues, anyone ?

Does the SDRAM setup work?

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
