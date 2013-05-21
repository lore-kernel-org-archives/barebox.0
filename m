Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueg3m-00016N-Bb
 for barebox@lists.infradead.org; Tue, 21 May 2013 06:28:35 +0000
Date: Tue, 21 May 2013 08:28:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130521062810.GE32299@pengutronix.de>
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 05/11] arm: mvebu: convert Armada 370/XP to common init
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Sebastian,

> +static int armada_370_xp_init_soc(void)
>  {
>  	unsigned long phys_base, phys_size;
>  
> -	mvebu_init_clocks();
> +	armada_370_xp_init_clocks();
>  	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
> -			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
> -			   NULL);
> -	mvebu_memory_find(&phys_base, &phys_size);
> +			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
> +			   IORESOURCE_MEM, NULL);
> +	armada_370_xp_memory_find(&phys_base, &phys_size);
>  	arm_add_mem_device("ram0", phys_base, phys_size);
> +	armada_370_xp_add_uart();

How do you want to support a board which uses another UART instead of
uart0 when you call this from SoC code?

I don't think this line should be here.

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
