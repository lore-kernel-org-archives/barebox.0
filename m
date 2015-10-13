Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlwoA-0006jD-Eu
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 10:27:51 +0000
Date: Tue, 13 Oct 2015 12:27:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151013102725.GH7858@pengutronix.de>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home> <561CD48A.9000301@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <561CD48A.9000301@gmail.com>
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
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On Tue, Oct 13, 2015 at 11:53:14AM +0200, Sebastian Hesselbarth wrote:
> On 13.10.2015 11:35, Robert Jarzmik wrote:
> >Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
> >
> >>On 12.10.2015 21:16, Robert Jarzmik wrote:
> >>>Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
> >>>
> >>>>I have prepared a branch for you based on above v2015.10.0 to ease
> >>>>testing with all comments included so far:
> >>>>
> >>>>https://github.com/shesselba/barebox-dove.git testing/nfc-for-robert
> >>>That's cool, really.
> >>>
> >>>It doesn't work yet :
> >>>	clk = clk_get_sys("nand", NULL);
> >>>	printf("%s(): clk = %p\n", __func__, clk);
> >>>=>
> >>>          zylonite_devices_init(): clk = fffffffe
> >>
> >>Ok, thanks for testing.
> >>
> >>I've fast-forward pushed the branch with one last try for today again.
> >>Misread clk_get, clk_find and clk_register_clkdev and friends.
> >Well, I still have a probe error :
> >	alloc_nand_resource(): clk_get() -> fffffffe
> >	mrvl_nand mrvl_nand0: alloc nand resource failed
> >	mrvl_nand mrvl_nand0: probe failed: No such file or directory
> >	zylonite_devices_init(): clk = 83703328
> 
> Hmm. I have to have a closer look at how clkdev lookup is supposed
> to work then. Thanks for testing up to here, it will take a day or
> two until I can get back to it.

In your temporary patch you have:

> @@ -67,6 +71,9 @@ static int zylonite_devices_init(void)
>  			   &smsc91x_pdata);
>  	add_generic_device("mrvl_nand", DEVICE_ID_DYNAMIC, NULL,
>  			   0x43100000, 0x1000, IORESOURCE_MEM, &nand_pdata);
> +	clk = clk_get_sys("nand", NULL);
> +	if (!IS_ERR(clk))
> +		clkdev_add_physbase(clk, 0x43100000, NULL);

Could it be that you register the clk lookup after the nand driver is probed? This
hunk should be moved before the nand device registration.

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
