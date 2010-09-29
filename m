Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P0sfk-000881-Rt
	for barebox@lists.infradead.org; Wed, 29 Sep 2010 09:09:57 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 29 Sep 2010 11:08:18 +0200
References: <AANLkTi=k3qTJtQeuOMoBDJMrrR3DQbF7GunjT10FRDSW@mail.gmail.com>
	<20100929074846.GE23406@pengutronix.de>
	<AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
In-Reply-To: <AANLkTinsWzaMthMo2djN17hWUMG5+4K+Y-H-YZPs-q-H@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009291108.18378.jbe@pengutronix.de>
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
Subject: Re: Failing to load Barebox Environment
To: barebox@lists.infradead.org

Just a note:

You configure:

> >> devfs_add_partition("nand0", 0x00000, 0x200000, PARTITION_FIXED,
> >> "self_raw"); dev_add_bb_dev("self_raw", "self0");
> >> devfs_add_partition("nand0", 0x200000, 0x200000, PARTITION_FIXED,
> >> "env_raw"); dev_add_bb_dev("env_raw", "env0");

And then:

> EVB2065> addpart /dev/nand0 4M(barebox)ro,2M(kernel)ro,-(root)

Both must match!

Try instead:

EVB2065> addpart /dev/nand0 256k(barebox)ro,256k(env),2M(kernel)ro,-(root)

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
